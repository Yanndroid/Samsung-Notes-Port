.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadStrokeRunnable"


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;Ljava/lang/String;LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->readDownloadResponse(Ljava/lang/String;LcoeditObjectMessage/DownloadStrokeResponse;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCancellationCause()V

    return-void
.end method

.method private printResponse(LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LcoeditObjectMessage/DownloadStrokeResponse;->hasBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "size: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditObjectMessage/DownloadStrokeResponse;->getBinary()LcoeditObjectMessage/Binary;

    move-result-object v1

    invoke-virtual {v1}, LcoeditObjectMessage/Binary;->getReadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, LcoeditObjectMessage/DownloadStrokeResponse;->hasResponseResult()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditObjectMessage/DownloadStrokeResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LcoeditObjectMessage/ResponseResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readDownloadResponse(Ljava/lang/String;LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 2

    invoke-virtual {p2}, LcoeditObjectMessage/DownloadStrokeResponse;->hasResponseResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, LcoeditObjectMessage/DownloadStrokeResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->printResponse(LcoeditObjectMessage/DownloadStrokeResponse;)V

    :try_start_0
    invoke-virtual {p2}, LcoeditObjectMessage/DownloadStrokeResponse;->hasBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p2}, LcoeditObjectMessage/DownloadStrokeResponse;->getBinary()LcoeditObjectMessage/Binary;

    move-result-object v1

    invoke-virtual {v1}, LcoeditObjectMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putDownloadStrokeData(Ljava/lang/String;[B)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readDownloadResponse, Failed to DownloadStrokeResponse. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadStrokeRunnable"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadStrokeRunnable"

    return-object v0
.end method

.method public run()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isDownloadStrokeRequestQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->takeDownloadStrokeRequest()LcoeditObjectMessage/DownloadStrokeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;LcoeditObjectMessage/DownloadStrokeRequest;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->asyncDownloadStroke(LcoeditObjectMessage/DownloadStrokeRequest;Lio/grpc/stub/StreamObserver;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to DownloadStroke. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadStrokeRunnable"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadStrokeResponse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
