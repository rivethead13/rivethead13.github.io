<?xml version="1.0" encoding="UTF-8"?> 
 <?xml-stylesheet href="PageLayout.xsl" type="text/xsl" ?> 
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />

<xsl:template match="/">
  <html>
  <head>
    <title>Gas Mask Database</title>
    <link rel="icon" type="image/png" href="https://dl.dropboxusercontent.com/u/14570796/Images/favicon2.png"/>
  </head>
  <body>
    <center>
    <xsl:for-each select="masks/type [position() = 1]">
  <h2 style="center"><xsl:value-of select="name"/></h2>
 <img height="200" width="auto">
                <xsl:attribute name="src">
                  <xsl:value-of select="pic"/>
                </xsl:attribute>
              </img>
  </xsl:for-each>
    <br/>
    ID's ending in GL are from Gasmask Lexikon
    <br/>
    Click Tumbnails for Larger Image
    <br></br>
    <a href="https://dl.dropboxusercontent.com/u/14570796/gasmasks/xml/main.xml">Country Select</a>
    </center>
  <table border="1" style="font-size: 12" width="100%">
    <font size="1">
    <xsl:for-each select="masks/type [position() > 1]">
    <tr>
        <td>
        <b>Name: </b> <xsl:value-of select="name"/><br></br>
        <b>Tranlsation: </b> <xsl:value-of select="Translation"/><br></br>
        <b>Aliases: </b> <xsl:value-of select="Aliases"/><br></br>
        <b>Date: </b><xsl:value-of select="Date"/><br></br>
        <b>Frequency: </b><xsl:value-of select="Frequency"/><br></br>
        <b>Country: </b><xsl:value-of select="Country"/><br></br>
        <b>Use: </b><xsl:value-of select="Function"/><br></br>
        <b>Reference:</b><xsl:value-of select="Ref"/><br></br>
        <b>Price: </b><xsl:value-of select="price"/><br></br>
        <b>Condition: </b><xsl:value-of select="condition"/><br/><br/>
        <b>Notes: </b><xsl:value-of select="Notes"/><br></br>
        </td>
        <td>
          <img height="auto" width="300">
                <xsl:attribute name="src">
                  <xsl:value-of select="pic"/>
                </xsl:attribute>
              </img>
          <br/>
          <table width="300">
            <xsl:for-each select="xtrapic">
              <xsl:choose>
                <xsl:when test="position()">
              <td>
              <tr>
              <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="concat('https://dl.dropbox.com/u/14570796/Images/thumbs/',."/>
                  </xsl:attribute>
                  <img height="50" width="auto">
                    <xsl:attribute name="src">
                      <xsl:value-of select="."/>
                    </xsl:attribute>
                  </img>
              </a>
              
              </tr>
              </td>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>
          </table>
        </td>
    </tr>
    
    </xsl:for-each>
    </font>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>