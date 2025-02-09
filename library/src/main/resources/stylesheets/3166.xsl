<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="code.Country-Codes">
		<xsl:param name="myparam"/>
		<xsl:variable name="myparam.upper" select="upper-case($myparam)"/>
		<xsl:choose>
      		<xsl:when test="$myparam.upper='AF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='EG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AX'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='DZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='UM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AQ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GQ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ET'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BB'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BJ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BQ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BV'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CV'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='DK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KP'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='DE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='DM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='DO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='DJ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='EC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SV'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ER'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='EE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='FK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='FO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='FJ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='FI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='FM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='FR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GP'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='HT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='HM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='HN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='HK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ID'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IQ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='IT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='JM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='JP'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='YE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='JE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='JO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='QA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='HR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LV'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LB'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MV'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ML'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MP'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MQ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='YT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MX'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ME'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NP'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='NO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='OM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='RE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='RW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='RO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='RU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SB'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ZM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='WS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ST'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='RS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ZW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SI'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ES'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='KN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='LC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='MF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SX'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='PM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='ZA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SS'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SJ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='SZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TJ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TW'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TL'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TK'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TO'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TT'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TD'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TR'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TM'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TC'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TV'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='UG'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='UA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='HU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='UY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='UZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VU'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VA'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='AE'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='TZ'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='US'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='GB'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='VN'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='WF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CX'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='BY'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='EH'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CF'"><xsl:value-of select="$myparam"/></xsl:when>
      		<xsl:when test="$myparam.upper='CY'"><xsl:value-of select="$myparam"/></xsl:when>
   			<xsl:otherwise><xsl:value-of select="$myparam"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
