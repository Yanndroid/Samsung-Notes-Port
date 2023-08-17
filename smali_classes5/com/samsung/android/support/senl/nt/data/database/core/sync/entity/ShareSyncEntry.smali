.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;
.super Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;
.source "SourceFile"


# instance fields
.field private createdAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "createdAt"
    .end annotation
.end field

.field private itemId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mdeItemId"
    .end annotation
.end field

.field private spaceId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mdeSpaceId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->createdAt:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->itemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->createdAt:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->createdAt:J

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->spaceId:Ljava/lang/String;

    return-void
.end method
