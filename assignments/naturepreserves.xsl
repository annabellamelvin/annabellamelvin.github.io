    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xpath-default-namespace="http://www.nycgovparks.org/bigapps/desc/DPR_NaturePreserves_001.txt"
       exclude-result-prefixes="xs"
        version="2.0">
        
        <xsl:output indent="yes"/>
        
        <xsl:template match="naturepreserves">
            <html>
                <head>
                    <title>Nature Preserves</title>
                    <link href="https://annabellamelvin.github.io/css/main.css" rel="stylesheet" type="text/css"/>
                </head>
                <body>
                    <h1>Nature Preserves</h1>
                    <ul>
                        <xsl:apply-templates select="facility">
                            <xsl:sort select="Parkname" order="ascending"/>
                        </xsl:apply-templates>
                    </ul>
                </body>
            </html>
        </xsl:template>
        
        <xsl:template match="facility">
            <li>
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="concat('/assignments/parks/', ParkID,'_',Acres, '.html')"/>
                    </xsl:attribute>
                    <xsl:value-of select="Parkname"/>
                </xsl:element>
            </li>
            <xsl:result-document href="{concat('/Users/annabellamelvin/Downloads/parks/', ParkID,'_',Acres, '.html')}">
                <html>
                    <head>
                        <title>Nature Preserves</title>
                        <link href="https://annabellamelvin.github.io/css/main.css" rel="stylesheet" type="text/css"/>
                    </head>
                    <body>
                        <xsl:apply-templates select="Parkname"/>
                        <xsl:apply-templates select="ParkID"/>
                        <xsl:apply-templates select="Borough"/>
                        <xsl:apply-templates select="Acres"/>
                        <xsl:apply-templates select="Description"/>
                        <xsl:apply-templates select="HabitatType"/>
                        <a href="../naturepreserves_html.html">Back to list</a>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:template>
        
        
        <xsl:template match="Parkname">
            <p>
                Park ID: <xsl:apply-templates/>
            </p>
        </xsl:template>
        <xsl:template match="ParkID">
            <p>
                Park ID: <xsl:apply-templates/>
            </p>
        </xsl:template>
        <xsl:template match="Borough">
            <p>
                Borough: <xsl:apply-templates/>
            </p>
        </xsl:template>
        <xsl:template match="Acres">
            <p>
                Acres: <xsl:apply-templates/>
            </p>
        </xsl:template>
        <xsl:template match="HabitatType">
            <h2>
                Habitat Type: <xsl:apply-templates/>
            </h2>
        </xsl:template>
        <xsl:template match="Description">
            <p>
                Description: <xsl:apply-templates/>
            </p>
        </xsl:template>
        
        
        
    </xsl:stylesheet>
