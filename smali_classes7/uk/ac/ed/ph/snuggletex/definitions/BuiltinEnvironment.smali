.class public final Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
.super Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/Environment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment<",
        "Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;",
        ">;",
        "Luk/ac/ed/ph/snuggletex/definitions/Environment;"
    }
.end annotation


# instance fields
.field private final contentMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p8

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;-><init>(Ljava/lang/String;ZILjava/util/EnumSet;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/lang/Object;)V

    move-object v1, p5

    iput-object v1, v0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->contentMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

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
    .locals 0

    sget-object p1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    return-object p1
.end method

.method public getContentMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->contentMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

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
