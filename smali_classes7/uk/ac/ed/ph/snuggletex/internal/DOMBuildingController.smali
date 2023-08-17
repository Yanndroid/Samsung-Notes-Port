.class public final Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    return-void
.end method


# virtual methods
.method public buildDOMSubtree(Lorg/w3c/dom/Element;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getDOMPostProcessors()[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "http://www.ph.ed.ac.uk/snuggletex"

    const-string v3, "root"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-direct {v3, v4, v2, v5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V

    invoke-virtual {v3, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildDOMSubtree(Ljava/util/List;)V

    const/4 p2, 0x0

    move v3, p2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v6}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    move-result-object v6

    invoke-interface {v4, v1, v5, v6}, Luk/ac/ed/ph/snuggletex/DOMPostProcessor;->postProcessDOM(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)Lorg/w3c/dom/Document;

    move-result-object v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    move-object v5, p1

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move v7, p2

    :goto_3
    if-ge v7, v6, :cond_2

    invoke-interface {v4, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    invoke-interface {v9, v8}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuildingController;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-direct {v0, v1, p1, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;-><init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V

    invoke-virtual {v0, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildDOMSubtree(Ljava/util/List;)V

    :cond_4
    return-void
.end method
