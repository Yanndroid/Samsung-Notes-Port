.class public abstract Luk/ac/ed/ph/snuggletex/dombuilding/AbstractCustomXMLElementHandler;
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

.method private extractAttributes(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 4

    invoke-virtual {p4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_XML_ATTR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v2, v0}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v1

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v1

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v1, v3, :cond_2

    move-object v1, v0

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEX00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public buildCustomElement(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 2

    invoke-virtual {p1, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p4, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->validateURI(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/net/URI;

    invoke-virtual {p1, p5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object p4

    :try_start_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0, p4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p4
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p4, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/AbstractCustomXMLElementHandler;->extractAttributes(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    :cond_0
    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/dombuilding/AbstractCustomXMLElementHandler;->isBlock()Z

    move-result p2

    invoke-virtual {p1, p4, p6, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    return-void

    :catch_0
    move-exception p3

    iget-short p6, p3, Lorg/w3c/dom/DOMException;->code:S

    const/4 v0, 0x5

    if-eq p6, v0, :cond_2

    const/16 v0, 0xe

    if-ne p6, v0, :cond_1

    goto :goto_0

    :cond_1
    throw p3

    :cond_2
    :goto_0
    sget-object p3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEX01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 p6, 0x1

    new-array p6, p6, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p6, v0

    invoke-virtual {p1, p2, p5, p3, p6}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method

.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 7

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x2

    aget-object v6, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Luk/ac/ed/ph/snuggletex/dombuilding/AbstractCustomXMLElementHandler;->buildCustomElement(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 7

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Luk/ac/ed/ph/snuggletex/dombuilding/AbstractCustomXMLElementHandler;->buildCustomElement(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method public abstract isBlock()Z
.end method
