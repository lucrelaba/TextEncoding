<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
xmlns:tei="http://www.tei-c.org/ns/1.0" 
xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
    <html>
        <head>
            <title>Prolusioni 3</title>
            <link rel="stylesheet" type="text/css" href="style.css" />                
        </head>

        <body>
            <header>
                <h1>Prolusioni di Ferdinand de Saussure</h1>
                <nav id="navbar">
                    <ul> 
                        <li><a class="button" href = "#Intro">INFORMAZIONI</a></li>
                        <li><a class="button" href = "#Pag1">PAGINA 1</a></li> 
                        <li><a class="button" href = "#Pag2">PAGINA 2</a></li>
                        <li><a class="button" href = "#Keywords">PAROLE CHIAVE</a></li>
                        <li><a class="button" href = "#Info">BIBLIOGRAFIA</a></li>
                    </ul>
                </nav>           
            </header>

            <div class="container" id="Intro">
                <h2>Informazioni sulla fonte originale</h2>   
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/>
                <div class="container-legenda">
                    <h5>LEGENDA ELEMENTI</h5>
                    <p><li class ="termini">Elementi terminologici: GIALLO</li></p>
                    <p><li class="abbreviazioni">Abbreviazioni: ARANCIONE</li></p>
                    <p><li class="corresp">Eventi databili: VERDE</li></p>
                    <p><li class="aggiunte_lat">Aggiunte: BLU</li></p>
                    <p><li class="glottonimi">Glottonimi: MARRONE</li></p>
                    <p><li class="correzioni">Correzioni: (GRIGIO)</li></p>
                    <p><li class="cancellazioni">Cancellazioni</li></p>
                    <p><li class="ripasso">Parole ripassate</li></p>
                    <p><li>Segmenti spostati: {...}</li></p>
                    <p><li>Ripetizioni: [...]</li></p>

                </div>                              
            </div>    
            
            <div class="containerP1" id="Pag1">
                <h2>Prima pagina</h2>
                <div class="img-prolusione">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="//tei:graphic[@xml:id='Pag1']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">pag1</xsl:attribute>
                    </xsl:element>
                </div>

                <div class="testo-fr">
                    <h3>Trascrizione francese</h3>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:fw[@xml:id='PageNum-1']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='1']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='2']"/> <br/>
                </div> 

                <div class="testo-it">
                    <button id="pulsanteTraduzione">TRADUZIONE ITALIANA</button><span id="testoTraduzione" class="hidden"> 
                        <div class ="testo-fr">
                    <h3>Traduzione in italiano</h3>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per1']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per2']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per3']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per4']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per5']"/>
                        </div>
                </span>
            </div>
            </div>

            <div class="containerP2" id="Pag2">
                <h2>Seconda pagina</h2>
                <div class="img-prolusione">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="//tei:graphic[@xml:id='Pag2']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">pag2</xsl:attribute>
                    </xsl:element>
                </div>

                <div class="testo-fr">
                    <h3>Trascrizione francese</h3>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:fw[@xml:id='PageNum-2']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='3']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='4']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='5']"/> <br/>
                </div> 

                <div class="testo-it">
                    <button id="pulsanteTraduzione2">TRADUZIONE ITALIANA</button><span id="testoTraduzione2" class="hidden">
                        <div class ="testo-fr">
                    <h3>Traduzione in italiano</h3>
                    <xsl:value-of select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per6']"/>
                    <xsl:value-of select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per7']"/>
                    <xsl:value-of select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per8']"/>
                    <xsl:value-of select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per9']"/>
                    <xsl:value-of select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per10']"/>
                    <xsl:value-of select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per11']"/>
                </div>
                </span>
            </div>
            </div>

            <div class="container-key" id="Keywords">
                <h2>Parole chiave</h2>
                <xsl:apply-templates select="//tei:back/tei:div[@type='addList']/tei:list[@type='terminology']"/>
            </div>

            <div class="container" id="Info">
                <h2>Bibliografia</h2>
                <xsl:apply-templates select="//tei:back/tei:div[@type='addList']/tei:listBibl" />
            </div>

            
        </body>
        <script src="prolusioni.js"></script>
    </html>
</xsl:template>

<!--BIBLIOGRAFIA-->
<xsl:template match="//tei:listBibl">
    <xsl:for-each select="tei:bibl">
        <span>
            <xsl:value-of select="tei:note"/>: 
            <xsl:for-each select="tei:title">
                <i><xsl:value-of select="."/></i>,  
            </xsl:for-each>
            <xsl:for-each select="tei:author">
                <xsl:value-of select="."/>, 
            </xsl:for-each>
            <xsl:value-of select="tei:pubPlace"/>, 
            <xsl:value-of select="tei:publisher"/>, 
            <xsl:value-of select="tei:date"/>.
        </span>
        <br/> <br/>
    </xsl:for-each>
</xsl:template>

