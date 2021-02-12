<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="CATALOG">
        <html>
            <head>
                <title>Plant Catalog</title>
                <link rel="stylesheet" type="text/css" href="https://annabellamelvin.github.io/css/main.css"/>
            </head>
            <body>
                <h3>Plant Catalog</h3>
                <p>
                    Our full catalog of inexpensive, starter-plants!
                </p>
                <table>
                    <tr>
                        <th>Common Name</th>
                        <th>Latin Name</th>
                        <th>Zone</th>
                        <th>Type of Light</th>
                        <th>Price</th>
                        <th>Availability</th>
                    </tr>
                    <xsl:for-each select="child::PLANT">
                        <xsl:sort select="."/>
                        <tr>
                            <td>
                                <xsl:value-of select="./COMMON"/>
                            </td>
                            <td>
                                <xsl:value-of select="./LATIN"/>
                            </td>
                            <td>
                                <xsl:value-of select="./ZONE"/>
                            </td>
                            <td>
                                <xsl:value-of select="./LIGHT"/>
                            </td>
                            <td>
                                <xsl:value-of select="./PRICE"/>
                            </td>
                            <td>
                                <xsl:value-of select="./AVAILABILITY"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>