.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final DELAYS_FOR_RETRY_TIME_MILLIS:I = 0x7d0

.field private static final HTTP_RESULT_CODE_OK:I = 0xc8

.field private static final MAX_DOWNLOAD_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "NT/DownloadNoteRunnable"


# instance fields
.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCancellationCause()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;LnoteSnapMessage/DownloadResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->printResponse(LnoteSnapMessage/DownloadResponse;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->requestDownSync(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V

    return-void
.end method

.method private checkRetryDownloadNote()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->isInterrupt()Z

    move-result v0

    const-string v1, "NT/DownloadNoteRunnable"

    if-eqz v0, :cond_1

    const-string v0, "checkRetryDownloadNote, invalid result, but retry ignore, already interrupted"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getRetryCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    return-void

    :cond_2
    const-string v0, "checkRetryDownloadNote, retry DownloadNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRetryDownloadNote, InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->increaseRetryCount()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->downloadNote()V

    return-void
.end method

.method private downloadNote()V
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->setDownloadXmlData(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->printRequest(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->asyncDownloadNote(Ljava/lang/String;Lio/grpc/stub/StreamObserver;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->releaseByteArrayInOutStream(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->checkRetryDownloadNote()V

    goto :goto_3

    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->isInterrupt()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    sget-object v1, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "NT/DownloadNoteRunnable pending interrupted, download note ignored"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "NT/DownloadNoteRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS7-2] Failed to download note. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download note error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->releaseByteArrayInOutStream(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->checkRetryDownloadNote()V

    throw v1
.end method

.method private printRequest(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request# RequestId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], uuid: ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNoteId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printResponse(LnoteSnapMessage/DownloadResponse;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->hasBinaryInfo()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "{binaryInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinaryInfo()LnoteSnapMessage/BinaryInfo;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/BinaryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinaryInfo()LnoteSnapMessage/BinaryInfo;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/BinaryInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinaryInfo()LnoteSnapMessage/BinaryInfo;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/BinaryInfo;->getLength()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->hasBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "{binary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinary()LnoteSnapMessage/Binary;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/Binary;->getReadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chunk: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinary()LnoteSnapMessage/Binary;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->hasResponseResult()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " uuid: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNoteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", workspaceId: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LnoteSnapMessage/ResponseResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseByteArrayInOutStream(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteUtils;->releaseByteArrayOutputStream(Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7-2] releaseByteArrayInOutStream, Exception :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NT/DownloadNoteRunnable"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestDownSync(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDownSync, ignore, resultCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NT/DownloadNoteRunnable"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;->getInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil;->requestDownSync(Landroid/content/Context;Ljava/io/ByteArrayInputStream;Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "NT/DownloadNoteRunnable"

    return-object v0
.end method

.method public run()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "NT/DownloadNoteRunnable"

    const-string v3, "run, start"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->downloadNote()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streaming, end, duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", try Count: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getRetryCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
