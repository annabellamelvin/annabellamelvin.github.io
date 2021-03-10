<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="PRESERVES">
        <html>
            <head>
                <title>Nature Preserves</title>
                <link rel="stylesheet" type="text/css" href="https://annabellamelvin.github.io/css/main.css"/>
            </head>
            <body>
                <h3>Nature Preserves</h3>
                <p>
                    NYC's Directory of Nature Preserves, provided by the Department of Parks and Recreation
                </p>
                <table>
                    <tr>
                        <th>Park Name</th>
                        <th>ID</th>
                        <th>Borough</th>
                        <th>Acres</th>
                        <th>Habitat Type</th>
                    </tr>
                    <xsl:for-each select="child::FACILITY">
                        <xsl:sort select="."/>
                        <tr>
                            <td>
                                <xsl:value-of select="./Parkname"/>
                            </td>
                            <td>
                                <xsl:value-of select="./ParkID"/>
                            </td>
                            <td>
                                <xsl:value-of select="./Borough"/>
                                <xsl:sort select="Borough" data-type="text" order="ascending"/>
                            </td>
                            <td>
                                <xsl:value-of select="./Acres"/>
                            </td>
                            <td>
                                <xsl:value-of select="./HabitatType"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
