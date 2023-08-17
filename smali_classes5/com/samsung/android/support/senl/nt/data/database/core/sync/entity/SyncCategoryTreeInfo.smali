.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private UUID:Ljava/lang/String;

.field private displayNameColor:I

.field private isDeleted:I

.field private isDirty:I

.field private lastModifiedAt:J

.field private orderBy:Ljava/lang/Integer;

.field private recycle_bin_time_moved:J

.field private serverTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayNameColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->displayNameColor:I

    return v0
.end method

.method public getIsDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->isDeleted:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->isDirty:I

    return v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->lastModifiedAt:J

    return-wide v0
.end method

.method public getOrderBy()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->orderBy:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0xf423f

    :goto_0
    return v0
.end method

.method public getRecycle_bin_time_moved()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->recycle_bin_time_moved:J

    return-wide v0
.end method

.method public getServerTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->serverTimestamp:J

    return-wide v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayNameColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->displayNameColor:I

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->isDeleted:I

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->isDirty:I

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->lastModifiedAt:J

    return-void
.end method

.method public setOrderBy(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->orderBy:Ljava/lang/Integer;

    return-void
.end method

.method public setRecycle_bin_time_moved(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->recycle_bin_time_moved:J

    return-void
.end method

.method public setServerTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->serverTimestamp:J

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->UUID:Ljava/lang/String;

    return-void
.end method
