.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "server_only_folder_node"
.end annotation


# instance fields
.field private createdTime:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "createdTime"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private isDirty:I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isDirty"
    .end annotation
.end field

.field private lastModifiedTime:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "lastModifiedTime"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "name"
    .end annotation
.end field

.field private parentFolderNodeId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "parentFolderNodeID"
    .end annotation
.end field

.field private recyclerBinMovedTime:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "recyclerBinMovedTime"
    .end annotation
.end field

.field private restorePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "restorePath"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "state"
    .end annotation
.end field

.field private syncModifiedTime:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "syncModifiedTime"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "type"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "UUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->createdTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->isDirty:I

    return v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->lastModifiedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderNodeId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->parentFolderNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecyclerBinMovedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->recyclerBinMovedTime:J

    return-wide v0
.end method

.method public getRestorePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->restorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->syncModifiedTime:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->createdTime:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->isDirty:I

    return-void
.end method

.method public setLastModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->lastModifiedTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentFolderNodeId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->parentFolderNodeId:Ljava/lang/String;

    return-void
.end method

.method public setRecyclerBinMovedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->recyclerBinMovedTime:J

    return-void
.end method

.method public setRestorePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->restorePath:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->state:Ljava/lang/String;

    return-void
.end method

.method public setSyncModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->syncModifiedTime:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->type:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;->uuid:Ljava/lang/String;

    return-void
.end method
