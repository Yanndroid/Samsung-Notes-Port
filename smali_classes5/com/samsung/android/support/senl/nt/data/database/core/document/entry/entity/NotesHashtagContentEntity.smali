.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "hashtagContent"
.end annotation


# instance fields
.field private extraInfo:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "extraInfo"
    .end annotation
.end field

.field private hashtagUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "hashtagUUID"
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

.field private isDeleted:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isDeleted"
    .end annotation
.end field

.field private isDirty:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1"
        name = "isDirty"
    .end annotation
.end field

.field private isSyncFailed:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isSyncFailed"
    .end annotation
.end field

.field private lastModifiedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "lastModifiedAt"
    .end annotation
.end field

.field private sdocUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "sdocUUID"
    .end annotation
.end field

.field private serverTimestamp:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1464416139847"
        name = "serverTimestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->sdocUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->extraInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->hashtagUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHashtagUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->hashtagUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->isDeleted:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->isDirty:I

    return v0
.end method

.method public getIsSyncFailed()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->isSyncFailed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->lastModifiedAt:J

    return-wide v0
.end method

.method public getSdocUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->sdocUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->serverTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method public setHashtagUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->hashtagUuid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->isDeleted:I

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->isDirty:I

    return-void
.end method

.method public setIsSyncFailed(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->isSyncFailed:Ljava/lang/Integer;

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->lastModifiedAt:J

    return-void
.end method

.method public setSdocUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->sdocUuid:Ljava/lang/String;

    return-void
.end method

.method public setServerTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->serverTimestamp:Ljava/lang/Long;

    return-void
.end method
