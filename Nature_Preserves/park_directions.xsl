<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="PRESERVES">
        <html>
            <head>
                <title>Park and Preserve Directions</title>
                <link rel="stylesheet" type="text/css" href="https://annabellamelvin.github.io/css/main.css"/>
            </head>
            <body>
                <h3>Park and Preserve Directions</h3>
                <p>
                    Tips for driving and commuting to local NYC parks and preservations, based on NYC bouroughs.
                </p>
                <table>
                    <tr>
                        <th>Park Name</th>
                        <th>SantuaryName</th>
                        <th>Borough</th>
                        <th>Directions</th>
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
    <xsl:template match="SanctuaryName">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="Borough">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="Directions">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
</xsl:stylesheet>