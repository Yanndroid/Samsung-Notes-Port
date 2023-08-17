.class public final Luk/ac/ed/ph/snuggletex/internal/TokenFixer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    return-void
.end method

.method private buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;",
            "Ljava/util/List<",
            "+",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;",
            ")",
            "Luk/ac/ed/ph/snuggletex/tokens/CommandToken;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v0

    invoke-static {p1, v0, p4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createEmptyContainer(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v0

    invoke-static {p1, v0, p3, p4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    :goto_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v3

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    new-array v7, v2, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    aput-object p1, v7, v1

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    invoke-virtual {v0, p4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    invoke-interface {p3}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method private varargs createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 2

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/InputError;

    invoke-direct {v1, p2, v0, p3}, Luk/ac/ed/ph/snuggletex/InputError;-><init>(Luk/ac/ed/ph/snuggletex/ErrorCode;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;[Ljava/lang/Object;)V

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {p2, v1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->registerError(Luk/ac/ed/ph/snuggletex/InputError;)V

    new-instance p2, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;-><init>(Luk/ac/ed/ph/snuggletex/InputError;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object p1

    invoke-virtual {p2, p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    return-object p2
.end method

.method private fencePairedParentheses(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RIGHT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v5, v6}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEM03:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6, v7}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceToken(Ljava/util/List;ILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto/16 :goto_4

    :cond_0
    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LEFT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v5, v6}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    const/4 v8, 0x0

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x1

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v13, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LEFT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v12, v13}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    sget-object v13, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RIGHT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v12, v13}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_2

    move-object v8, v12

    check-cast v8, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    :goto_3
    if-nez v8, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEM04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6, v3}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v3

    invoke-direct {v0, v2, v4, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v5

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v11

    invoke-virtual {v5, v11}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v13

    new-instance v5, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    sget-object v14, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/16 v16, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCombinerTarget()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v12

    invoke-virtual {v12}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v10

    invoke-static {v1, v14, v12, v10}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v10

    aput-object v10, v11, v3

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCombinerTarget()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v10

    invoke-virtual {v10}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v8

    invoke-static {v1, v14, v10, v8}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v11, v10

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v7

    invoke-static {v1, v14, v6, v7}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v18

    move-object v12, v5

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v18}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/2addr v9, v10

    invoke-direct {v0, v2, v4, v9, v5}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method private fixLeadingNegativeNumber(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    new-array v5, v3, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v6, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v6, v5, v0

    invoke-virtual {v4, v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object v6

    check-cast v6, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;->getNumber()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    invoke-virtual {v6, v4}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v7

    sget-object v8, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v3, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    new-instance v2, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;

    invoke-direct {v2, v5}, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;-><init>(Ljava/lang/CharSequence;)V

    aput-object v2, v11, v0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    invoke-direct {p0, p1, v0, v1, v12}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :cond_1
    return-void
.end method

.method private fixListEnvironmentContent(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 10

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v7, v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v5, :cond_0

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LIST_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v5

    invoke-direct {p0, p1, v8, v1, v5}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-object v5, v7

    goto :goto_1

    :cond_1
    if-nez v5, :cond_4

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v8, v9, :cond_2

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v8

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->isWhitespace()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_2
    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEL00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LIST_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v4

    invoke-direct {p0, p1, v3, v1, v4}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private fixOverInstances(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_OVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v4, v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v3, v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEM00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p2, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v3

    new-instance v11, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_FRAC:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v9, 0x0

    const/4 v5, 0x2

    new-array v10, v5, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-static {p1, v7, v0, v3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    aput-object v0, v10, v1

    invoke-static {p1, v7, v2, v3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    aput-object p1, v10, v4

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p2, v1, p1, v11}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :cond_3
    return-void
.end method

.method private fixPrimes(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v7

    invoke-virtual {v6, v7}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v9

    new-instance v6, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUP_OR_MOVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v12, 0x0

    const/4 v7, 0x2

    new-array v13, v7, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-static {v10, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v5

    aput-object v5, v13, v0

    invoke-static {v10, v4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v4

    aput-object v4, v13, v3

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/lit8 v3, v1, 0x2

    invoke-direct {p0, p1, v1, v3, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fixSubscriptAndSuperscripts(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result v6

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    const/16 v10, 0x5f

    if-nez v9, :cond_2

    if-ne v6, v10, :cond_1

    goto :goto_2

    :cond_1
    move v11, v2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v11, 0x1

    :goto_3
    if-nez v11, :cond_3

    :goto_4
    move v7, v2

    goto/16 :goto_c

    :cond_3
    add-int/lit8 v11, v4, -0x1

    if-ne v3, v11, :cond_4

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEM01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-direct {v0, v5, v4, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceToken(Ljava/util/List;ILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_4

    :cond_4
    if-nez v3, :cond_5

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-static {v13, v11, v12}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createEmptyContainer(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v11

    move-object v12, v5

    move-object v14, v11

    move v11, v3

    goto :goto_5

    :cond_5
    move-object/from16 v13, p1

    add-int/lit8 v11, v3, -0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v14, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v14, v12}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v14

    :goto_5
    add-int/lit8 v15, v3, 0x1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v8, v15}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v17

    add-int/lit8 v2, v3, 0x2

    const/16 v18, 0x0

    if-ge v2, v4, :cond_b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual/range {v19 .. v19}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result v13

    if-eq v13, v10, :cond_6

    if-ne v13, v7, :cond_b

    :cond_6
    add-int/lit8 v10, v3, 0x3

    if-lt v10, v4, :cond_7

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEM01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-direct {v0, v5, v2, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v2

    :goto_6
    invoke-direct {v0, v1, v11, v10, v2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :goto_7
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_7
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-static {v8, v4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v18

    if-ne v6, v7, :cond_8

    if-eq v13, v7, :cond_9

    :cond_8
    const/16 v7, 0x5f

    if-ne v6, v7, :cond_a

    if-ne v13, v7, :cond_a

    :cond_9
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEM02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-direct {v0, v5, v2, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object/from16 v22, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v22

    goto :goto_8

    :cond_b
    move-object/from16 v4, v18

    :goto_8
    const/4 v5, 0x2

    if-eqz v18, :cond_e

    invoke-virtual {v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    invoke-virtual {v2, v6}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    sget-object v19, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUBSUP_OR_MUNDEROVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    const/16 v20, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    const/4 v10, 0x0

    aput-object v14, v7, v10

    if-eqz v9, :cond_c

    move-object v10, v4

    goto :goto_9

    :cond_c
    move-object/from16 v10, v17

    :goto_9
    const/4 v12, 0x1

    aput-object v10, v7, v12

    if-eqz v9, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v17, v4

    :goto_a
    aput-object v17, v7, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/lit8 v2, v3, 0x4

    invoke-direct {v0, v1, v11, v2, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    invoke-virtual {v15}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    invoke-virtual {v4, v6}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    if-eqz v9, :cond_f

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUP_OR_MOVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    goto :goto_b

    :cond_f
    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUB_OR_MUNDER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    :goto_b
    move-object/from16 v19, v6

    new-instance v6, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    const/16 v20, 0x0

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    const/4 v7, 0x0

    aput-object v14, v5, v7

    const/4 v9, 0x1

    aput-object v17, v5, v9

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    invoke-direct {v0, v1, v11, v2, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move v2, v7

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private fixTabularEnvironmentContent(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_CHAR_BACKSLASH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v4, v6}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    move-object v9, v5

    move-object v10, v9

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_c

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    if-nez v9, :cond_3

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v9

    goto :goto_2

    :cond_1
    if-lez v8, :cond_2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v9}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v9

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v9

    :cond_3
    :goto_2
    if-eqz v11, :cond_a

    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_CHAR_BACKSLASH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v11, v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v12

    sget-object v13, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v12, v13, :cond_5

    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v12

    invoke-virtual {v12}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->isWhitespace()Z

    move-result v12

    if-eqz v12, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v10

    sget-object v12, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v10, v12, :cond_6

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_COLUMN:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-direct {p0, p1, v10, v2, v9}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v5

    goto :goto_5

    :cond_6
    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v11, v10}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFETB0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-direct {p0, v10, v12, v13}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFETB0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-direct {p0, v10, v12, v13}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_8
    :goto_3
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    :goto_4
    if-nez v11, :cond_b

    if-eqz v10, :cond_b

    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v10, v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_COLUMN:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-direct {p0, p1, v10, v2, v9}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_ROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v12}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v12

    invoke-direct {p0, p1, v10, v1, v12}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object v10, v11

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private flattenBraceContainers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v2, v3, :cond_0

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private inferParagraphs(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v3, v6, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-eq v8, v9, :cond_4

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v6, v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v8, v9, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/Token;

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v9}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v9

    invoke-direct {p0, v4, v8, v0, v9}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v7

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->IGNORE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v7, v8, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v8

    invoke-direct {p0, v6, v4, v0, v8}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_5
    :goto_2
    move v4, v7

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/Token;

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v6

    invoke-direct {p0, v3, v4, v0, v6}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->buildGroupedCommandToken(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-le v5, v7, :cond_9

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v1, v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method

.method private inferParenthesisFences(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    const/4 v6, 0x1

    new-array v7, v6, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v8, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v8, v7, v3

    invoke-virtual {v5, v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v5, v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object v7

    check-cast v7, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->isPairingInferencePossible()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->getBracketType()Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const/4 v10, 0x2

    if-ne v8, v9, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v7

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v8

    invoke-virtual {v7, v8}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v12

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    sget-object v13, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v14, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v15, 0x0

    new-array v9, v10, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v10}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v10

    invoke-static {v1, v13, v10}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createEmptyContainer(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v13, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v5

    aput-object v5, v9, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v5

    invoke-static {v1, v13, v7, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v17

    move-object v11, v8

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v17}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v2, v3, v4, v8}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    move v4, v3

    goto/16 :goto_4

    :cond_2
    sget-object v9, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->OPENER_OR_CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    if-ne v8, v9, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v11, -0x1

    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v12, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v4, 0x1

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    new-array v14, v6, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v15, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v15, v14, v3

    invoke-virtual {v13, v14}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13, v15}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object v14

    check-cast v14, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;

    invoke-virtual {v14}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->getBracketType()Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    move-result-object v15

    sget-object v16, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$semantics$MathBracketInterpretation$BracketType:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v16, v15

    if-eq v15, v6, :cond_5

    const/4 v14, 0x3

    if-eq v15, v14, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/util/Stack;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    move v11, v7

    move-object v9, v13

    goto :goto_3

    :cond_5
    invoke-virtual {v12, v14}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v7

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v12

    invoke-virtual {v7, v12}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v14

    new-instance v7, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v16, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/16 v17, 0x0

    new-array v10, v10, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-static {v15, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v12

    aput-object v12, v10, v3

    invoke-static {v15, v9}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v9

    aput-object v9, v10, v6

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v5

    invoke-static {v1, v15, v8, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v19

    move-object v13, v7

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v19}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/2addr v11, v6

    invoke-direct {v0, v2, v4, v11, v7}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_4

    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v9}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v9

    invoke-virtual {v7, v9}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v12

    new-instance v7, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    sget-object v13, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v14, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v15, 0x0

    new-array v9, v10, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-static {v13, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v10

    invoke-static {v1, v13, v10}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createEmptyContainer(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v5

    invoke-static {v1, v13, v8, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromContiguousTokens(Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v17

    move-object v11, v7

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v17}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v2, v4, v5, v7}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :goto_4
    add-int/2addr v4, v6

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private replaceToken(Ljava/util/List;ILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;I",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v0

    invoke-virtual {p3, v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private replaceTokens(Ljava/util/List;IILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;II",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceToken(Ljava/util/List;ILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    add-int/lit8 p2, p2, 0x1

    if-le p3, p2, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private stripBlocks(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
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

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-eq v3, v4, :cond_2

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v2, v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v3, v4, :cond_3

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TFEG00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v5

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-direct {p0, v2, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->createError(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceToken(Ljava/util/List;ILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v9, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->LR_MODE_NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->LR:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->ALLOW_INLINE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    new-array v8, v0, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    invoke-direct {p0, p1, v1, v9}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->replaceToken(Ljava/util/List;ILuk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private stripRedundantWhitespaceTokens(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->isWhitespace()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v4

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_5

    add-int/lit8 v5, v1, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v5

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v5, v6, :cond_4

    goto :goto_4

    :cond_4
    move v3, v0

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->isWhitespace()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private visitChildren(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitToken(Luk/ac/ed/ph/snuggletex/tokens/Token;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private visitCommand(Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 3

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitSiblings(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    return-void
.end method

.method private visitEnvironment(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->LIST:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->hasInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixListEnvironmentContent(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V

    goto :goto_0

    :cond_0
    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->TABULAR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->hasInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixTabularEnvironmentContent(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V

    :cond_1
    :goto_0
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    :cond_2
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method private visitSiblings(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p2, 0x4

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitSiblingsMathMode(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitSiblingsLRMode(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitSiblingsParagraphMode(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private visitSiblingsLRMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->flattenBraceContainers(Ljava/util/List;)V

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->stripBlocks(Ljava/util/List;)V

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitChildren(Ljava/util/List;)V

    return-void
.end method

.method private visitSiblingsMathMode(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/tokens/Token;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->COMMAND:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v2, v3, :cond_2

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_ROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-eq v1, v2, :cond_1

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_COLUMN:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixLeadingNegativeNumber(Ljava/util/List;)V

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fencePairedParentheses(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixOverInstances(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->inferParenthesisFences(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixSubscriptAndSuperscripts(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    invoke-direct {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->fixPrimes(Ljava/util/List;)V

    :cond_3
    invoke-direct {p0, p2}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitChildren(Ljava/util/List;)V

    return-void
.end method

.method private visitSiblingsParagraphMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->flattenBraceContainers(Ljava/util/List;)V

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->stripRedundantWhitespaceTokens(Ljava/util/List;)V

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->inferParagraphs(Ljava/util/List;)V

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitChildren(Ljava/util/List;)V

    return-void
.end method

.method private visitToken(Luk/ac/ed/ph/snuggletex/tokens/Token;)V
    .locals 3

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled/unexpected TokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unfixed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitSiblings(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitEnvironment(Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitCommand(Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitContainerContent(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fixTokenTree(Luk/ac/ed/ph/snuggletex/tokens/RootToken;)V
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/RootToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/TokenFixer;->visitSiblings(Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/util/List;)V

    return-void
.end method
