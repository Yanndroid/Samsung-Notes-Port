.class public final Luk/ac/ed/ph/snuggletex/tokens/MathCharacterToken;
.super Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.source "SourceFile"


# instance fields
.field private final mathCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V
    .locals 6

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    sget-object v3, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/util/EnumMap;)V

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/tokens/MathCharacterToken;->mathCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    return-void
.end method


# virtual methods
.method public getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/MathCharacterToken;->mathCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    return-object v0
.end method
