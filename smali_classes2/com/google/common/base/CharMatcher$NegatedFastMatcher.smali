.class Lcom/google/common/base/CharMatcher$NegatedFastMatcher;
.super Lcom/google/common/base/CharMatcher$Negated;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NegatedFastMatcher"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$Negated;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public final precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    return-object p0
.end method
