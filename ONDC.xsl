
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:html="http://www.w3.org/1999/xhtml"
    
    xmlns:rng="http://relaxng.org/ns/structure/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:teix="http://www.tei-c.org/ns/Examples"
    
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="a fo rng tei teix"
    version="2.0">

    
    <xsl:template match="/">


        <html>
            <head>   
                <meta charset="utf-8" />
                <title> <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title[@xml:lang='eng']"/>
                </title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport" />
                <meta content="" name="keywords" />
                 <meta content="" name="description" />
                
                 <!-- Favicons -->
                 <link href="img/favicon.png" rel="icon" />
                 <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />
                                        
                  <!-- Google Fonts -->
                  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900" rel="stylesheet" />
                                            
                  <!-- Bootstrap CSS File -->
                  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                                                
                  <!-- Libraries CSS Files -->
                  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
                  <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet" />
                  <link href="lib/hover/hoverex-all.css" rel="stylesheet" />
                                                            
                  <!-- Main Stylesheet File -->
                  <link href="css/style.css" rel="stylesheet" />
                  <link rel="stylesheet" href="dist/leipzig.css" />
            </head>
            <style>
                .div-1 {
                background-color: #EBEBEB;
                }
                
                .div-2 {
                background-color: #9acd32;
                }
                
                .div-3 {
                background-color: #F5F5F5;
                }
            </style>
            <body style="background-color:#EBEBEB">
                <div class="div-1"><h3>Old Nubian Digital Corpus Project (funded by JSPS KAKENHI) / 古ヌビア語コーパス・プロジェクト（JSPS科研費）</h3></div>        
                
 <div>
     <h1><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title[@xml:lang='eng']"/><br/><small><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title[@xml:lang='jpn']"/></small></h1>
     <h2>by <bold><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author[@xml:lang='eng']"/> (<xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author[@xml:lang='jpn']"/>)</bold></h2>
     <table border="1">
         <tr bgcolor="#9acd32">
             <th style="text-align:left">Name</th>
             <th style="text-align:left">Resposibility</th>
         </tr>
         
         <xsl:for-each select="TEI/teiHeader/fileDesc/titleStmt/respStmt">

    <tr>
        <th style="text-align:left"><xsl:value-of select="name"/></th>
        <th style="text-align:left"><xsl:value-of select="resp"/></th>
    </tr>
         </xsl:for-each>
     </table>
 </div>
     

     <xsl:for-each select="TEI/text/body/ab">
  <div class="div-1">

         <div id="oldnubian" class="div-3">                       
             <p><big><xsl:value-of select="s[@type='orig']"/></big></p>
             <p><big><xsl:value-of select="s[@type='parse']"/></big></p>
             <p><xsl:value-of select="s[@type='roman']"/></p>
             <p><xsl:value-of select="s[@type='gloss']"/></p>
             <p><xsl:value-of select="s[@type='trans']"/></p>
         </div>
      <br/>
  </div>   
     
     </xsl:for-each>
                <!-- JavaScript Libraries -->
                <script src="lib/jquery/jquery.min.js"></script>
                <script src="lib/bootstrap/js/bootstrap.min.js"></script>
                <script src="lib/php-mail-form/validate.js"></script>
                <script src="lib/prettyphoto/js/prettyphoto.js"></script>
                <script src="lib/isotope/isotope.min.js"></script>
                <script src="lib/hover/hoverdir.js"></script>
                <script src="lib/hover/hoverex.min.js"></script>
                <script src="dist/leipzig.js"></script>
                <script>
                    document.addEventListener('DOMContentLoaded', function() {
                    Leipzig('#oldnubian', { firstLineOrig: true }).gloss();
                    });
                </script>
                
                <!-- Template Main Javascript File -->
                <script src="js/main.js"></script>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>