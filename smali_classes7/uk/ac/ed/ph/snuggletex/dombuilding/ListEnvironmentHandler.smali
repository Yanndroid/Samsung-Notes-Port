.class public final Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;
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

.method private handleListContent(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;",
            "Lorg/w3c/dom/Element;",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LIST_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-direct {p0, p1, p3, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;->handleListItem(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v1

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_0

    :cond_1
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "List environments can only contain list items - this should have been handled earlier"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private handleListItem(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 1

    const-string v0, "li"

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 2

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LIST_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {p3, v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {p3, v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEL00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "List item outside environment - this should not have occurred"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 2

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_ITEMIZE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "ul"

    goto :goto_0

    :cond_0
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_ENUMERATE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    if-ne v0, v1, :cond_1

    const-string v0, "ol"

    :goto_0
    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;->handleListContent(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No logic to handle list environment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
