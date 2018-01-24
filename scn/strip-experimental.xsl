<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:edm="http://docs.oasis-open.org/odata/ns/edm">
  <!--
    This style sheet removes OData model elements tagged with Common.Experimental
    
    TODO: 
    - strip XML comments?
  -->

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()[not(edm:Annotation[@Term='Common.Experimental'])]" />
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>