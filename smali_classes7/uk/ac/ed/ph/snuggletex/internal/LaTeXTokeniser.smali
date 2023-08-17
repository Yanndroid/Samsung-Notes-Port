.class public final Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;,
        Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;
    }
.end annotation


# static fields
.field private static final UDE_POST_BEGIN:Ljava/lang/String; = "\u0000"

.field public static final reservedCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

.field private final modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack<",
            "Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;",
            ">;"
        }
    .end annotation
.end field

.field private final numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;

.field private final openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

.field private startTokenIndex:I

.field private workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "begin"

    const-string v2, "end"

    const-string v3, "("

    const-string v4, ")"

    const-string v5, "["

    const-string v6, "]"

    const-string v7, "newcommand"

    const-string v8, "renewcommand"

    const-string v9, "newenvironment"

    const-string v10, "renewenvironment"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reservedCommands:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;-><init>()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;-><init>()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getConfiguration()Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->getNumberMatcher()Luk/ac/ed/ph/snuggletex/NumberMatcher;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Luk/ac/ed/ph/snuggletex/SimpleNumberMatcher;

    invoke-direct {p1}, Luk/ac/ed/ph/snuggletex/SimpleNumberMatcher;-><init>()V

    :cond_0
    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;

    return-void
.end method

.method private advanceOverBracesAndEnvironmentName()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readCommandOrEnvironmentName(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v2

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    return-object v0
.end method

.method private advanceOverBuiltinCommandOrEnvironmentArguments(Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getArgumentCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->isAllowingOptionalArgument()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v4, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->EMPTY_ARRAY:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iput-object v1, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v4

    :cond_0
    invoke-direct/range {p0 .. p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    invoke-interface/range {p1 .. p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->isAllowingOptionalArgument()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v1, v5}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getArgumentMode(I)Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v3, v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    :cond_1
    iget-object v7, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v8, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v7, v8}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_3

    iget v7, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v7, v6

    iput v7, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sget-object v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_COMMAND_ARGUMENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v9, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;

    const-string v10, "]"

    invoke-direct {v9, v10}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8, v9, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v8

    iget-boolean v9, v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    if-eqz v9, :cond_2

    iget v9, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sub-int/2addr v9, v6

    goto :goto_0

    :cond_2
    iget v9, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    :goto_0
    iget-object v10, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v10, v7, v9}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v7

    new-instance v9, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v8, v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v9, v7, v3, v8}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    move-object v9, v4

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_4
    move-object v9, v4

    move v3, v5

    :goto_2
    invoke-interface/range {p1 .. p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getArgumentCount()I

    move-result v7

    new-array v8, v7, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    new-array v10, v7, [Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move v11, v5

    :goto_3
    if-ge v11, v7, :cond_b

    invoke-direct/range {p0 .. p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    add-int/lit8 v12, v3, 0x1

    invoke-interface {v1, v3}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getArgumentMode(I)Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v3, v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    :cond_5
    iget-object v13, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v14, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v13, v14}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v13

    const/16 v14, 0x7b

    if-ne v13, v14, :cond_7

    iget v13, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v13, v6

    iput v13, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sget-object v14, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_COMMAND_ARGUMENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v15, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;

    const-string v4, "}"

    invoke-direct {v15, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v14, v15, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v4

    iget-boolean v14, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    if-eqz v14, :cond_6

    iget v14, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sub-int/2addr v14, v6

    goto :goto_4

    :cond_6
    iget v14, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    :goto_4
    iget-object v15, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v15, v13, v14}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v13

    aput-object v13, v10, v11

    new-instance v13, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    aget-object v14, v10, v11

    iget-object v4, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v13, v14, v3, v4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    aput-object v13, v8, v11

    goto :goto_5

    :cond_7
    const/4 v4, -0x1

    const/4 v14, 0x2

    if-eq v13, v4, :cond_9

    if-nez v11, :cond_9

    if-ne v7, v6, :cond_9

    if-nez v9, :cond_9

    instance-of v4, v1, Luk/ac/ed/ph/snuggletex/definitions/Command;

    if-eqz v4, :cond_9

    iget-object v4, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v13, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    iput-object v3, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct/range {p0 .. p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v4

    iget-object v15, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iput-object v13, v15, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-eqz v4, :cond_8

    invoke-static {v3, v4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    aput-object v3, v8, v11

    aget-object v3, v8, v11

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v3

    aput-object v3, v10, v11

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move v3, v12

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v3, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v4, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v7, v14, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    invoke-direct {v0, v2, v3, v4, v7}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    return-object v1

    :cond_9
    instance-of v2, v1, Luk/ac/ed/ph/snuggletex/definitions/Command;

    if-eqz v2, :cond_a

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    goto :goto_6

    :cond_a
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE06:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    :goto_6
    iget v3, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v4, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v7, v14, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    add-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    invoke-direct {v0, v2, v3, v4, v7}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    return-object v1

    :cond_b
    iput-object v9, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iput-object v8, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    const/4 v1, 0x0

    return-object v1
.end method

.method private advanceOverUserDefinedCommandOrEnvironmentArgumentDefinition(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 9

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/16 v1, 0x5b

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndSquareBrackets(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC9:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v6, v4, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v7, v6, :cond_4

    const/16 v8, 0x9

    if-le v7, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    add-int/lit8 v7, v7, -0x1

    iget p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndSquareBrackets(I)I

    move-result p1

    if-ne p1, v5, :cond_2

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC9:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr p1, v6

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    move v3, v7

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC7:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v6

    invoke-direct {p0, p2, v1, v2, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC7:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v6

    invoke-direct {p0, p2, v1, v2, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_5
    move-object v0, v2

    :goto_2
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iput-object v0, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->optionalArgument:Ljava/lang/String;

    iput v3, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->requiredArgumentCount:I

    return-object v2
.end method

.method private advanceOverUserDefinedCommandOrEnvironmentArguments(Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 11

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getArgumentCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->isAllowingOptionalArgument()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Ljava/lang/CharSequence;

    new-array p1, v2, [Ljava/lang/CharSequence;

    iput-object p1, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Ljava/lang/CharSequence;

    return-object v1

    :cond_0
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->isAllowingOptionalArgument()Z

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/16 v5, 0x5b

    if-ne v0, v5, :cond_2

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndSquareBrackets(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    add-int/2addr v0, v4

    invoke-virtual {v6, v0, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object v0

    add-int/2addr v5, v4

    iput v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getArgumentCount()I

    move-result v5

    new-array v6, v5, [Ljava/lang/CharSequence;

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_8

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v8, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v9, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v8, v9}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v8

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_4

    iget v8, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, v8}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndCurlyBrackets(I)I

    move-result v9

    if-ne v9, v3, :cond_3

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v3, 0x7d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v10, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v8, v9}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    goto :goto_2

    :cond_4
    const/4 v9, 0x2

    if-eq v8, v3, :cond_6

    if-nez v7, :cond_6

    if-ne v5, v4, :cond_6

    iget-object v8, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Ljava/lang/CharSequence;

    if-nez v8, :cond_6

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object p2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {p0, p2, v0, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v8

    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v8, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v9, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-virtual {v8, v9}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->unfreeze(I)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    instance-of p2, p1, Luk/ac/ed/ph/snuggletex/definitions/Command;

    if-eqz p2, :cond_7

    sget-object p2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    goto :goto_3

    :cond_7
    sget-object p2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE06:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    :goto_3
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {p0, p2, v0, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_8
    iput-object v0, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Ljava/lang/CharSequence;

    iput-object v6, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Ljava/lang/CharSequence;

    return-object v1
.end method

.method private checkDefinitionArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;Luk/ac/ed/ph/snuggletex/ErrorCode;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget v2, p3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->requiredArgumentCount:I

    iget-object p3, p3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->optionalArgument:Ljava/lang/String;

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    add-int/2addr v2, p3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->getDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    move-result-object p3

    iget v3, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    move v4, v1

    move v5, v4

    :goto_2
    iget v6, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ge v3, v6, :cond_8

    invoke-virtual {p3, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v6

    if-nez v5, :cond_2

    const/16 v9, 0x5c

    if-ne v6, v9, :cond_2

    move v5, v0

    goto :goto_4

    :cond_2
    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_4

    :cond_3
    const/16 v9, 0x23

    if-ne v6, v9, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    const/16 v4, 0x31

    if-lt v6, v4, :cond_6

    add-int/lit8 v4, v2, 0x30

    if-le v6, v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 p1, v3, -0x1

    new-array p3, v8, [Ljava/lang/Object;

    aput-object p2, p3, v1

    int-to-char p2, v6

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v7

    invoke-direct {p0, p4, p1, v3, p3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    if-eqz v4, :cond_9

    add-int/lit8 p3, v3, -0x1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p1, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    invoke-direct {p0, p4, p3, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method private varargs createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p2

    new-instance p3, Luk/ac/ed/ph/snuggletex/InputError;

    invoke-direct {p3, p1, p2, p4}, Luk/ac/ed/ph/snuggletex/InputError;-><init>(Luk/ac/ed/ph/snuggletex/ErrorCode;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;[Ljava/lang/Object;)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {p1, p3}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->registerError(Luk/ac/ed/ph/snuggletex/InputError;)V

    new-instance p1, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    if-eqz p2, :cond_0

    iget-object p2, p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    goto :goto_0

    :cond_0
    sget-object p2, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    :goto_0
    invoke-direct {p1, p3, p2}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;-><init>(Luk/ac/ed/ph/snuggletex/InputError;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)V

    return-object p1
.end method

.method private findEndCurlyBrackets(I)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v4

    if-ge p1, v4, :cond_6

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v4, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v1, :cond_0

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    move v2, v0

    goto :goto_1

    :cond_2
    const/16 v6, 0x25

    if-ne v4, v6, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_5

    return p1

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method private findEndSquareBrackets(I)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v3

    if-ge p1, v3, :cond_6

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/16 v5, 0xa

    if-ne v3, v5, :cond_5

    move v1, v0

    goto :goto_1

    :cond_0
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_1

    return p1

    :cond_1
    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    const/16 v5, 0x7b

    if-ne v3, v5, :cond_4

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndCurlyBrackets(I)I

    move-result p1

    goto :goto_1

    :cond_4
    const/16 v5, 0x25

    if-ne v3, v5, :cond_5

    move v1, v4

    :cond_5
    :goto_1
    add-int/2addr p1, v4

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method private finishBeginBuiltinEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 10

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v4, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getAllowedModes()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE03:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {p0, v1, v3, v5, v6}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;

    invoke-direct {v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;-><init>()V

    invoke-direct {p0, p1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverBuiltinCommandOrEnvironmentArguments(Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    move-object v1, v5

    :cond_1
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getContentMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v5, v5, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    :cond_2
    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne v5, v6, :cond_3

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\\\end\\s*\\{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\\}\\s*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_ENVIRONMENT_CONTENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v9, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;

    invoke-direct {v9, v7}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {p0, v8, v9, v6}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v6

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->computeLastTokenEndIndex()I

    move-result v7

    iget-object v8, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v8, v2, v7}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    new-instance v7, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v6, v6, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v7, v2, v5, v6}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sget-object v7, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_ENVIRONMENT_CONTENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    invoke-direct {p0, v7, v2, v5}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->computeLastTokenEndIndex()I

    move-result v7

    iget-object v8, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v8, v6, v7}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    new-instance v7, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v7, v6, v5, v2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    :goto_1
    move-object v8, v7

    if-eqz v1, :cond_4

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getErrors()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object p1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object p1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object v1

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/InputError;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v2, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v1, v0, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    iget-object v6, v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v7, v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-object v2, v1

    move-object v3, v0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-object v1
.end method

.method private finishBeginEnvironment()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 6

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverBracesAndEnvironmentName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v2}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getUserEnvironmentMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishBeginUserDefinedEnvironment(Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v2, v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishBeginBuiltinEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-direct {p0, v2, v3, v4, v5}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private finishBeginUserDefinedEnvironment(Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;-><init>()V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverUserDefinedCommandOrEnvironmentArguments(Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;->getBeginDefinitionSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->substituteArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\\u0000{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-direct {p0, v1, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->makeSubstitutionAndRewind(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    return-object p1
.end method

.method private finishBuiltinCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 6

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getAllowedModes()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v1, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v3, v4, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_NEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-eq p1, v0, :cond_7

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RENEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_NEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-eq p1, v0, :cond_6

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RENEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$CommandType:[I

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getType()Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishComplexCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected switch case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getType()Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishCombiningCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishSimpleCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishEnvironmentDefinition(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishCommandDefinition(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    return-object p1
.end method

.method private finishCombiningCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 5

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC03:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-direct {p0, v1, v2, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getCombinerTargetMatcher()Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;

    move-result-object v0

    invoke-interface {v0, v2}, Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;->isAllowed(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    iget v2, v2, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-direct {p0, v0, v1, v2, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    iget v4, v4, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    invoke-virtual {v3, v1, v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v3, v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v3, v2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->createFromSingleToken(Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v2

    invoke-direct {v0, v1, v3, p1, v2}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-object v0
.end method

.method private finishCommand(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 5

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getUserCommandMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishUserDefinedCommand(Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishBuiltinCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEC00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private finishCommandDefinition(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 8

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v3, 0x7b

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v0, v4

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v5, v6}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_2

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC1:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_2
    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v5, v4

    iput v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, v5}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readCommandOrEnvironmentName(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v6, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reservedCommands:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC8:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-direct {p0, p1, v0, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_4
    iget v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    if-eqz v0, :cond_6

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v6}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/16 v6, 0x7d

    if-eq v0, v6, :cond_5

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC6:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_5
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v0, v4

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    :cond_6
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;-><init>()V

    invoke-direct {p0, v5, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverUserDefinedCommandOrEnvironmentArgumentDefinition(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v6

    if-eqz v6, :cond_7

    return-object v6

    :cond_7
    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v7, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v6, v7}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v6

    if-eq v6, v3, :cond_8

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC3:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-direct {p0, p1, v0, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_8
    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndCurlyBrackets(I)I

    move-result v6

    if-ne v6, v1, :cond_9

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC2:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    add-int/2addr v3, v4

    invoke-virtual {v1, v3, v6}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUCA:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    invoke-direct {p0, v1, v5, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->checkDefinitionArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;Luk/ac/ed/ph/snuggletex/ErrorCode;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v3

    if-eqz v3, :cond_a

    return-object v3

    :cond_a
    new-instance v3, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;

    iget-object v6, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->optionalArgument:Ljava/lang/String;

    iget v0, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->requiredArgumentCount:I

    invoke-direct {v3, v5, v6, v0, v1}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getUserCommandMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RENEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-ne p1, v1, :cond_b

    move v1, v4

    goto :goto_1

    :cond_b
    move v1, v2

    :goto_1
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v6, v5}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v6

    if-eqz v6, :cond_c

    goto :goto_2

    :cond_c
    move v6, v2

    goto :goto_3

    :cond_d
    :goto_2
    move v6, v4

    :goto_3
    if-eqz v1, :cond_e

    if-nez v6, :cond_e

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC4:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-direct {p0, p1, v0, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_e
    if-nez v1, :cond_f

    if-eqz v6, :cond_f

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC5:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-direct {p0, p1, v0, v1, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {v0, v1, v2, p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)V

    return-object v0
.end method

.method private finishComplexCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 10

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;-><init>()V

    invoke-direct {p0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverBuiltinCommandOrEnvironmentArguments(Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v2, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v5

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v6, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    iget-object v8, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v9, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$BuiltinCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-object v0
.end method

.method private finishEndEnvironment()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 8

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverBracesAndEnvironmentName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    if-nez v2, :cond_2

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE05:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    aput-object v2, v7, v5

    invoke-direct {p0, v3, v4, v6, v7}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v2}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getUserEnvironmentMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishEndUserDefinedEnvironment(Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v2, v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-direct {p0, v2, v3, v4, v5}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method private finishEndUserDefinedEnvironment(Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 2

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;->getEndDefinitionSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->makeSubstitutionAndRewind(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private finishEnvironmentDefinition(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 11

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverBracesAndEnvironmentName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUE0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reservedCommands:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUC8:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-direct {p0, p1, v0, v2, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;-><init>()V

    invoke-direct {p0, v6, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverUserDefinedCommandOrEnvironmentArgumentDefinition(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    new-array v2, v1, [Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move v3, v7

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v4, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v4

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_4

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUE1:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v1, v1, [Ljava/lang/Object;

    if-nez v3, :cond_3

    const-string v3, "begin"

    goto :goto_1

    :cond_3
    const-string v3, "end"

    :goto_1
    aput-object v3, v1, v7

    aput-object v6, v1, v8

    invoke-direct {p0, p1, v0, v2, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_4
    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->findEndCurlyBrackets(I)I

    move-result v5

    add-int/lit8 v9, v5, 0x1

    iput v9, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    iget-object v9, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    add-int/2addr v4, v8

    invoke-virtual {v9, v4, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    aget-object v1, v2, v7

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUE5:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    invoke-direct {p0, v1, v6, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->checkDefinitionArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;Luk/ac/ed/ph/snuggletex/ErrorCode;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    if-nez v1, :cond_6

    aget-object v1, v2, v8

    const/4 v3, 0x0

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUE6:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    invoke-direct {p0, v1, v6, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->checkDefinitionArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Ljava/lang/String;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;Luk/ac/ed/ph/snuggletex/ErrorCode;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    new-instance v9, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;

    iget-object v3, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->optionalArgument:Ljava/lang/String;

    iget v4, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ArgumentDefinitionResult;->requiredArgumentCount:I

    aget-object v5, v2, v7

    aget-object v10, v2, v8

    move-object v0, v9

    move-object v1, v6

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getUserEnvironmentMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RENEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    if-ne p1, v1, :cond_8

    move v1, v8

    goto :goto_2

    :cond_8
    move v1, v7

    :goto_2
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v2, v6}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v7

    goto :goto_4

    :cond_a
    :goto_3
    move v2, v8

    :goto_4
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUE2:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v6, v2, v7

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_b
    if-nez v1, :cond_c

    if-eqz v2, :cond_c

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEUE3:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v6, v2, v7

    invoke-direct {p0, p1, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {v0, v1, v2, p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)V

    return-object v0
.end method

.method private finishSimpleCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    move v3, v2

    :cond_3
    if-nez v3, :cond_4

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverTrailingWhitespace()V

    :cond_4
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {v0, v1, v2, p1}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)V

    return-object v0
.end method

.method private finishUserDefinedCommand(Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;-><init>()V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverUserDefinedCommandOrEnvironmentArguments(Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;->getDefinitionSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->substituteArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-direct {p0, v1, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->makeSubstitutionAndRewind(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private finishVerbToken(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 13

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEV00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEV00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    add-int/2addr v0, v5

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_1
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v0, v5

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_COMMAND_ARGUMENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;-><init>(Ljava/lang/String;)V

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {p0, v0, v4, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v0

    iget-object v0, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v8, v9, :cond_2

    if-nez v1, :cond_2

    check-cast v7, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    move-object v1, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v6

    sget-object v8, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-ne v6, v8, :cond_4

    move-object v6, v7

    check-cast v6, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object v6

    invoke-virtual {v6}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v6

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    if-ne v6, v8, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error when parsing \\verb content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token when examining \\verb content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v7, v1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    const/16 v8, 0xa

    invoke-virtual {v4, v7, v8}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->indexOf(IC)I

    move-result v4

    if-eq v4, v2, :cond_6

    iget v2, v1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    if-ge v4, v2, :cond_6

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEV01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    xor-int/lit8 v1, v6, 0x1

    add-int/2addr v2, v1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v6, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v2, v4, v6}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v8

    new-instance v2, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v9, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v11, 0x0

    new-array v12, v5, [Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    new-instance v4, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {v4, v1, v5, v0}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    aput-object v4, v12, v3

    move-object v7, v2

    move-object v10, p1

    invoke-direct/range {v7 .. v12}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-object v2

    :cond_7
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v0, "\\verb had no proper content token"

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleUserDefinedEnvironmentControl()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 3

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->advanceOverBracesAndEnvironmentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v1}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getUserEnvironmentMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->makeSubstitutionAndRewind(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "Environment is not user-defined"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "Expected to find {envName}"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeSubstitutionAndRewind(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;
    .locals 3

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getConfiguration()Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->getExpansionLimit()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->getSubstitutionDepth(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    sget-object p3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEU00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-direct {p0, p3, p1, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->substitute(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 p1, 0x0

    return-object p1
.end method

.method private readBraceRegion()Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;
    .locals 5

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v1, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sget-object v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BRACE:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;

    const-string v4, "}"

    invoke-direct {v3, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v4, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {p0, v2, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v2

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3, v0, v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    new-instance v3, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v3, v0, v1, v2}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    return-object v3
.end method

.method private readCommandOrEnvironmentName(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    const/16 v1, 0x5a

    const/16 v2, 0x7a

    const/16 v3, 0x41

    const/16 v4, 0x61

    if-lt v0, v4, :cond_1

    if-le v0, v2, :cond_2

    :cond_1
    if-lt v0, v3, :cond_7

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v5, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v5

    if-lt v5, v4, :cond_3

    if-le v5, v2, :cond_4

    :cond_3
    if-lt v5, v3, :cond_5

    if-gt v5, v1, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x2a

    if-ne v5, v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    :goto_1
    int-to-char p1, v0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private readCommandOrEnvironmentOrVerb()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 5

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readCommandOrEnvironmentName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const-string v0, " "

    :cond_2
    const-string v1, "begin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishBeginEnvironment()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_3

    :cond_3
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishEndEnvironment()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->handleUserDefinedEnvironmentControl()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_VERB:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    invoke-direct {p0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishVerbToken(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_VERBSTAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->finishCommand(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_8
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "Expected caller to have picked the commandName==null case up"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDollarMath()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 10

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v1, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    const-string v3, "$$"

    invoke-virtual {v2, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->matchesAt(ILjava/lang/String;)Z

    move-result v2

    const-string v4, "$"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    sget-object v6, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_ENVIRONMENT_CONTENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v7, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;

    invoke-direct {v7, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;-><init>(Ljava/lang/String;)V

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {p0, v6, v7, v8}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v6

    iget-boolean v7, v6, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    if-eqz v7, :cond_1

    iget v7, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v7, v9

    goto :goto_1

    :cond_1
    iget v7, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3, v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEM01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3, v5, v7}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v3

    new-instance v4, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v5, v6, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v4, v3, v8, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3, v0, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    if-eqz v2, :cond_3

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_DISPLAYMATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    goto :goto_2

    :cond_3
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_MATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    :goto_2
    new-instance v3, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-direct {v3, v0, v1, v2, v4}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-object v3
.end method

.method private readNextMathNumberOrSymbol()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 5

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tryReadMathNumber()Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    const/4 v2, 0x2

    :cond_1
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {v2, v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->getMathCharacter(I)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    const/4 v3, 0x0

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->ALPHA:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-direct {v2, v0, v3, v4}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;-><init>(ILjava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;)V

    :cond_2
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/MathCharacterToken;

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/tokens/MathCharacterToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V

    return-object v0
.end method

.method private readNextSimpleTextParaMode()Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;
    .locals 13

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    new-instance v2, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3, v4, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v6

    sget-object v7, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v8, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v9, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->ALLOW_INLINE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    new-array v10, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-object v2

    :cond_3
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v2, -0x1

    move v6, v1

    move v5, v2

    :goto_3
    iget-object v7, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v7}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v7

    if-ge v0, v7, :cond_9

    iget-object v7, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v7, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_9

    const/16 v8, 0x24

    if-eq v7, v8, :cond_9

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_9

    const/16 v8, 0x25

    if-eq v7, v8, :cond_9

    const/16 v8, 0x26

    if-eq v7, v8, :cond_9

    const/16 v8, 0x23

    if-eq v7, v8, :cond_9

    const/16 v8, 0x5e

    if-eq v7, v8, :cond_9

    const/16 v8, 0x5f

    if-ne v7, v8, :cond_4

    goto :goto_4

    :cond_4
    iget-object v8, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v8, v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->terminator:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;

    if-eqz v8, :cond_5

    iget-object v9, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-interface {v8, v9, v0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;->matchesAt(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I

    move-result v8

    if-eq v8, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v8

    if-eqz v8, :cond_7

    if-ne v5, v2, :cond_6

    move v5, v0

    :cond_6
    if-ne v7, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_8

    goto :goto_4

    :cond_7
    move v6, v1

    move v5, v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-ne v6, v3, :cond_a

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v2, v3, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v8

    sget-object v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v10, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->ALLOW_INLINE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    new-array v12, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    goto :goto_5

    :cond_a
    new-instance v7, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v2, v3, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v4, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->ALLOW_INLINE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    new-array v6, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    move-object v0, v7

    :goto_5
    return-object v0
.end method

.method private readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 5

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v0, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverCommentsAndWhitespace()V

    goto :goto_0

    :cond_0
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverComments()V

    :cond_1
    :goto_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v0, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->terminator:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-interface {v0, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;->matchesAt(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iput-boolean v2, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    return-object v1

    :cond_2
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    return-object v1

    :cond_3
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v1, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextTokenVerbatimMode()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected switch case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v2, v2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextTokenMathMode()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextTokenTextMode()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget v1, v1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    :cond_7
    return-object v0
.end method

.method private readNextTokenMathMode()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 7

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextMathNumberOrSymbol()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v4, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v5, 0x0

    new-array v6, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-object v0

    :pswitch_1
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "Comment should be have been skipped before getting here!"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEM04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v3, v2, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v3, v2, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readBraceRegion()Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readSlashToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readNextTokenTextMode()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 8

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextSimpleTextParaMode()Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v3

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v5, v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v6, 0x0

    new-array v7, v2, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-object v0

    :pswitch_1
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "Comment should be have been skipped before getting here!"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readDollarMath()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v3, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEM03:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v3, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v3, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readBraceRegion()Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readSlashToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readNextTokenVerbatimMode()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 9

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v0, v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->terminator:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-interface {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;->nextMatchFrom(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    :cond_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    invoke-virtual {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-array v8, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-object v0

    :cond_1
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v1, "No terminator specified for VERBATIM Mode"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSlashToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
    .locals 15

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v2, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG01:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v5, v5, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    aput-object v5, v1, v3

    invoke-direct {p0, v2, v4, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    goto/16 :goto_4

    :cond_0
    const/16 v4, 0x28

    if-eq v2, v4, :cond_4

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x29

    if-eq v2, v0, :cond_3

    const/16 v0, 0x5d

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readCommandOrEnvironmentOrVerb()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    :goto_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG03:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v4, v2, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v2, v6}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v5

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-direct {p0, v0, v2, v4, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    goto/16 :goto_4

    :cond_4
    :goto_1
    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v5, v5, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne v5, v6, :cond_5

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEM00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v5, v0, 0x2

    iput v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    if-ne v2, v4, :cond_6

    const-string v7, "\\)"

    goto :goto_2

    :cond_6
    const-string v7, "\\]"

    :goto_2
    sget-object v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_ENVIRONMENT_CONTENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v9, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;

    invoke-direct {v9, v7}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8, v9, v6}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object v8

    iget-boolean v9, v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    if-nez v9, :cond_7

    iget-object v9, v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEM02:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v11, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\\"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v14, v2

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    aput-object v7, v12, v1

    invoke-direct {p0, v10, v0, v11, v12}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    invoke-interface {v9, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {v8}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->computeLastTokenEndIndex()I

    move-result v1

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3, v5, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v3, v0, v5}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    new-instance v3, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iget-object v5, v8, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v3, v1, v6, v5}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/List;)V

    if-ne v2, v4, :cond_8

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_MATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    goto :goto_3

    :cond_8
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_DISPLAYMATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    :goto_3
    new-instance v2, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v4, v4, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {v2, v0, v4, v1, v3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    move-object v0, v2

    :goto_4
    return-object v0
.end method

.method private skipOverComment()V
    .locals 4

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_1
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v3, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    return-void
.end method

.method private skipOverComments()V
    .locals 2

    :goto_0
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverComment()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipOverCommentsAndWhitespace()V
    .locals 2

    :goto_0
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->skipOverComment()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private skipOverTrailingWhitespace()V
    .locals 2

    :goto_0
    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private substituteArguments(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->getDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    move-result-object v1

    iget v2, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    if-ge v2, v6, :cond_7

    invoke-virtual {v1, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v6

    int-to-char v6, v6

    const/4 v7, 0x1

    if-nez v4, :cond_0

    const/16 v8, 0x5c

    if-ne v6, v8, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_3

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_3

    :cond_1
    const/16 v8, 0x23

    if-ne v6, v8, :cond_2

    move v5, v7

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_6

    add-int/lit8 v6, v6, -0x30

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->isAllowingOptionalArgument()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    :cond_3
    if-lez v6, :cond_4

    iget-object v5, p3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->requiredArguments:[Ljava/lang/CharSequence;

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v5, p3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$UserDefinedCommandOrEnvironmentArgumentSearchResult;->optionalArgument:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->getOptionalArgument()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-direct {v0, p1, p3, v1, p2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;-><init>(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;ILuk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->readNextToken()Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object p3, p3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object p3, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v6, 0x0

    if-ne p3, v3, :cond_1

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget p3, p3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->startPosition:I

    invoke-virtual {p1, p3, p3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    new-instance p3, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const/4 v4, 0x0

    new-array v5, v6, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-boolean p3, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->foundTerminator:Z

    if-nez p3, :cond_2

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    sget-object p3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEG00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-direct {p0, p3, v0, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    :goto_1
    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    return-object p1
.end method

.method private tryReadMathNumber()Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;
    .locals 9

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-interface {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/NumberMatcher;->getNumberEnd(Luk/ac/ed/ph/snuggletex/InputContext;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    invoke-virtual {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v4

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v8, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const/4 v1, 0x0

    new-instance v2, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;-><init>(Ljava/lang/CharSequence;)V

    aput-object v2, v8, v1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    const/4 v1, 0x0

    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v1, -0x1

    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->startTokenIndex:I

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->modeStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->currentModeState:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public tokenise(Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;)Luk/ac/ed/ph/snuggletex/tokens/RootToken;
    .locals 6

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reset()V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->createWorkingDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    move-result-object p1

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    :try_start_0
    sget-object p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->TOP_LEVEL:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const/4 v0, 0x0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-direct {p0, p1, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->tokeniseInNewState(Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TTEE04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->position:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->openEnvironmentStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->createError(Luk/ac/ed/ph/snuggletex/ErrorCode;II[Ljava/lang/Object;)Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/RootToken;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->workingDocument:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$ModeState;->tokens:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Luk/ac/ed/ph/snuggletex/tokens/RootToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reset()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;->reset()V

    throw p1
.end method
