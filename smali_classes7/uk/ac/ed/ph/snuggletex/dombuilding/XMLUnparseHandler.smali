.class public final Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handle(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    new-instance p3, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-direct {p3}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;-><init>()V

    invoke-interface {p3, p4}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setIndenting(Z)V

    const-string v1, "UTF-8"

    invoke-interface {p3, v1}, Luk/ac/ed/ph/snuggletex/SerializationSpecifier;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getSessionContext()Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    move-result-object v1

    invoke-interface {v1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    move-result-object v1

    invoke-static {v1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->serializeNodeChildren(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Lorg/w3c/dom/Node;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-string p4, "pre"

    goto :goto_1

    :cond_1
    const-string p4, "span"

    :goto_1
    invoke-virtual {p1, p2, p4, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string p2, "class"

    const-string p3, "unparsed-xml"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-direct {p0, p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;->handle(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    return-void
.end method

.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;->handle(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    return-void
.end method
