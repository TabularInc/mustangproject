/** **********************************************************************
 *
 * Copyright 2018 Jochen Staerk
 *
 * Use is subject to license terms.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at http://www.apache.org/licenses/LICENSE-2.0.
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 *********************************************************************** */
package org.mustangproject.ZUGFeRD;

import org.mustangproject.SchemedID;

public interface IZUGFeRDLegalOrganisation {

	/**
	 *
	 * @return the scheme attribute of the legal organization=the type of the
	 *         identification, e.g. 0002=Siren, and its value
	 */
	public SchemedID getSchemedID();

	/***
	 *
	 * @return the TradingBusinessName of the legal organisation
	 */
	public String getTradingBusinessName();
}
