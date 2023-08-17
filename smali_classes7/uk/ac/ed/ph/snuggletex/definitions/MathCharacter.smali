.class public final Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;
    }
.end annotation


# instance fields
.field private final codePoint:I

.field private final inputCommandName:Ljava/lang/String;

.field private final interpretationMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation
.end field

.field private final mathCharacterInterpretation:Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;

.field private final type:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;


# direct methods
.method public constructor <init>(ILjava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->codePoint:I

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->inputCommandName:Ljava/lang/String;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->type:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    new-instance p1, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;

    invoke-direct {p1, p0}, Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->mathCharacterInterpretation:Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;

    new-instance p2, Ljava/util/EnumMap;

    const-class p3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-direct {p2, p3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->interpretationMap:Ljava/util/EnumMap;

    sget-object p3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {p2, p3, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addInterpretation(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->interpretationMap:Ljava/util/EnumMap;

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getChars()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->codePoint:I

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getCodePoint()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->codePoint:I

    return v0
.end method

.method public getInputCommandName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->inputCommandName:Ljava/lang/String;

    return-object v0
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

    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/BeanToStringOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->IGNORE_PROPERTY:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
    .end annotation

    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->IGNORE:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->interpretationMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getMathCharacterInterpretation()Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;
    .locals 1
    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/BeanToStringOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->IGNORE_PROPERTY:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
    .end annotation

    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->IGNORE:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->mathCharacterInterpretation:Luk/ac/ed/ph/snuggletex/semantics/MathCharacterInterpretation;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->type:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
