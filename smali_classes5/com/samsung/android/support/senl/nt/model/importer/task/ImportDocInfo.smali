.class public Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCategoryServerTimeStamp:J

.field private mCategoryUUID:Ljava/lang/String;

.field private mChangeUUID:Z

.field private mCreatedTime:J

.field private mDeleteType:I

.field private mFavorite:Z

.field private mLockState:I

.field private mMSLastSyncTime:J

.field private mMSSyncAccountId:Ljava/lang/String;

.field private mMSSyncDocumentid:Ljava/lang/String;

.field private mOwnerId:Ljava/lang/String;

.field private mRecycleBinTimeMoved:J

.field private mRestorePath:Ljava/lang/String;

.field private mSaveNew:Z

.field private mSaveRecovery:Z

.field private mSaveTime:J

.field private mServerKey:Ljava/lang/String;

.field private mServerTimeStamp:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mServerKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mFavorite:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCategoryUUID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCategoryServerTimeStamp:J

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mServerTimeStamp:J

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveNew:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveRecovery:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mChangeUUID:Z

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mLockState:I

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveTime:J

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCreatedTime:J

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mOwnerId:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mDeleteType:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mRestorePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryServerTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCategoryServerTimeStamp:J

    return-wide v0
.end method

.method public getCategoryUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCategoryUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeUUIDFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mChangeUUID:Z

    return v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCreatedTime:J

    return-wide v0
.end method

.method public getDeleteType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mDeleteType:I

    return v0
.end method

.method public getFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mFavorite:Z

    return v0
.end method

.method public getLockState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mLockState:I

    return v0
.end method

.method public getMsLastSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mMSLastSyncTime:J

    return-wide v0
.end method

.method public getMsSyncAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mMSSyncAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsSyncDocumentid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mMSSyncDocumentid:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecycleBinTimeMoved()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mRecycleBinTimeMoved:J

    return-wide v0
.end method

.method public getRestorePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mRestorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveNew:Z

    return v0
.end method

.method public getSaveRecovery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveRecovery:Z

    return v0
.end method

.method public getSaveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveTime:J

    return-wide v0
.end method

.method public getServerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mServerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mServerTimeStamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryServerTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCategoryServerTimeStamp:J

    return-void
.end method

.method public setCategoryUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCategoryUUID:Ljava/lang/String;

    return-void
.end method

.method public setChangeUUIDFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mChangeUUID:Z

    return-void
.end method

.method public setCreatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mCreatedTime:J

    return-void
.end method

.method public setDeleteType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mDeleteType:I

    return-void
.end method

.method public setFavorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mFavorite:Z

    return-void
.end method

.method public setLockState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mLockState:I

    return-void
.end method

.method public setMsLastSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mMSLastSyncTime:J

    return-void
.end method

.method public setMsSyncAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mMSSyncAccountId:Ljava/lang/String;

    return-void
.end method

.method public setMsSyncDocumentid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mMSSyncDocumentid:Ljava/lang/String;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mOwnerId:Ljava/lang/String;

    return-void
.end method

.method public setRecycleBinTimeMoved(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mRecycleBinTimeMoved:J

    return-void
.end method

.method public setRestorePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mRestorePath:Ljava/lang/String;

    return-void
.end method

.method public setSaveNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveNew:Z

    return-void
.end method

.method public setSaveRecovery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveRecovery:Z

    return-void
.end method

.method public setSaveTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mSaveTime:J

    return-void
.end method

.method public setServerKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mServerKey:Ljava/lang/String;

    return-void
.end method

.method public setServerTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mServerTimeStamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportDocInfo;->mTitle:Ljava/lang/String;

    return-void
.end method
