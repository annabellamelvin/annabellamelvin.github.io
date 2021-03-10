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
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Parkname">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="ParkID">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="Borough">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="Acres">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="HabitatType">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
</xsl:stylesheet>
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
