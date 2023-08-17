.class public final Luk/ac/ed/ph/snuggletex/SnuggleSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;
    }
.end annotation


# instance fields
.field private final configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

.field public final defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

.field public final defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

.field private final engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/InputError;",
            ">;"
        }
    .end annotation
.end field

.field private final packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

.field private final parsedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final styleEvaluator:Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;

.field private final styleRebuilder:Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;

.field private final tokenFixer:Luk/ac/ed/ph/snuggletex/internal/TokenFixer;

.field private final tokeniser:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

.field private final userCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final userEnvironmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnuggleEngine;Luk/ac/ed/ph/snuggletex/SessionConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/SnugglePackage;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->getDefaultDOMOutputOptions()Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->getDefaultXMLStringOutputOptions()Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    move-result-object p1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

    invoke-direct {p1, p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokeniser:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;

    invoke-direct {p1, p0}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->styleEvaluator:Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;

    invoke-direct {p1, p0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokenFixer:Luk/ac/ed/ph/snuggletex/internal/TokenFixer;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;

    invoke-direct {p1, p0}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->styleRebuilder:Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->errors:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userCommandMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userEnvironmentMap:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokeniser:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->styleEvaluator:Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokenFixer:Luk/ac/ed/ph/snuggletex/internal/TokenFixer;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->styleRebuilder:Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->errors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->errors:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->userCommandMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userCommandMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->userEnvironmentMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userEnvironmentMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->parsedTokens:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildDOMSubtree()Lorg/w3c/dom/NodeList;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildDOMSubtree(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public buildDOMSubtree(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Lorg/w3c/dom/NodeList;
    .locals 3

    const-string v0, "DOMOutputOptions"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://www.ph.ed.ac.uk/snuggletex"

    const-string v2, "root"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildDOMSubtree(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public buildDOMSubtree(Lorg/w3c/dom/Element;)Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildDOMSubtree(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Z

    move-result p1

    return p1
.end method

.method public buildDOMSubtree(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Z
    .locals 1

    const-string v0, "targetRoot"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;

    invoke-direct {v0, p0, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->buildDOMSubtree(Lorg/w3c/dom/Element;Ljava/util/List;)V
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public buildWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)Lorg/w3c/dom/Document;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;

    invoke-direct {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->buildWebPage(Ljava/util/List;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildWebPageString(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)Ljava/lang/String;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;

    invoke-direct {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->buildWebPageString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildXMLString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString(Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildXMLString(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildXMLString(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Z)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "root"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildDOMSubtree(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-direct {p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;-><init>()V

    const-string v0, "UTF-8"

    invoke-interface {p1, v0}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setEncoding(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setIndenting(Z)V

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    move-result-object p2

    invoke-static {p2, v1, p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNodeChildren(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildXMLString(Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;)Ljava/lang/String;
    .locals 2

    const-string v0, "XMLStringOutputOptions"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "root"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildDOMSubtree(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    move-result-object v0

    invoke-static {v0, v1, p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNodeChildren(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildXMLString(Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createSnapshot()Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;
    .locals 11

    new-instance v10, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->errors:Ljava/util/List;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/HashMap;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userCommandMap:Ljava/util/Map;

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v8, Ljava/util/HashMap;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userEnvironmentMap:Ljava/util/Map;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleEngine;[Luk/ac/ed/ph/snuggletex/SnugglePackage;Luk/ac/ed/ph/snuggletex/SessionConfiguration;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-object v10
.end method

.method public createWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 4

    const-string v0, "texName"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 4

    const-string v0, "texName"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public getConfiguration()Luk/ac/ed/ph/snuggletex/SessionConfiguration;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/InputError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getMathCharacter(I)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 4

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getMathCharacter(I)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public getParsedTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    return-object v0
.end method

.method public getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    move-result-object v0

    return-object v0
.end method

.method public getUserCommandMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userCommandMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUserEnvironmentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userEnvironmentMap:Ljava/util/Map;

    return-object v0
.end method

.method public parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z
    .locals 1

    const-string v0, "snuggleInput"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;

    invoke-direct {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/SnuggleInput;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokeniser:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokenise(Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;)Luk/ac/ed/ph/snuggletex/tokens/RootToken;

    move-result-object p1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->styleEvaluator:Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->evaluateStyles(Luk/ac/ed/ph/snuggletex/tokens/RootToken;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokenFixer:Luk/ac/ed/ph/snuggletex/internal/TokenFixer;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixTokenTree(Luk/ac/ed/ph/snuggletex/tokens/RootToken;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->styleRebuilder:Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->rebuildStyles(Luk/ac/ed/ph/snuggletex/tokens/RootToken;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerError(Luk/ac/ed/ph/snuggletex/InputError;)V
    .locals 1

    const-string v0, "InputError"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->isFailingFast()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException;

    invoke-direct {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException;-><init>(Luk/ac/ed/ph/snuggletex/InputError;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userCommandMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->userEnvironmentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->tokeniser:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reset()V

    return-void
.end method

.method public setWebPageContentType(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentTypeSettable"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;

    invoke-direct {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)V

    invoke-virtual {v0, p2}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->setWebPageContentType(Ljava/lang/Object;)V

    return-void
.end method

.method public writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/io/OutputStream;)Z
    .locals 2

    sget-object v0, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->CLOSE:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/lang/Object;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)Z

    move-result p1

    return p1
.end method

.method public writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/lang/Object;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)Z

    move-result p1

    return p1
.end method

.method public writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;->CLOSE:Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;

    invoke-virtual {p0, p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/lang/Object;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)Z

    move-result p1

    return p1
.end method

.method public writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/lang/Object;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)Z
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p3, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endOutputAction"

    invoke-static {p4, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;

    invoke-direct {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parsedTokens:Ljava/util/List;

    invoke-virtual {v0, p1, p2, p3, p4}, Luk/ac/ed/ph/snuggletex/internal/WebPageBuilder;->writeWebPage(Ljava/util/List;Ljava/lang/Object;Ljava/io/OutputStream;Luk/ac/ed/ph/snuggletex/SnuggleSession$EndOutputAction;)V
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/internal/SnuggleParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
