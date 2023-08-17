.class public Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;
.super Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;
.source "SourceFile"


# static fields
.field public static MODE_DOWNLOAD:I

.field public static MODE_NONE:I

.field public static MODE_OPEN:I

.field public static MODE_SHARE:I

.field public static MODE_UNDEFINED:I

.field public static MODE_UPLOAD:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mHandle:J

.field public final mResumeRunnableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "CoeditManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/base/CoeditLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_UPLOAD:I

    const/4 v1, 0x2

    sput v1, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_DOWNLOAD:I

    const/4 v2, 0x4

    sput v2, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_OPEN:I

    const/16 v2, 0x8

    sput v2, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_SHARE:I

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_UNDEFINED:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mResumeRunnableMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_construct(Ljava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    sget-object p1, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoeditManager : handle = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native CoeditManager_applyStrokeBinary(JLjava/lang/String;[B)V
.end method

.method private native CoeditManager_channelReconnected(J)V
.end method

.method private native CoeditManager_checkSkipDownloadNote(J)Z
.end method

.method private native CoeditManager_close(J)V
.end method

.method private native CoeditManager_construct(Ljava/lang/String;Z)J
.end method

.method private native CoeditManager_downloadContentFile(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native CoeditManager_externalChannelOpen(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
.end method

.method private native CoeditManager_externalSnapDownload(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method private native CoeditManager_externalSnapStart(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method private native CoeditManager_externalSnapUpload(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method private native CoeditManager_handleDeviceListChange(JLjava/lang/String;)V
.end method

.method private native CoeditManager_handleDownloadUrlMap(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native CoeditManager_handleReceiveServerResponse(JJJJJJZ)V
.end method

.method private native CoeditManager_handleResetWorkspaceResponse(JJ)V
.end method

.method private native CoeditManager_handleWorkspaceBlock(J)V
.end method

.method private native CoeditManager_initCoeditController(JLcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;)V
.end method

.method private native CoeditManager_initGrpcController(JLcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;)V
.end method

.method private native CoeditManager_initNetworkReconnector(J)V
.end method

.method private native CoeditManager_internalChannelOpen(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
.end method

.method private native CoeditManager_internalSnapRefresh(J)Z
.end method

.method private native CoeditManager_internalSnapRestart(JLcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;Ljava/lang/String;)V
.end method

.method private native CoeditManager_internalSnapStart(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method private native CoeditManager_isConcurrencyPaused(JLjava/lang/String;)Z
.end method

.method private native CoeditManager_isInitializing(J)Z
.end method

.method private native CoeditManager_isNetworkReconnecting(J)Z
.end method

.method private native CoeditManager_isRunningConcurrency(J)Z
.end method

.method private native CoeditManager_isWorkingConcurrency(J)Z
.end method

.method private native CoeditManager_onContentFileUploadError(JI)V
.end method

.method private native CoeditManager_onError(JLjava/lang/String;)V
.end method

.method private native CoeditManager_onSnapError(JLjava/lang/String;)V
.end method

.method private native CoeditManager_pauseConcurrency(JLjava/lang/String;)I
.end method

.method private native CoeditManager_putNotifyNoteOpsBuffer(JJLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method private native CoeditManager_reconnect(JLjava/lang/String;)V
.end method

.method private native CoeditManager_releaseLock(JLjava/lang/String;)V
.end method

.method private native CoeditManager_releaseNetworkReconnector(J)V
.end method

.method private native CoeditManager_requestPermission(JZ)Z
.end method

.method private native CoeditManager_resumeConcurrency(JLjava/lang/String;)I
.end method

.method private native CoeditManager_runOnUiThread(J)V
.end method

.method private native CoeditManager_saveCoeditCache(J)Z
.end method

.method private native CoeditManager_setAbnormalAckCheckPoint(JJ)V
.end method

.method private native CoeditManager_setLock(JLjava/lang/String;)Z
.end method

.method private native CoeditManager_setNoteSnapServerCheckPoint(JJ)V
.end method

.method private native CoeditManager_setServerCheckPoint(JJ)V
.end method

.method private native CoeditManager_stop(J)J
.end method

.method private native CoeditManager_uploadContentFile(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native CoeditManager_wakeConcurrencyPool(J)V
.end method


# virtual methods
.method public applyStrokeBinary(Ljava/lang/String;[B)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_applyStrokeBinary(JLjava/lang/String;[B)V

    return-void
.end method

.method public channelReconnected()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_channelReconnected(J)V

    return-void
.end method

.method public checkSkipDownloadNote()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_checkSkipDownloadNote(J)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoeditManager : close handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_close(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_downloadContentFile(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public externalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_externalChannelOpen(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V

    return-void
.end method

.method public externalSnapDownload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_externalSnapDownload(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method

.method public externalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_externalSnapStart(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method

.method public externalSnapUpload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_externalSnapUpload(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public handleDeviceListChange(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_handleDeviceListChange(JLjava/lang/String;)V

    return-void
.end method

.method public handleDownloadUrlMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_handleDownloadUrlMap(JLjava/util/Map;)V

    return-void
.end method

.method public handleReceiveServerResponse(JJJJJZ)V
    .locals 15

    move-object v14, p0

    iget-wide v1, v14, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_handleReceiveServerResponse(JJJJJJZ)V

    return-void
.end method

.method public handleResetWorkspaceResponse(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_handleResetWorkspaceResponse(JJ)V

    return-void
.end method

.method public handleWorkspaceBlock()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_handleWorkspaceBlock(J)V

    return-void
.end method

.method public initCoeditController(Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_initCoeditController(JLcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;)V

    return-void
.end method

.method public initGrpcController(Lcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_initGrpcController(JLcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;)V

    return-void
.end method

.method public initNetworkReconnector()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_initNetworkReconnector(J)V

    return-void
.end method

.method public internalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_internalChannelOpen(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V

    return-void
.end method

.method public internalSnapRefresh()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_internalSnapRefresh(J)Z

    move-result v0

    return v0
.end method

.method public internalSnapRestart(Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;Ljava/lang/String;)V
    .locals 6

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_internalSnapRestart(JLcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;Ljava/lang/String;)V

    return-void
.end method

.method public internalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_internalSnapStart(JILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method

.method public isConcurrencyPaused(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_isConcurrencyPaused(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInitializing()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_isInitializing(J)Z

    move-result v0

    return v0
.end method

.method public isNetworkReconnecting()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_isNetworkReconnecting(J)Z

    move-result v0

    return v0
.end method

.method public isRunningConcurrency()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_isRunningConcurrency(J)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWorkingConcurrency()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_isWorkingConcurrency(J)Z

    move-result v0

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_onContentFileUploadError(JI)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_onError(JLjava/lang/String;)V

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_onSnapError(JLjava/lang/String;)V

    return-void
.end method

.method public pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mResumeRunnableMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_pauseConcurrency(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_putNotifyNoteOpsBuffer(JJLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_reconnect(JLjava/lang/String;)V

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_releaseLock(JLjava/lang/String;)V

    return-void
.end method

.method public releaseNetworkReconnector()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_releaseNetworkReconnector(J)V

    return-void
.end method

.method public requestPermission(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_requestPermission(JZ)Z

    move-result p1

    return p1
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_resumeConcurrency(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public runOnUiThread(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_runOnUiThread(J)V

    return-void
.end method

.method public runResumeRunnable()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->TAG:Ljava/lang/String;

    const-string v1, "runResumeRunnable - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mResumeRunnableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->TAG:Ljava/lang/String;

    const-string v1, "runResumeRunnable - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mResumeRunnableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public saveCoeditCache()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_saveCoeditCache(J)Z

    move-result v0

    return v0
.end method

.method public setAbnormalAckCheckPoint(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_setAbnormalAckCheckPoint(JJ)V

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_setLock(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNoteSnapServerCheckPoint(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_setNoteSnapServerCheckPoint(JJ)V

    return-void
.end method

.method public setServerCheckPoint(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_setServerCheckPoint(JJ)V

    return-void
.end method

.method public stop()J
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_stop(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mResumeRunnableMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    return-wide v0
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getHandle()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_uploadContentFile(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->CoeditManager_wakeConcurrencyPool(J)V

    return-void
.end method
