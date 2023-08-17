.class public abstract Luk/ac/ed/ph/snuggletex/tokens/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public computedStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

.field public final interpretationMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation
.end field

.field public final latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field public final slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

.field public final type:Luk/ac/ed/ph/snuggletex/tokens/TokenType;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;",
            "Luk/ac/ed/ph/snuggletex/tokens/TokenType;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->type:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    return-void
.end method

.method public varargs constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->type:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {p4}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap([Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->computedStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-object v0
.end method

.method public getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getInterpretationMap()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation

    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->latexMode:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    return-object v0
.end method

.method public getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 3

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getMathCharacterCodePoint()I
    .locals 1

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

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

.method public getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 1
    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->type:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    return-object v0
.end method

.method public varargs hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z
    .locals 5

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->interpretationMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Z
    .locals 1

    instance-of v0, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Z
    .locals 1

    instance-of v0, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setComputedStyle(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/tokens/Token;->computedStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
