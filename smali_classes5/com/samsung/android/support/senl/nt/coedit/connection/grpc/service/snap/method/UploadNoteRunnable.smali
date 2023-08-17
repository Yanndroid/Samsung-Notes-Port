.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final CLOSED:I = -0x2

.field private static final COMPLETED:I = 0x1

.field private static final ERROR:I = -0x1

.field private static final REQUESTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UploadNoteRunnable"


# instance fields
.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

.field private mFailed:Ljava/lang/Throwable;

.field private mIsCompleted:Z

.field private mIsFinished:Z

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mState:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCancellationCause()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsFinished:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mFailed:Ljava/lang/Throwable;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsFinished:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mState:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;LnoteSnapMessage/UploadResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->printResponse(LnoteSnapMessage/UploadResponse;)V

    return-void
.end method

.method private getRequestObserver(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Lio/grpc/stub/StreamObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/UploadRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->asyncUploadNote(Ljava/lang/String;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object p1

    return-object p1
.end method

.method private printResponse(LnoteSnapMessage/UploadResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "workspaceId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/UploadResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/UploadResponse;->hasResponseResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/UploadResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LnoteSnapMessage/ResponseResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestNoteUpload(Lio/grpc/stub/StreamObserver;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/UploadRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "streaming, finish. handler is closing : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UploadNoteRunnable"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mState:I

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsCompleted:Z

    const/4 p3, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->isUploadRequestQueueEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    invoke-virtual {p2}, Lio/grpc/Status$Code;->value()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->takeUploadRequest()LnoteSnapMessage/UploadRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/grpc/stub/StreamObserver;->onNext(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->isUploadRequestQueueEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lio/grpc/stub/StreamObserver;->onCompleted()V

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsCompleted:Z

    :cond_3
    return p3

    :cond_4
    :goto_0
    const-wide/16 p1, 0xa

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return p3
.end method

.method private streaming()I
    .locals 9

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v1, "UploadNoteRunnable"

    const-string v2, "[CS5] streaming(), request"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsFinished:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsCompleted:Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->getRequestObserver(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Lio/grpc/stub/StreamObserver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoteSnapUploadNoteRequest request id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-direct {p0, v3, v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->requestNoteUpload(Lio/grpc/stub/StreamObserver;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CS5-2] streaming(), requestObserver.onNext() error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Lio/grpc/stub/StreamObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v6, 0x1

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streaming, requestID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mFailed:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mFailed:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not finish rpc within 1 minute, the server is likely down"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS5-2] streaming(), finishLatch.await() error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UploadNoteRunnable"

    return-object v0
.end method

.method public run()V
    .locals 4

    const-string v0, "UploadNoteRunnable"

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mIsCompleted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->isUploadRequestQueueEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->streaming()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS5-2] failed to upload note. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
