.class public final Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter$CSSPropertiesURIResolver;
    }
.end annotation


# instance fields
.field private final cssProperties:Ljava/util/Properties;

.field private final stylesheetManager:Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    invoke-direct {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Ljava/util/Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    invoke-direct {p1}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;-><init>()V

    :goto_0
    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;->stylesheetManager:Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;->cssProperties:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isInliningCSS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readInlineCSSProperties(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Ljava/util/Properties;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Ljava/util/Properties;)V

    return-void
.end method


# virtual methods
.method public buildCSSPropertiesDocument(Lorg/w3c/dom/Document;Ljava/util/Properties;)V
    .locals 6

    const-string v0, "http://www.ph.ed.ac.uk/snuggletex"

    const-string v1, "properties"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "property"

    invoke-interface {p1, v0, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v3, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "value"

    invoke-interface {v3, v4, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public downConvertDOM(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 3

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;->cssProperties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;->buildCSSPropertiesDocument(Lorg/w3c/dom/Document;Ljava/util/Properties;)V

    :cond_0
    new-instance v1, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter$CSSPropertiesURIResolver;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter$CSSPropertiesURIResolver;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;->stylesheetManager:Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    const-string v2, "classpath:/uk/ac/ed/ph/snuggletex/mathml-to-xhtml.xsl"

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;->getCompiledStylesheet(Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v0

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {p1, v2}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v1, "Unexpected Exception down-converting DOM"

    invoke-direct {v0, v1, p1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
