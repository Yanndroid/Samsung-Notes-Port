.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;
    }
.end annotation


# static fields
.field private static final DUPLICATE_CONNECT_TRY:Ljava/lang/String; = "[handleConnect] duplicate connect try"

.field private static final GET_DEVICE_LIST_NEED_TO_CONNECT:Ljava/lang/String; = "Need to connect before GET_DEVICE_LIST request"

.field private static final TAG:Ljava/lang/String; = "ContinuousMessageRunnable"


# instance fields
.field private mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

.field private mIsCheckingClientMsg:Z

.field private mRequestObserver:Lio/grpc/stub/StreamObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditCoreMessage/ClientMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Disconnected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCancellationCause()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->handleNextDefaultMessage(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->handleNextDisconnectEvent(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method private createStreamObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->asyncContinuousMessage(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mRequestObserver:Lio/grpc/stub/StreamObserver;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->handleNextNotify(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->handleNextRespondDeviceList(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->handleNextResponse(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->handleWorkspaceBlockStateChanged(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->printServerMsg(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method

.method private handleNextDefaultMessage(LcoeditCoreMessage/ServerMsg;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    return-void
.end method

.method private handleNextDisconnectEvent(LcoeditCoreMessage/ServerMsg;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNextDisconnectEvent, Failed to process response. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    throw v0
.end method

.method private handleNextNotify(LcoeditCoreMessage/ServerMsg;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->notify(LcoeditCoreMessage/ServerMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNextNotify, Failed to process notify. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    throw v0
.end method

.method private handleNextRespondDeviceList(LcoeditCoreMessage/ServerMsg;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNextRespondDeviceList, Failed to process response device list. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    throw v0
.end method

.method private handleNextResponse(LcoeditCoreMessage/ServerMsg;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNextResponse, Failed to process response. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    throw v0
.end method

.method private handleWorkspaceBlockStateChanged(LcoeditCoreMessage/ServerMsg;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWorkspaceBlockStateChanged, Failed to process response. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    throw v0
.end method

.method private printServerMsg(LcoeditCoreMessage/ServerMsg;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getServerCmd()LcoeditCoreMessage/ServerCmd;

    move-result-object v1

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->hasResponseResult()Z

    move-result v2

    const-string v3, "ServerMsg# "

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# uuid: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNoteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LcoeditCoreMessage/ResponseResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v2, LcoeditCoreMessage/ServerCmd;->RESPONSE:LcoeditCoreMessage/ServerCmd;

    const-string v4, "], workspaceVersion: ["

    const-string v5, "]"

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# checkPoint: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCheckpoint()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], sessionValidTime: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getSessionValidTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], connectedDeviceCnt: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getConnectedDeviceCnt()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceVersion()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->hasPolicyInfo()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ", MaxEditableDeviceCnt: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getPolicyInfo()LcoeditCoreMessage/PolicyInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/PolicyInfo;->getMaxEditableDeviceCnt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], MaxConnectableDeviceCnt: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getPolicyInfo()LcoeditCoreMessage/PolicyInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/PolicyInfo;->getMaxConnectableDeviceCnt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->hasEventInfo()Z

    move-result v2

    const-string v6, "\nServerMsg# "

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# EventInfo,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventType: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getEventInfo()LcoeditCoreMessage/EventInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/EventInfo;->getEventType()LcoeditCoreMessage/EventType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", writable: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getEventInfo()LcoeditCoreMessage/EventInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/EventInfo;->getWritable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getDeviceInfoCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "# DeviceInfo, deviceInfoCount: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_4

    invoke-virtual {p1, v7}, LcoeditCoreMessage/ServerMsg;->getDeviceInfo(I)LcoeditCoreMessage/DeviceInfo;

    move-result-object v8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "{deviceInfo ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " {uid: ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", dvcId: ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", deviceInfoChangeType: ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LcoeditCoreMessage/DeviceInfo;->getDeviceInfoChangeType()LcoeditCoreMessage/DeviceInfoChangeType;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", PermissionType: ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LcoeditCoreMessage/DeviceInfo;->getPermissionType()LcoeditCoreMessage/PermissionType;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]}}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getServerCmd()LcoeditCoreMessage/ServerCmd;

    move-result-object v2

    sget-object v7, LcoeditCoreMessage/ServerCmd;->WORKSPACE_BLOCK_STATE_CHANGE:LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v2, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# isWorkspaceBlocked: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceBlocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceVersion()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->hasCheckpointCoeditopPair()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCheckPointOperationPair(Ljava/lang/String;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public declared-synchronized checkClientMsg()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mIsCheckingClientMsg:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isClientMsgEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Connecting:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    if-eq v0, v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ContinuousMessageRunnable"

    const-string v1, "checkClientMsg, already Interrupted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mRequestObserver:Lio/grpc/stub/StreamObserver;

    if-nez v0, :cond_2

    const-string v0, "ContinuousMessageRunnable"

    const-string v2, "checkClientMsg requestObserver is invalid need to create"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->createStreamObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->takeClientMsg()LcoeditCoreMessage/ClientMsg;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ClientMsg;->getClientCmd()LcoeditCoreMessage/ClientCmd;

    move-result-object v2

    sget-object v3, LcoeditCoreMessage/ClientCmd;->CONNECT:LcoeditCoreMessage/ClientCmd;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    sget-object v3, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Disconnected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    :cond_4
    sget-object v1, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkClientMsg requestObserver.onNext(). ClientMsg cmd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LcoeditCoreMessage/ClientMsg;->getClientCmd()LcoeditCoreMessage/ClientCmd;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mRequestObserver:Lio/grpc/stub/StreamObserver;

    invoke-interface {v1, v0}, Lio/grpc/stub/StreamObserver;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ContinuousMessageRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streaming(), requestObserver.onNext() error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mRequestObserver:Lio/grpc/stub/StreamObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lio/grpc/stub/StreamObserver;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mIsCheckingClientMsg:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ContinuousMessageRunnable"

    return-object v0
.end method

.method public isCheckingClientMsg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mIsCheckingClientMsg:Z

    return v0
.end method

.method public release(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release, caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuousMessageRunnable"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mRequestObserver:Lio/grpc/stub/StreamObserver;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lio/grpc/stub/StreamObserver;->onCompleted()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mRequestObserver:Lio/grpc/stub/StreamObserver;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public setConnectedState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Connecting:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Connected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mIsCheckingClientMsg:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->checkClientMsg()V

    return-void
.end method

.method public setErrorState()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Error:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mConnectionState:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->mIsCheckingClientMsg:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->checkClientMsg()V

    return-void
.end method
