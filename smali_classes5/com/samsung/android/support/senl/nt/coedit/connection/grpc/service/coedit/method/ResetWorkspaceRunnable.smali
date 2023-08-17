.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResetWorkspaceRunnable"


# instance fields
.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    return-void
.end method

.method private printResponse(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 4
    .param p1    # LcoeditCoreMessage/ResetWorkspaceResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "workspaceId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", workspaceVersion: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", latestSnapShotCheckPoint: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getLatestSnapshotCheckpoint()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBlocked: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getIsBlocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->hasResponseResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LcoeditCoreMessage/ResponseResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestResetWorkspace()V
    .locals 7

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getRetryCount()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "requestResetWorkspace, finally handle response"

    const/4 v3, 0x1

    const-string v4, "ResetWorkspaceRunnable"

    const/4 v5, 0x0

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run(), requestResetWorkspace, requestId: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->requestResetWorkspace(Ljava/lang/String;)LcoeditCoreMessage/ResetWorkspaceResponse;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestResetWorkspace error. "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->showToast(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestResetWorkspace, error: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isResetNotNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->increaseRetryCount()V

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v5, :cond_3

    :try_start_2
    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->printResponse(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V

    invoke-virtual {v5}, LcoeditCoreMessage/ResetWorkspaceResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    :try_start_3
    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    throw v0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    if-nez v3, :cond_4

    const-string v0, "RESET_WORKSPACE_DURATION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->onError(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNoteId()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceVersion()J

    move-result-wide v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getResponsedWorkspaceVersion()J

    move-result-wide v1

    :goto_4
    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setWorkspaceVersion(Ljava/lang/String;J)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ResetWorkspaceRunnable"

    return-object v0
.end method

.method public run()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ResetWorkspaceRunnable;->requestResetWorkspace()V

    return-void
.end method
