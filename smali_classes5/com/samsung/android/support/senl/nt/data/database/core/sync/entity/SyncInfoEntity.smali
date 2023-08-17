.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "clientId"
            }
        .end subannotation
    }
    tableName = "sync_info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
    }
.end annotation


# instance fields
.field private clientModifiedTime:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "clientModifiedTime"
    .end annotation
.end field

.field private clientModifiedTimeFolder:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "clientModifiedTimeFolder"
    .end annotation
.end field

.field private coeditCheckPoint:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "-1"
        name = "coeditCheckPoint"
    .end annotation
.end field

.field private coeditResourceId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "coeditResourceId"
    .end annotation
.end field

.field private commitId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "commitId"
    .end annotation
.end field

.field private conflict:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "conflict"
    .end annotation
.end field

.field private conflictStrategy:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "conflictStrategy"
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "deviceName"
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

.field private isDirtyFolder:I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1"
        name = "isDirtyFolder"
    .end annotation
.end field

.field private isExtraInfoDirty:I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isExtraInfoDirty"
    .end annotation
.end field

.field private isSyncFailed:I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isSyncFailed"
    .end annotation
.end field

.field private lastModifiedTimeFolder:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "lastModifiedTimeFolder"
    .end annotation
.end field

.field private noteClientId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "clientId"
    .end annotation
.end field

.field private noteServerId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "serverId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->coeditCheckPoint:J

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clone()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public getClientModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clientModifiedTime:J

    return-wide v0
.end method

.method public getClientModifiedTimeFolder()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clientModifiedTimeFolder:J

    return-wide v0
.end method

.method public getCoeditCheckPoint()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->coeditCheckPoint:J

    return-wide v0
.end method

.method public getCoeditResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->coeditResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->commitId:Ljava/lang/String;

    return-object v0
.end method

.method public getConflict()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->conflict:I

    return v0
.end method

.method public getConflictStrategy()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->conflictStrategy:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsDirtyFolder()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isDirtyFolder:I

    return v0
.end method

.method public getIsExtraInfoDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isExtraInfoDirty:I

    return v0
.end method

.method public getIsSyncFailed()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isSyncFailed:I

    return v0
.end method

.method public getLastModifiedTimeFolder()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->lastModifiedTimeFolder:J

    return-wide v0
.end method

.method public getNoteClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->noteClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->noteServerId:Ljava/lang/String;

    return-object v0
.end method

.method public setClientModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clientModifiedTime:J

    return-void
.end method

.method public setClientModifiedTimeFolder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clientModifiedTimeFolder:J

    return-void
.end method

.method public setCoeditCheckPoint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->coeditCheckPoint:J

    return-void
.end method

.method public setCoeditResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->coeditResourceId:Ljava/lang/String;

    return-void
.end method

.method public setCommitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->commitId:Ljava/lang/String;

    return-void
.end method

.method public setConflict(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->conflict:I

    return-void
.end method

.method public setConflictStrategy(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->conflictStrategy:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsDirtyFolder(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isDirtyFolder:I

    return-void
.end method

.method public setIsExtraInfoDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isExtraInfoDirty:I

    return-void
.end method

.method public setIsSyncFailed(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isSyncFailed:I

    return-void
.end method

.method public setLastModifiedTimeFolder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->lastModifiedTimeFolder:J

    return-void
.end method

.method public setNoteClientId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->noteClientId:Ljava/lang/String;

    return-void
.end method

.method public setNoteServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->noteServerId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncInfoEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noteServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->noteServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', noteClientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->noteClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', clientModifiedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clientModifiedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDirtyFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isDirtyFolder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientModifiedTimeFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->clientModifiedTimeFolder:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedTimeFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->lastModifiedTimeFolder:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSyncFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isSyncFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isExtraInfoDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->isExtraInfoDirty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commitId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->commitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conflict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->conflict:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", conflictStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->conflictStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
