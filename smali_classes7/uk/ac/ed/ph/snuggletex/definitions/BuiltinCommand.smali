.class public final Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
.super Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment<",
        "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
        ">;",
        "Luk/ac/ed/ph/snuggletex/definitions/Command;"
    }
.end annotation


# instance fields
.field private final argumentModes:[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field private final combinerTargetMatcher:Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;

.field private final type:Luk/ac/ed/ph/snuggletex/definitions/CommandType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/CommandType;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;[",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            "Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;-><init>(Ljava/lang/String;ZILjava/util/EnumSet;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/lang/Object;)V

    move-object v0, p2

    iput-object v0, v8, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->type:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    move-object v0, p6

    iput-object v0, v8, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->argumentModes:[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-object/from16 v0, p10

    iput-object v0, v8, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->combinerTargetMatcher:Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAllowedModes()Ljava/util/EnumSet;
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getAllowedModes()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getArgumentCount()I
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getArgumentCount()I

    move-result v0

    return v0
.end method

.method public getArgumentMode(I)Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->argumentModes:[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCombinerTargetMatcher()Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->combinerTargetMatcher:Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;

    return-object v0
.end method

.method public bridge synthetic getDOMBuildingHandler()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getDOMBuildingHandler()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;
    .locals 0

    invoke-super {p0, p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInterpretationMap()Ljava/util/EnumMap;
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMathCharacterCodePoint()I
    .locals 1

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getCodePoint()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic getTeXName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v0

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/definitions/CommandType;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->type:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    return-object v0
.end method

.method public bridge synthetic hasInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z
    .locals 0

    invoke-super {p0, p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->hasInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isAllowingOptionalArgument()Z
    .locals 1

    invoke-super {p0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->isAllowingOptionalArgument()Z

    move-result v0

    return v0
.end method
