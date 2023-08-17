.class public final Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;


# instance fields
.field private final number:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;->number:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;->number:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
