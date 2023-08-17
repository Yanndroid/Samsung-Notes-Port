.class public final Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;


# instance fields
.field private final closer:Ljava/lang/String;

.field private final maxColumns:I

.field private final opener:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->maxColumns:I

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->opener:Ljava/lang/String;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->closer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 10

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->opener:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "mfenced"

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->opener:Ljava/lang/String;

    const-string v1, "open"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->closer:Ljava/lang/String;

    const-string v1, "close"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/dombuilding/TabularHandler;->computeTableDimensions(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const-string v2, "mtable"

    invoke-virtual {p1, p2, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    const-string v4, "mtr"

    invoke-virtual {p1, p2, v4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->maxColumns:I

    if-lez v8, :cond_2

    if-le v7, v8, :cond_2

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEMM0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v8

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    iget v6, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;->maxColumns:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    invoke-virtual {p1, v4, v3, v5, v7}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_1
    const-string v8, "mtd"

    if-ge v3, v0, :cond_3

    if-ge v3, v7, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {p1, v4, v8}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    check-cast v9, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v9}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v9}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p1, v8, v9, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sub-int v3, v0, v7

    if-ge v6, v3, :cond_1

    invoke-virtual {p1, v4, v8}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
