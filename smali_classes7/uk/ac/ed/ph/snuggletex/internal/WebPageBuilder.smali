.class public final Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MATHJAX_URL:Ljava/lang/String; = "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=MML_HTMLorMML-full"


# instance fields
.field private final options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    return-void
.end method

.method private computeContentTypeHeader()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isNoCharsetInContentTypeHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private computeMetaContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final createSerializer()Ljavax/xml/transform/Transformer;
    .locals 4

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->supportsXSLT20()Z

    move-result v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getSerializer(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljavax/xml/transform/Transformer;

    move-result-object v0

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media-type"

    invoke-virtual {v0, v3, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/xml/transform/Transformer;->getOutputProperties()Ljava/util/Properties;

    move-result-object v2

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isHtml5()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "doctype-public"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "doctype-system"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "include-content-type"

    const-string v2, "no"

    goto :goto_0

    :cond_1
    const-string v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    const-string v2, "yes"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isPrefixingXHTML()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getXHTMLPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-object p2
.end method


# virtual methods
.method public final buildWebPage(Ljava/util/List;)Lorg/w3c/dom/Document;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)",
            "Lorg/w3c/dom/Document;"
        }
    .end annotation

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getClientSideXSLTStylesheetURLs()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type=\"text/xsl\" href=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml-stylesheet"

    invoke-interface {v0, v6, v5}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "body"

    invoke-direct {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isAddingTitleHeading()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "h1"

    invoke-direct {p0, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    new-instance v4, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v4, v5, v6}, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V

    invoke-virtual {v4, v1, p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->buildDOMSubtree(Lorg/w3c/dom/Element;Ljava/util/List;)V

    const-string p1, "head"

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isAddingMathPlayerImport()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "object"

    invoke-direct {p0, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "MathPlayer"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "classid"

    const-string v6, "clsid:32F66A20-7614-11D4-BD11-00104BD3F987"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "namespace=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getMathMLPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" implementation=\"#MathPlayer\" ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "import"

    invoke-interface {v0, v5, v4}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    const-string v4, "meta"

    invoke-direct {p0, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isHtml5()Z

    move-result v6

    const-string v7, "content"

    if-eqz v6, :cond_3

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getEncoding()Ljava/lang/String;

    move-result-object v6

    const-string v8, "charset"

    invoke-interface {v5, v8, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v6, "http-equiv"

    const-string v8, "Content-Type"

    invoke-interface {v5, v6, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->computeMetaContentType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "name"

    const-string v6, "Generator"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SnuggleTeX"

    invoke-interface {v4, v7, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v4, "title"

    invoke-direct {p0, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "SnuggleTeX Generated Page"

    :goto_2
    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getCSSStylesheetURLs()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    const-string v7, "link"

    invoke-direct {p0, v0, v7}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v8, "rel"

    const-string v9, "stylesheet"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "href"

    invoke-interface {v7, v8, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isIncludingStyleElement()Z

    move-result v3

    const-string v4, "type"

    if-eqz v3, :cond_6

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isInliningCSS()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "style"

    invoke-direct {p0, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v5, "text/css"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-static {v5}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readInlineCSSProperties(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Ljava/util/Properties;

    move-result-object v5

    invoke-static {v5}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeStylesheet(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isMathJax()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getCustomMathJaxUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=MML_HTMLorMML-full"

    :cond_7
    const-string v5, "script"

    invoke-direct {p0, v0, v5}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "text/javascript"

    invoke-interface {v5, v4, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "src"

    invoke-interface {v5, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    const-string v3, "html"

    invoke-direct {p0, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createXHTMLElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getMathPrefRenderer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "http://www.w3.org/2002/Math/preference"

    const-string v5, "pref:renderer"

    const-string v6, "mathplayer-dl"

    invoke-interface {v3, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getLang()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v5

    sget-object v6, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-eq v5, v6, :cond_b

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v5

    sget-object v6, Luk/ac/ed/ph/snuggletex/SerializationMethod;->STRICTLY_HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-ne v5, v6, :cond_a

    goto :goto_4

    :cond_a
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    const-string v6, "xml:lang"

    invoke-interface {v3, v5, v6, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_4
    const-string v5, "lang"

    invoke-interface {v3, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isPrefixingMathML()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v4

    sget-object v5, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v4

    sget-object v5, Luk/ac/ed/ph/snuggletex/SerializationMethod;->STRICTLY_HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    if-eq v4, v5, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getMathMLPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/2000/xmlns/"

    const-string v6, "http://www.w3.org/1998/Math/MathML"

    invoke-interface {v3, v5, v4, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-interface {v3, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->getStylesheets()[Ljavax/xml/transform/Transformer;

    move-result-object p1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    array-length v1, p1

    :goto_6
    if-ge v2, v1, :cond_e

    aget-object v3, p1, v2

    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :try_start_0
    new-instance v5, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v5, v0}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not apply stylesheet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    return-object v0
.end method

.method public final buildWebPageString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->buildWebPage(Ljava/util/List;)Lorg/w3c/dom/Document;

    move-result-object p1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isHtml5()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<!DOCTYPE html>\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    :cond_0
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createSerializer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v1, "Could not serialize web page"

    invoke-direct {v0, v1, p1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final setWebPageContentType(Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setContentType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->computeContentTypeHeader()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find and call setContentType() on Object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeWebPage(Ljava/util/List;Ljava/lang/Object;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/io/OutputStream;",
            "Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->setWebPageContentType(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->isHtml5()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/OutputStreamWriter;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->options:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "<!DOCTYPE html>\n"

    invoke-virtual {p2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_1
    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->buildWebPage(Ljava/util/List;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->createSerializer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, p3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, v0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->CLOSE:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    if-ne p4, p1, :cond_2

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :cond_2
    sget-object p1, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->FLUSH:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    if-ne p4, p1, :cond_3

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v0, "Could not serialize web page"

    invoke-direct {p2, v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object p2, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->CLOSE:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    if-eq p4, p2, :cond_4

    sget-object p2, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->FLUSH:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    if-ne p4, p2, :cond_5

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_5
    :goto_2
    throw p1
.end method
