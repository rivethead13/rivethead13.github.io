<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
             <title>Gas Mask Database</title>
             <link rel="icon" type="image/png" href="http://rivethead13.epizy.com/Images/favicon2.png"/>
        </head>
        <body>
            <div align="center">
                <h1>Gas Mask Database</h1>
                <h2>Masks are sorted by Country then generally by time or modifications</h2>
                <h3>All prices starting with ? are not confirmed</h3>
                <table border="1">
                    <xsl:for-each select="list/country">
                        <xsl:choose>
                            <xsl:when test="position() mod 2 = 0">
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="link"/>
                                            </xsl:attribute>
                                            <img width="150" height="auto">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="flag"/>
                                                </xsl:attribute>
                                            </img>
                                        </a>
                                    </td>
                                    <td><xsl:value-of select="following::name"/></td>
                                    <td>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="following::link"/>
                                            </xsl:attribute>
                                            <img width="150" height="auto">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="following::flag"/>
                                                </xsl:attribute>
                                            </img>
                                        </a>
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                        <tr>
                         
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </body>
    </html>    
</xsl:template> 
</xsl:stylesheet>
