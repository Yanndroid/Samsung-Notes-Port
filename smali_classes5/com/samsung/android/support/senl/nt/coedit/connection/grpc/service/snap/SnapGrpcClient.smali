.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapGrpcClient"


# instance fields
.field private mDownloadNoteRunnable:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;

.field private final mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

.field private mMultiThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "SnapGrpcClient_Multi"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mMultiThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    return-void
.end method

.method private requestDownloadNote(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDownloadNote(), message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnapGrpcClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mDownloadNoteRunnable:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mDownloadNoteRunnable:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;

    return-void
.end method

.method private requestGetNoteLatestInfo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestGetNoteLatestInfo(), message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnapGrpcClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->run()V

    return-void
.end method

.method private requestGetObjectUploadUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isInvalidObjectUploader()Z

    move-result v0

    const-string v1, "SnapGrpcClient"

    if-eqz v0, :cond_0

    const-string p1, "requestGetObjectUploadUrl(), failed by null stub"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGetObjectUploadUrl(), message : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mMultiThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/GetObjectUploadUrlRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/GetObjectUploadUrlRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestStart(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestStart(), message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnapGrpcClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    const-string v0, "requestStart - SnapGrpcClient"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->start(Ljava/lang/String;)V

    return-void
.end method

.method private requestStop(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestStop(), message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapGrpcClient"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    const-string v1, "requestStop - SnapCoeditClient"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->stop(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private requestUploadNote(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUploadNote(), message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnapGrpcClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->run()V

    return-void
.end method


# virtual methods
.method public getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mDownloadNoteRunnable:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->interrupt()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mDownloadNoteRunnable:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mMultiThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mMultiThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->mSnapData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized request(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :try_start_0
    const-string v0, "SnapGrpcClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request(), unexpected method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", message : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->requestGetNoteLatestInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->requestDownloadNote(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->requestUploadNote(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->requestGetObjectUploadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->requestStop(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->requestStart(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
