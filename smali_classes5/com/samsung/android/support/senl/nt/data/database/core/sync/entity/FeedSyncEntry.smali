.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;
.super Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;
.source "SourceFile"


# instance fields
.field private createdAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "createdAt"
    .end annotation
.end field

.field private msLastSyncTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "msLastSyncTime"
    .end annotation
.end field

.field private msSyncAccountId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "msSyncAccountId"
    .end annotation
.end field

.field private msSyncDocumentUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "msSyncDocumentUuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msLastSyncTime:J

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msSyncAccountId:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msSyncDocumentUuid:Ljava/lang/String;

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->createdAt:J

    return-void
.end method


# virtual methods
.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->createdAt:J

    return-wide v0
.end method

.method public getMsLastSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msLastSyncTime:J

    return-wide v0
.end method

.method public getMsSyncAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msSyncAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsSyncDocumentUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msSyncDocumentUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->createdAt:J

    return-void
.end method

.method public setMsLastSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msLastSyncTime:J

    return-void
.end method

.method public setMsSyncAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msSyncAccountId:Ljava/lang/String;

    return-void
.end method

.method public setMsSyncDocumentUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->msSyncDocumentUuid:Ljava/lang/String;

    return-void
.end method
