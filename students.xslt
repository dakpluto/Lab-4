<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xsi:schemaLocation="urn:schemas-microsoft-com:xslt ">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Listing</title>
            </head>
            <body>
                <h1>Student Listing</h1>
                <table border="1" cellpadding="3" cellspacing="0">
                    <xsl:apply-templates select="students/student" />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student[@type='grad']">
         <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="lastname"/>, <xsl:value-of select="firstname"/></td>
            <td><xsl:value-of select="gpa"/></td>
            <td><b>Graduate Student</b></td>
        <tr>
    </xsl:template>
</xsl:stylesheet>
