.class public final Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BIG_LIMIT_OWNER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
