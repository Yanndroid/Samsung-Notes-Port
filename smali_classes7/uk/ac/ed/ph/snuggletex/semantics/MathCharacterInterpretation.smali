.class public Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;


# instance fields
.field private final mathCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;->mathCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    return-void
.end method


# virtual methods
.method public getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;->mathCharacter:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
