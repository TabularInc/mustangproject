
/**
 * *********************************************************************
 * <p>
 * Copyright 2019 Jochen Staerk
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

import junit.framework.TestCase;
import org.junit.FixMethodOrder;
import org.junit.runners.MethodSorters;
import org.mustangproject.*;
import org.mustangproject.ZUGFeRD.Profiles;
import org.mustangproject.ZUGFeRD.ZUGFeRD2PullProvider;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.Date;

import static org.xmlunit.assertj.XmlAssert.assertThat;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class FXTest extends TestCase {
	final String TARGET_XML = "./target/testout-FX.xml";

	public void testFXExport() {

		// test creating factur-x invoices to french authorities, i.e. with SIRET number
		// the writing part
		TradeParty recipient = new TradeParty("Franz Müller", "teststr.12", "55232", "Entenhausen", "DE");
		String siret = "0815";
		String sirenTypeCode = "0002";
		recipient.setLegalOrganisation(new LegalOrganisation(siret, sirenTypeCode));
		Invoice i = createInvoice(recipient);

		ZUGFeRD2PullProvider zf2p = new ZUGFeRD2PullProvider();
		zf2p.setProfile(Profiles.getByName("EN16931"));
		zf2p.generateXML(i);
		String theXML = new String(zf2p.getXML(), StandardCharsets.UTF_8);
		assertTrue(theXML.contains("<rsm:CrossIndustryInvoice"));
		assertThat(theXML).valueByXPath("count(//*[local-name()='IncludedSupplyChainTradeLineItem'])")
				.asInt()
				.isEqualTo(1); // 2 errors are OK because there is a known bug

		assertThat(theXML).valueByXPath("//*[local-name()='DuePayableAmount']")
				.asDouble()
				.isEqualTo(1);
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(TARGET_XML));
			writer.write(theXML);
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private Invoice createInvoice(TradeParty recipient) {
		String orgname = "Test company";
		String number = "123";
		String amountStr = "1.00";
		BigDecimal amount = new BigDecimal(amountStr);
		return new Invoice().setDueDate(new Date()).setIssueDate(new Date()).setDeliveryDate(new Date())
				.setSender(new TradeParty(orgname, "teststr", "55232", "teststadt", "DE").addTaxID("DE4711").addVATID("DE0815")
						.setContact(new Contact("Hans Test", "+49123456789", "test@example.org"))
						.addBankDetails(new BankDetails("DE12500105170648489890", "COBADEFXXX")))
				.setRecipient(recipient)
				.setReferenceNumber("991-01484-64")// leitweg-id
				// not using any VAT, this is also a test of zero-rated goods:
				.setNumber(number)
				.addItem(new Item(new Product("Testprodukt", "", "C62", BigDecimal.ZERO), amount, new BigDecimal(1.0)));
	}

}
