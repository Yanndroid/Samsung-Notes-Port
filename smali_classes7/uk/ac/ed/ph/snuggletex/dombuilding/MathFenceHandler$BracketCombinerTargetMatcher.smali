.class public final Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler$BracketCombinerTargetMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BracketCombinerTargetMatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowed(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result p1

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method
