.class Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowed(Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_NEGATABLE:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result p1

    return p1
.end method