<!--ELENCO PAROLE CHIAVE--> 
<xsl:template match="//tei:list[@type='terminology']">
    <xsl:for-each select="tei:item/tei:gloss">
        <xsl:value-of select="." />
        <br/> <br/>
    </xsl:for-each>
</xsl:template>

<!-- ********************************** -->
<!--TEMPLATES per le prolusioni francesi-->
<!-- ********************************** -->

<!--divisione in righe-->
<xsl:template match="//tei:lb[@facs]">
    <xsl:for-each select="self::node()">
        <xsl:if test="@break='no'">-</xsl:if>
        <br/>
    </xsl:for-each>
</xsl:template>

<!--Elementi terminologici-->
<xsl:template match="//tei:term"> 
    <span class="termini"> 
        <xsl:apply-templates />   
    </span>
</xsl:template>

<!--ELEMENTI SOTTOLINEATI O TERMINI SOTTOLINEATI O GLOTTONIMI SOTTOLINEATI-->
<xsl:template match="//tei:emph[@rend='underline']">
    <span class="sottolineato"> 
        <xsl:apply-templates />   
    </span>
</xsl:template>

<!-- Glottonimi-->
<xsl:template match="//tei:lang">
    <span class="glottonimi">
        <xsl:value-of select="."/>
    </span>
</xsl:template>

<!--Riferimenti a eventi databili-->
<xsl:template match="//tei:seg[@corresp]">  
    <span class="corresp">
        <xsl:apply-templates />
    </span>
</xsl:template>

<!--CHOICE con abbreviazioni/espansioni-->
<xsl:template match="//tei:abbr">  
        <span class="abbreviazioni">
            [<xsl:value-of select="."/>]
        </span>  
</xsl:template>

<!--Aggiunte-->
<xsl:template match="//tei:add">
    <span class="aggiunte_lat">
        <xsl:apply-templates />
    </span>
</xsl:template>

<!--Cancellazioni-->
<xsl:template match="//tei:del">
    <xsl:if test="@rend='overstrike'">
        <span class="cancellazioni">
            <xsl:value-of select="."/>
        </span>
    </xsl:if>
</xsl:template>

<!--Correzioni SIC-->
<xsl:template match="//tei:sic">
    <span class="correzioni">
        (<xsl:value-of select="."/>)
    </span>
</xsl:template>

<!--ELEMENTI RIPASSATI-->
<xsl:template match="//tei:retrace">
<span class="ripasso">
    <xsl:value-of select="."/>
</span>
</xsl:template>

<!--SURPLUS-->
<xsl:template match="//tei:surplus">
    <span>
    [<xsl:value-of select="."/>]
    </span>
</xsl:template>

<!--Segmenti spostati nel metamark-->
<xsl:template match="//tei:seg[@xml:id]">
    <span class="metaseg">
        <xsl:value-of select="."/>
    </span>
</xsl:template>

<!--Metamark con elementi collegati-->
<xsl:template match="//tei:metamark[@target='#insert1']">
<span> {
    <xsl:for-each select="/tei:TEI//tei:seg[@xml:id='insert1']">
        <xsl:apply-templates select="./* | ./text()" />
    </xsl:for-each>
        }
</span>
</xsl:template>


<!-- ********************************* -->
<!--TEMPLATES per la parte introduttiva-->
<!-- ********************************* -->

<xsl:template match="tei:titleStmt">
    <p> TITOLO ORIGINALE:
        <xsl:for-each select="tei:title">
            <xsl:value-of select="."/>
        </xsl:for-each>
    </p>
    <p> AUTORE:
        <xsl:value-of select="tei:author"/>
    </p>
</xsl:template>

<xsl:template match="tei:sourceDesc/tei:msDesc">    
    <p> CONSERVAZIONE: questi manoscritti sono conservati presso la <xsl:value-of select="tei:msIdentifier/tei:institution"/>. <br/>
        Si tratta di un'opera ad accesso libero della collezione <xsl:value-of select="tei:msIdentifier/tei:collection"/>
        , con identificativo <xsl:value-of select="tei:msIdentifier/tei:idno"/>
    </p>
    <xsl:for-each select="tei:physDesc/tei:objectDesc">
        <p> SUPPORTO FISICO: il supporto utilizzato sono dei <xsl:value-of select="tei:supportDesc/tei:support"/></p>
        <p> DESCRIZIONE: <xsl:value-of select="tei:layoutDesc"/></p>
    </xsl:for-each>
    <p>STORIA: <xsl:value-of select="tei:history"/></p>
 
</xsl:template>

<xsl:template match="tei:langUsage">
    <p> LINGUA ORIGINALE: <xsl:value-of select="."/></p>
</xsl:template>

<xsl:template match="tei:editionStmt">
    <h2>Informazioni sulla codifica</h2>
    <p><xsl:value-of select="tei:edition"/></p>
    <xsl:for-each select="tei:respStmt">
        <p><xsl:value-of select="."></xsl:value-of></p>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>