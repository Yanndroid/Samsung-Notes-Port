.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->isNot(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$match:C


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    iput-char p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 1

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->and(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public negate()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 1

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->is(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 1

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->ANY:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public setBits(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lcom/google/api/client/repackaged/com/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;->val$match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method
