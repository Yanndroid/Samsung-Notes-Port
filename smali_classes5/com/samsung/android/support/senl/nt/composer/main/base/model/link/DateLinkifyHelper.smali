.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    iget v5, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v6, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    if-gt v5, v6, :cond_3

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    if-le v2, v6, :cond_3

    iget v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v4, v2, :cond_0

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_0
    sub-int v8, v2, v5

    sub-int v9, v4, v6

    if-le v8, v9, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v5

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method
