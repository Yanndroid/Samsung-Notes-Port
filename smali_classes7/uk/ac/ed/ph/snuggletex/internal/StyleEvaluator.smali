.class public final Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    return-void
.end method

.method private mergeStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;)Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
    .locals 2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    move-result-object v0

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    move-result-object p2

    new-instance v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    move-result-object p2

    :goto_1
    invoke-direct {v1, p1, v0, p2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;-><init>(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    return-object v1
.end method

.method private newStyleScope(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    move-result-object v1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;-><init>(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    return-object v0

    :cond_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v0, "currentStyle should not be null"

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private visitCommand(Luk/ac/ed/ph/snuggletex/tokens/CommandToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCombinerTarget()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :cond_2
    return-void
.end method

.method private visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 0

    invoke-virtual {p1, p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-void
.end method

.method private visitEnvironment(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getContentMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v0

    if-eq v0, v1, :cond_2

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->NORMAL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;-><init>(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    move-object p2, v0

    :cond_2
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-void
.end method

.method private visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 5
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

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    const/4 v3, 0x1

    new-array v3, v3, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v4, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_DECLARATION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    invoke-direct {p0, p2, v3}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->mergeStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;)Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v3

    instance-of v4, v2, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    if-eqz v4, :cond_1

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v4

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getArgumentCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object p2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    aget-object v2, v2, v0

    goto :goto_1

    :cond_1
    instance-of v4, v2, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    if-eqz v4, :cond_2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "Unexpected logic branch"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v2, p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    sget-object v3, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled/unexpected TokenType "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->newStyleScope(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_2

    :pswitch_1
    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-direct {p0, v2, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitEnvironment(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    goto :goto_2

    :pswitch_2
    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-direct {p0, v2, p2}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitCommand(Luk/ac/ed/ph/snuggletex/tokens/CommandToken;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    :goto_2
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    nop

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
.method public evaluateStyles(Luk/ac/ed/ph/snuggletex/tokens/RootToken;)V
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->DEFAULT_STYLE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/StyleEvaluator;->visitSiblings(Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-void
.end method
