.class public final Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    return-void
.end method

.method private createStyleEnvironmentToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Ljava/util/List;)Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)",
            "Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;"
        }
    .end annotation

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v1

    invoke-static {p1, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->createStyleEnvironmentToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    move-result-object p1

    return-object p1
.end method

.method private createStyleEnvironmentToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;
    .locals 3

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object p1

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_STYLE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    invoke-direct {v0, v1, p1, v2, p2}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-object v0
.end method

.method private visitArgumentContainer(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 4

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p3}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :goto_0
    return-void
.end method

.method private visitCommand(Luk/ac/ed/ph/snuggletex/tokens/CommandToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitArgumentContainer(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, p1, v3, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitArgumentContainer(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitEnvironment(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitArgumentContainer(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, p1, v3, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitArgumentContainer(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitArgumentContainer(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-void
.end method

.method private visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v2, p2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    const/4 v4, 0x1

    new-array v5, v4, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v6, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v6, v5, v0

    invoke-virtual {v3, v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v3, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v5

    invoke-virtual {v5, v2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->isEquivalentTo(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v1, 0x1

    move v6, v5

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    new-array v8, v4, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v9, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v9, v8, v0

    invoke-virtual {v7, v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v8

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->isEquivalentTo(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->createStyleEnvironmentToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Ljava/util/List;)Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    instance-of p2, p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_4
    return-void
.end method

.method private visitToken(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 2

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled/unexpected TokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitEnvironment(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitCommand(Luk/ac/ed/ph/snuggletex/tokens/CommandToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public rebuildStyles(Luk/ac/ed/ph/snuggletex/tokens/RootToken;)V
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/StyleRebuilder;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-void
.end method
