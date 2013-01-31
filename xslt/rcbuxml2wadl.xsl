<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:db="http://docbook.org/ns/docbook"
    xmlns:wadl="http://wadl.dev.java.net/2009/02"
    xmlns="http://wadl.dev.java.net/2009/02"
    exclude-result-prefixes="xs db"
    
    version="2.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="endpoint">http://localhost</xsl:param>
    
    <xsl:variable name="close.paren">)</xsl:variable>
    <xsl:variable name="open.paren">(</xsl:variable>
    <xsl:variable name="comma">,</xsl:variable>
    <xsl:variable name="leftcurly">{</xsl:variable>
    <xsl:variable name="rightcurly">}</xsl:variable>    
    <xsl:template match="/">
        <xsl:variable name="content">
        <application 
            xmlns="http://wadl.dev.java.net/2009/02"
            xmlns:wadl="http://wadl.dev.java.net/2009/02">
            <resources base="{$endpoint}">
                <xsl:for-each-group select="doc/members/member[verb]" group-by="replace(url,'^/?(.+)','$1')">
                    <!-- TODO: Parse query params out of path...also template params -->
                    <xsl:variable name="path">
                        <xsl:choose>
                            <xsl:when test="substring(current-grouping-key(),1,1) = '/'"><xsl:value-of select="substring-after(current-grouping-key(),'/')"/></xsl:when>
                            <xsl:otherwise><xsl:value-of select="current-grouping-key()"/></xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <resource path="{replace($path,'\?.+','')}" id="{replace(translate($path,'/{}','___'),'\?.+$','')}">
                        <xsl:for-each select="tokenize(replace($path,'(\?.+)',''),'/')">
                            <xsl:if test="contains(.,$leftcurly)">
                                <param name="{substring-before(substring-after(.,$leftcurly),$rightcurly)}" style="template"/>
                            </xsl:if>
                        </xsl:for-each>
                        <xsl:apply-templates select="current-group()"/>
                    </resource>
                </xsl:for-each-group>
            </resources>
        </application>    
        </xsl:variable>
        <xsl:apply-templates select="$content" mode="strip-rax"/>
        <xsl:result-document href="target/generated-resources/xml/xslt/apiref-db.xml">
            <chapter xmlns="http://docbook.org/ns/docbook" xml:id="api-operations">
                <title>API Operations</title>
                <xsl:for-each-group select="$content//wadl:resource" group-by="./wadl:method[1]/processing-instruction('rax')">
                    <section xml:id="{translate(current-grouping-key(),' ','_')}-apiref">
                        <title><xsl:value-of select="normalize-space(replace(current-grouping-key(), '([A-Z][a-z]+)', ' $1'))"/></title>
                        <wadl:resources>
                            <xsl:for-each select="current-group()">
                                <wadl:resource href="apidoc_external.wadl#{@id}"/>
                            </xsl:for-each>
                        </wadl:resources>
                    </section>
                </xsl:for-each-group>
            </chapter>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="member[verb]">
                <method name="{verb}" ><!-- id="{translate(@name,concat(':',$close.paren,$open.paren,$comma),'_')}"id="{translate(@name,concat(':',$close.paren,$open.paren,$comma),'_')}" -->
                    <xsl:processing-instruction name="rax"><xsl:value-of select="group"/></xsl:processing-instruction>
                    <wadl:doc title="{title}" xmlns="http://docbook.org/ns/docbook">
                        <para role="shortdesc">
                            <xsl:value-of select="report"/>
                        </para>
                        <xsl:if test="note and not(normalize-space(note/node()) = '') and not(normalize-space(note/node()) = 'This operation does not require a request body.')">
                            <note>
                                <para><xsl:copy-of select="./note/node()"/></para>
                            </note>
                        </xsl:if>
                        <xsl:if test="returns and not(normalize-space(returns) = '')">
                            <para><xsl:value-of select="returns"/></para>
                        </xsl:if>
                    </wadl:doc>
                    <xsl:apply-templates select="example"/>
                    <xsl:if test="not(example[contains(./title,'Request')])">
                        <xsl:if test="normalize-space(substring-after(url,'?')) != ''">
                        <request>
                            <xsl:for-each select="tokenize(substring-after(url,'?'),'&amp;')">
                                <param style="query" name="{substring-before(.,'=')}" type="xs:string">
                                    <doc>Typical value(s): <xsl:value-of select="substring-after(.,'=')"/></doc>
                                </param>
                            </xsl:for-each>
                        </request>
                        </xsl:if>
                    </xsl:if>
                    <xsl:apply-templates select="errorResponseCodes"/>
                </method>

    </xsl:template>
    
    <xsl:template match="member[not(verb)]"/>
    
    <xsl:template match="example">
        <xsl:choose>
            <xsl:when test="title = 'Example JSON Request'">
                <request>
                    <representation mediaType="application/json">
                        <xsl:message><xsl:value-of select="preceding-sibling::url"/></xsl:message>
                        <doc xml:lang="EN">
                            <example xmlns="http://docbook.org/ns/docbook" role="wadl">
                                <title><xsl:value-of select="parent::member/title"/> Request: JSON</title>
                                <programlisting language="javascript"><xsl:copy-of select="code/text()"/></programlisting>
                            </example>
                        </doc>
                    </representation>
                </request>        
            </xsl:when>
            <xsl:when test="title = 'Example JSON Response'">
                <xsl:variable name="normalResponseStatusCode">
                    <xsl:choose>
                        <xsl:when test="contains(parent::member/normalResponseCodes, '200')">200</xsl:when>
                        <xsl:when test="contains(parent::member/normalResponseCodes, '204') and contains(parent::member/normalResponseCodes, '200')"><xsl:text> </xsl:text></xsl:when>
                        <xsl:when test="contains(parent::member/normalResponseCodes, '204')">204</xsl:when>
                        <xsl:otherwise>
                            <xsl:message terminate="no">Could not determine normal response code: <xsl:value-of select="normalResponseCodes"/></xsl:message>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <response status="{$normalResponseStatusCode}">
                    <representation mediaType="application/json">
                        <doc xml:lang="EN">
                            <example xmlns="http://docbook.org/ns/docbook" xmlns:db="http://docbook.org/ns/docbook"
                                role="wadl">
                                <title><xsl:value-of select="parent::member/title"/> Response: JSON</title>
                                <programlisting language="javascript"><xsl:copy-of select="code/text()"/></programlisting>
                            </example>
                        </doc>
                    </representation>
                </response>
            </xsl:when>
        </xsl:choose>  
    </xsl:template>
    
    <xsl:template match="errorResponseCodes">
<!--        <xsl:choose>
            <xsl:when test="contains(.,$close.paren)">
                <xsl:call-template name="parseErrorResponseCodesParen">
                    <xsl:with-param name="content" select="translate(text(),$comma,'')"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>-->
                <xsl:call-template name="parseErrorResponseCodes">
                    <xsl:with-param name="content" select="text()"/>
                </xsl:call-template>                
<!--            </xsl:otherwise>
        </xsl:choose>-->
    </xsl:template>
    
    
    <xsl:template name="parseErrorResponseCodes">
        <xsl:param name="content"/>
        <xsl:if test="contains($content,'400')">
            <response status="400">
                <representation mediaType="application/json">
                    <doc xml:lang="EN">Bad request</doc>
                </representation>
            </response>
        </xsl:if>    
        <xsl:if test="contains($content,'401')">
            <response status="403">
                <representation mediaType="application/json">
                    <doc xml:lang="EN">Unauthorized</doc>
                </representation>
            </response>
        </xsl:if> 
        <xsl:if test="contains($content,'403')">
            <response status="403">
                <representation mediaType="application/json">
                    <doc xml:lang="EN">Forbidden</doc>
                </representation>
            </response>
        </xsl:if> 
        <xsl:if test="contains($content,'404')">
            <response status="404">
                <representation mediaType="application/json">
                    <doc xml:lang="EN">Not found</doc>
                </representation>
            </response>
        </xsl:if> 
        <xsl:if test="contains($content,'500')">
            <response status="500">
                <representation mediaType="application/json">
                    <doc xml:lang="EN">Service Unavailable</doc>
                </representation>
            </response>
        </xsl:if> 
        <xsl:if test="contains($content,'503')">
            <response status="500">
                <representation mediaType="application/json">
                    <doc xml:lang="EN">Service Unavailable</doc>
                </representation>
            </response>
        </xsl:if> 
    </xsl:template>
    
    <xsl:template name="parseErrorResponseCodesParen">
        <xsl:param name="content"/>
        <xsl:param name="head" select="substring-before($content,$close.paren)"/>
        <xsl:param name="tail" select="substring-after($content,$close.paren)"/>
        <response status="{normalize-space(substring-after($head,$open.paren))}">
            <representation mediaType="application/json">
                <doc xml:lang="EN"><xsl:value-of select="normalize-space(substring-before($head,$open.paren))"/></doc>
            </representation>
        </response>
        <xsl:if test="not(normalize-space($tail) = '')">
            <xsl:call-template name="parseErrorResponseCodesParen">
                <xsl:with-param name="content" select="$tail"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="node() | @*" mode="strip-rax">
        <xsl:copy>
            <xsl:apply-templates select="node() | @*" mode="strip-rax"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="processing-instruction('rax')" mode="strip-rax"/>
    
    
</xsl:stylesheet>