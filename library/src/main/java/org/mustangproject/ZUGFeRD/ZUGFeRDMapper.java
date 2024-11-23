/**
 * *********************************************************************
 * <p>
 * Copyright 2018 Jochen Staerk
 * <p>
 * Use is subject to license terms.
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at http://www.apache.org/licenses/LICENSE-2.0.
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * <p>
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * <p>
 * **********************************************************************
 */
package org.mustangproject.ZUGFeRD;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.mustangproject.EStandard;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class ZUGFeRDMapper {
	static final ClassLoader CLASS_LOADER = ZUGFeRDMapper.class.getClassLoader();
	private static final String RESOURCE_PATH = "";
	private static final Logger LOGGER = LoggerFactory.getLogger(ZUGFeRDMapper.class);

	private TransformerFactory mFactory = null;
	private Templates mXsltXRTemplate = null;
	private Templates mXsltUBLTemplate = null;
	private Templates mXsltCIOTemplate = null;

	public ZUGFeRDMapper() {
		mFactory = new net.sf.saxon.TransformerFactoryImpl();
		mFactory.setURIResolver(new ClasspathResourceURIResolver());
	}

	/***
	 * returns which standard is used, CII or UBL
	 *
	 * @param fis inputstream (will be consumed)
	 * @return (facturx = cii)
	 */
	public EStandard findOutStandardFromRootNode(InputStream fis) {
		String zf1Signature = "CrossIndustryDocument";
		String zf2Signature = "CrossIndustryInvoice";
		String ublSignature = "Invoice";
		String ublCreditNoteSignature = "CreditNote";
		String cioSignature = "SCRDMCCBDACIOMessageStructure";

		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		try {
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(new InputSource(fis));
			Element root = doc.getDocumentElement();
			if (root.getLocalName().equals(zf1Signature)) {
				return EStandard.zugferd;
			} else if (root.getLocalName().equals(zf2Signature)) {
				return EStandard.facturx;
			} else if (root.getLocalName().equals(ublSignature)) {
				return EStandard.ubl;
			} else if (root.getLocalName().equals(ublCreditNoteSignature)) {
				return EStandard.ubl_creditnote;
			} else if (root.getLocalName().equals(cioSignature)) {
				return EStandard.orderx;
			}
		} catch (Exception e) {
			LOGGER.error("Failed to recognize standard", e);
		}
		return null;
	}

	public String map(String input)
			throws FileNotFoundException, TransformerException, IOException, SAXException, ParserConfigurationException {
		InputStream fis;
		EStandard thestandard = null;
		byte[] inputBytes;

		if (input.trim().startsWith("<")) {
			// Create a byte array that can be reset
			inputBytes = input.getBytes(StandardCharsets.UTF_8);
			fis = new ByteArrayInputStream(inputBytes);
			thestandard = findOutStandardFromRootNode(new ByteArrayInputStream(inputBytes));
		} else {
			if (!Files.exists(Paths.get(input))) {
				throw new FileNotFoundException("File not found: " + input);
			}
			inputBytes = Files.readAllBytes(Paths.get(input));
			fis = new ByteArrayInputStream(inputBytes);
			thestandard = findOutStandardFromRootNode(new ByteArrayInputStream(inputBytes));
		}

		return mapInputStream(fis, thestandard);
	}

	private String mapInputStream(InputStream fis, EStandard thestandard)
			throws TransformerException, IOException, SAXException, ParserConfigurationException {
		ByteArrayOutputStream iaos = new ByteArrayOutputStream();

		// Create new input stream since the previous one was consumed

		InputStream contentStream = (fis instanceof FileInputStream)
				? new FileInputStream(((FileInputStream) fis).getFD())
				: new ByteArrayInputStream(((ByteArrayInputStream) fis).readAllBytes());

		// Apply appropriate transformation based on standard
		if (thestandard == EStandard.zugferd) {
			applyZF1XSLT(contentStream, iaos);
		} else if (thestandard == EStandard.facturx) {
			applyZF2XSLT(contentStream, iaos);
		} else if (thestandard == EStandard.ubl) {
			applyUBL2XSLT(contentStream, iaos);
		} else if (thestandard == EStandard.ubl_creditnote) {
			applyUBLCreditNote2XSLT(contentStream, iaos);
		} else if (thestandard == EStandard.orderx) {
			applyCIO2XSLT(contentStream, iaos);
		} else {
			throw new IllegalArgumentException("File does not look like CII or UBL");
		}

		return iaos.toString(StandardCharsets.UTF_8);
	}

	protected void applyZF1XSLT(final InputStream xmlFile, final OutputStream HTMLOutstream)
			throws TransformerException {
		// Create temporary output stream for intermediate transformation
		ByteArrayOutputStream intermediateOutput = new ByteArrayOutputStream();

		// First transformation: ZF1 to ZF2
		Templates zf1ToZf2Template = mFactory.newTemplates(
				new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/ZF1ToZF2.xsl")));
		Transformer zf1ToZf2Transformer = zf1ToZf2Template.newTransformer();
		zf1ToZf2Transformer.transform(new StreamSource(xmlFile), new StreamResult(intermediateOutput));

		// Convert intermediate output to input stream for second transformation
		ByteArrayInputStream intermediateInput = new ByteArrayInputStream(intermediateOutput.toByteArray());
		System.out.println(intermediateOutput.toString(StandardCharsets.UTF_8));

		// Second transformation: Apply ZF2 transformation
		if (mXsltXRTemplate == null) {
			mXsltXRTemplate = mFactory.newTemplates(
					new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/cii-xr.xsl")));
		}
		Transformer zf2Transformer = mXsltXRTemplate.newTransformer();
		zf2Transformer.transform(new StreamSource(intermediateInput), new StreamResult(HTMLOutstream));
	}

	protected void applyZF2XSLT(final InputStream xmlFile, final OutputStream HTMLOutstream)
			throws TransformerException {
		if (mXsltXRTemplate == null) {
			mXsltXRTemplate = mFactory.newTemplates(
					new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/cii-xr.xsl")));

		}
		Transformer transformer = mXsltXRTemplate.newTransformer();

		transformer.transform(new StreamSource(xmlFile), new StreamResult(HTMLOutstream));
	}

	protected void applyCIO2XSLT(final InputStream xmlFile, final OutputStream HTMLOutstream)
			throws TransformerException {
		if (mXsltCIOTemplate == null) {
			mXsltCIOTemplate = mFactory.newTemplates(
					new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/cio-xr.xsl")));
		}
		Transformer transformer = mXsltCIOTemplate.newTransformer();

		transformer.transform(new StreamSource(xmlFile), new StreamResult(HTMLOutstream));
	}

	protected void applyUBL2XSLT(final InputStream xmlFile, final OutputStream HTMLOutstream)
			throws TransformerException {
		if (mXsltUBLTemplate == null) {
			mXsltUBLTemplate = mFactory.newTemplates(
					new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/ubl-invoice-xr.xsl")));
		}
		Transformer transformer = mXsltUBLTemplate.newTransformer();

		transformer.transform(new StreamSource(xmlFile), new StreamResult(HTMLOutstream));
	}

	protected void applyUBLCreditNote2XSLT(final InputStream xmlFile, final OutputStream HTMLOutstream)
			throws TransformerException {
		if (mXsltUBLTemplate == null) {
			mXsltUBLTemplate = mFactory.newTemplates(
					new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/ubl-creditnote-xr.xsl")));
		}
		Transformer transformer = mXsltUBLTemplate.newTransformer();

		transformer.transform(new StreamSource(xmlFile), new StreamResult(HTMLOutstream));
	}

	private static class ClasspathResourceURIResolver implements URIResolver {
		ClasspathResourceURIResolver() {
			// Do nothing, just prevents synthetic access warning.
		}

		@Override
		public Source resolve(String href, String base) throws TransformerException {
			return new StreamSource(CLASS_LOADER.getResourceAsStream(RESOURCE_PATH + "stylesheets/" + href));
		}
	}
}
