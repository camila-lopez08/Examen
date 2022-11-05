<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
        <xsl:template match="libros1">
    <html>
        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
        </head>
        <body>
            <h2>Biblioteca Tomas Carrasquilla - sede poblado</h2>
            <a>
            </a>

            <div class="container-fluid">
                <h1>Libros</h1>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="foto/wed"/>
                    </xsl:attribute>
                        <xsl:value-of select="foto"/>
                </a>
                <xsl:for-each select="libro">
                    <tr>
                        <td><xsl:value-of select="titulo"></xsl:value-of></td>
                        <td><xsl:value-of select="autor"></xsl:value-of></td>
                        <td><xsl:value-of select="editorial"></xsl:value-of></td>
                        <td><xsl:value-of select="precio"></xsl:value-of></td>
                    </tr>

                </xsl:for-each>
                <h2>Informacion Personal</h2>
                <xsl:for-each select="autor">
                    <tr>
                        <td><xsl:value-of select="ciudad"></xsl:value-of></td>
                        <td><xsl:value-of select="telefono"></xsl:value-of></td>
                        <td><xsl:value-of select="correo"></xsl:value-of></td>
                    </tr>

                </xsl:for-each>
            </div>
        </body>
    </html>
        </xsl:template>
</xsl:stylesheet>
