<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'>
  <xsl:output method="xml" indent="yes" />

  <xsl:template match='doc'>

    <xsl:element name='doc'>
      <xsl:element name='summary'>  
        <xsl:element name="project">project1</xsl:element>
        <xsl:element name="desc"><xsl:text> </xsl:text></xsl:element>
      </xsl:element>
      <xsl:element name='records'>
        <xsl:apply-templates select='klass' />        
      </xsl:element>
    </xsl:element>

  </xsl:template>

  <xsl:template match='klass'>

    <xsl:element name='klass'>
      <xsl:element name="summary">
        <xsl:element name='name'>
          <xsl:value-of select='@name'/>
        </xsl:element>
      </xsl:element>
      <xsl:element name='records'>
        <xsl:apply-templates select='def' />
      </xsl:element>
    </xsl:element>

  </xsl:template>

  <xsl:template match='def'>

    <xsl:element name='def'>
      <xsl:element name="summary">
        <xsl:element name='name'>
          <xsl:value-of select='@name'/>
        </xsl:element>
        <xsl:element name='scope'>
          <xsl:value-of select='@scope'/>
        </xsl:element>
        <xsl:element name="desc"><xsl:text> </xsl:text></xsl:element>
      </xsl:element>
      <xsl:element name="records"></xsl:element>
    </xsl:element>

  </xsl:template>

</xsl:stylesheet>
