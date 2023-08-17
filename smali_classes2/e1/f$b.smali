.class public Le1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)I
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    const-string v1, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-le v0, v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    move v3, v2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-le p1, p2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    if-ge p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    invoke-virtual {p0, p1, p2}, Le1/f$b;->a(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)I

    move-result p1

    return p1
.end method
