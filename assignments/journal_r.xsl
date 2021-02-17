<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="div[@class='interior-content']/ul">
        <xsl:result-document href="research_journals2.xml">
            <journal_data>
                <xsl:apply-templates select="li">
                    <xsl:sort select="p[1]/span/substring-after(text(), '- ')" order="ascending" data-type="text"></xsl:sort>
                </xsl:apply-templates>
            </journal_data>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="head"/>
    <xsl:template match="header"/>
    <xsl:template match="script"/>
    <xsl:template match="div[@class = 'breadcrumbs']"/>
    <xsl:template match="h1"/>
    <xsl:template match="div[@style = 'display:none']"/>
    <xsl:template match="div[@class = 'block']"/>
    <xsl:template match="div[@class = 'interior-rail']"/>
    <xsl:template match="ul/li">
        <journal_record>
            <xsl:apply-templates/>
        </journal_record>
    </xsl:template>
    <xsl:template match="li/p[1]/span">
        <institution>
            <xsl:value-of select="substring-after(text(), '- ')"/>
        </institution>
    </xsl:template>
    <xsl:template match="li/p[1]/a">
        <journal_title>
            <xsl:apply-templates/>
        </journal_title>
        <URL>
            <xsl:value-of select="@href"/>
        </URL>
    </xsl:template>
    <xsl:template match="li/p[2]">
        <journal_description>
            <xsl:apply-templates/>
        </journal_description>
    </xsl:template>
</xsl:stylesheet>