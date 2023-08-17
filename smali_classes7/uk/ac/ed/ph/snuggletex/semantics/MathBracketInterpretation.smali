.class public final Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;
    }
.end annotation


# instance fields
.field private final bracketType:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

.field private final mfencedAttributeCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

.field private final pairingInferencePossible:Z


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->mfencedAttributeCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->bracketType:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    iput-boolean p3, p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->pairingInferencePossible:Z

    return-void
.end method


# virtual methods
.method public getBracketType()Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->bracketType:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    return-object v0
.end method

.method public getMfencedAttributeCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->mfencedAttributeCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method

.method public isPairingInferencePossible()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->pairingInferencePossible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
