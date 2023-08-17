.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private categoryIsDirty:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "categoryisDirty"
    .end annotation
.end field

.field private categoryServerTimeStamp:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "categoryserverTimestamp"
    .end annotation
.end field

.field private categoryUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "categoryUUID"
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "filePath"
    .end annotation
.end field

.field private isDeleted:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "isDeleted"
    .end annotation
.end field

.field private isDirty:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "isDirty"
    .end annotation
.end field

.field private isFavorite:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "isFavorite"
    .end annotation
.end field

.field private isLock:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "isLock"
    .end annotation
.end field

.field private lastMappedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "lastMappedAt"
    .end annotation
.end field

.field private lastModifiedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "lastModifiedAt"
    .end annotation
.end field

.field private lockAccountGuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "lockAccountGuid"
    .end annotation
.end field

.field private serverTimestamp:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "serverTimestamp"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "title"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "UUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->filePath:Ljava/lang/String;

    const-wide v1, 0x154f600fa47L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->serverTimestamp:Ljava/lang/Long;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryServerTimeStamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->title:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isFavorite:I

    const-string v2, "uncategorized:///"

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryUuid:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isDeleted:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lastMappedAt:J

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lastModifiedAt:J

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isLock:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->uuid:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryIsDirty:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isDirty:I

    return-void
.end method


# virtual methods
.method public getCategoryIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryIsDirty:I

    return v0
.end method

.method public getCategoryServerTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryServerTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getCategoryUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isDeleted:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isDirty:I

    return v0
.end method

.method public getIsFavorite()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isFavorite:I

    return v0
.end method

.method public getIsLock()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isLock:I

    return v0
.end method

.method public getLastMappedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lastMappedAt:J

    return-wide v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lastModifiedAt:J

    return-wide v0
.end method

.method public getLockAccountGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lockAccountGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->serverTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryIsDirty:I

    return-void
.end method

.method public setCategoryServerTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryServerTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public setCategoryUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->categoryUuid:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isDeleted:I

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isDirty:I

    return-void
.end method

.method public setIsFavorite(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isFavorite:I

    return-void
.end method

.method public setIsLock(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->isLock:I

    return-void
.end method

.method public setLastMappedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lastMappedAt:J

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lastModifiedAt:J

    return-void
.end method

.method public setLockAccountGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->lockAccountGuid:Ljava/lang/String;

    return-void
.end method

.method public setServerTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->serverTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->uuid:Ljava/lang/String;

    return-void
.end method
