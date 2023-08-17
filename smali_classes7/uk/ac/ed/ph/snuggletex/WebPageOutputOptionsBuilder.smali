.class public final Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createHTML4Options()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    return-object v0
.end method

.method public static final createHTML5MathJaxOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    invoke-static {}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsBuilder;->createHTML5Options()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setMathJax(Z)V

    return-object v0
.end method

.method public static final createHTML5MathJaxOptions(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsBuilder;->createHTML5MathJaxOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setCustomMathJaxUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createHTML5Options()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->STRICTLY_HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    sget-object v1, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XHTML:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setErrorOutputOptions(Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setHtml5(Z)V

    return-object v0
.end method

.method public static final createIEMathPlayerSpecificOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingMathML(Z)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setAddingMathPlayerImport(Z)V

    return-object v0
.end method

.method public static final createLegacyCrossBrowserOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 3

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setMathJax(Z)V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setNoCharsetInContentTypeHeader(Z)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setXHTMLPrefix(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setMathMLPrefix(Ljava/lang/String;)V

    const-string v1, "-//W3C//DTD XHTML 1.1 plus MathML 2.0//EN"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setDoctypePublic(Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/Math/DTD/mathml2/xhtml-math11-f.dtd"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setDoctypeSystem(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createMozillaSpecificOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 3

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setMathJax(Z)V

    sget-object v2, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    const-string v1, "application/xhtml+xml"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createUniversalStylesheetOptions(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 1

    const-string v0, "mathplayer-dl"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsBuilder;->createUniversalStylesheetOptions(Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final createUniversalStylesheetOptions(Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setMathPrefRenderer(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setClientSideXSLTStylesheetURLs([Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createXHTMLMathJaxOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setMathJax(Z)V

    return-object v0
.end method

.method public static final createXHTMLMathJaxOptions(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsBuilder;->createXHTMLMathJaxOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setCustomMathJaxUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createXHTMLOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    return-object v0
.end method
