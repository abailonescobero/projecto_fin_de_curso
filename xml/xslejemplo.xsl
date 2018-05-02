<?xml version='1.0' encoding='ISO-8859-1'?>

<xsl:stylesheet 
xmlns:xsl='http://www.w3.org/1999/XSL/Transform' 
version='1.0' >

<xsl:template match='/'>

<!-- Aqui comienza la plantilla del contenido -->
<html>
 <body>
  <h1>
    <xsl:value-of select='/Pag/Titulo' />
  </h1>

  <p>
    <xsl:value-of select='/Pag/PagDesc' />
  </p>

  <table border='1'>
   <tr>
    <th>Nombre</th>
    <th>Apellido</th>
   </tr>

   <xsl:for-each select='Pag/ClaseLista/Clase'>
       <tr>
        <!-- Es importante dejar el espacio 
        que hay entre el valor del atributo 'value of select'
        y la barra / que cierra el tag -->

        <td><xsl:value-of select='Nombre' /></td>
        <td><xsl:value-of select='Apellido' /></td>
       </tr>
   </xsl:for-each>
      <xsl:choose>
          <xsl:when test="Nombre='F2A'">
             <td bgcolor="#ff00ff">
             <xsl:value-of select="Apellido"/>
             </td>
          </xsl:when>
          <xsl:otherwise>
              <tr>
              <td bgcolor="#ff88ff"><xsl:value-of select="Nombre"/>F2A</td>
              <td bgcolor="#ff88ff"><xsl:value-of select="Apellido"/>GradoMedio</td>
              </tr>
          </xsl:otherwise>
      </xsl:choose>
      <!--<xsl:variable name="day">
      <xsl:choose>
             <xsl:when test="$today = '4'">
                <xsl:variable name="docType" select="Wednesday"/>
             </xsl:when>
             <xsl:when test="$today = '5'">
                <xsl:variable name="docType" select="Friday"/>
             </xsl:when>
             <xsl:otherwise></xsl:otherwise>
      </xsl:choose>
      </xsl:variable>-->
  </table>
 </body>
</html>
    
</xsl:template>
    
</xsl:stylesheet>
