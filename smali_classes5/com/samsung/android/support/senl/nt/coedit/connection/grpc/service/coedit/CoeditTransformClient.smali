.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditTransformClient"


# instance fields
.field private final mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "CoeditTransformClient"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;)V

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    return-void
.end method

.method private requestCompose(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCompose(), COMPOSE message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditTransformClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isComposeRequestEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestMultipleTransform(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMultipleTransform(), MULTIPLE TRANSFORM message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditTransformClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    const-string p1, "requestMultipleTransform(), failed, threadpool is invalid"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
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

    const-string v0, "CoeditTransformClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string v0, "requestStart - CoeditTransformClient"

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

    const-string v1, "CoeditTransformClient"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string v1, "requestStop - CoeditTransformClient"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/data/GrpcData;->stop(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private requestTransform(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestTransform(), TRANSFORM message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditTransformClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    const-string p1, "requestTransform(), failed, threadpool is invalid"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformRequestEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private requestTransformWithMultiple(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestTransformWithMultiple(), TRANSFORM WITH MULTIPLE message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditTransformClient"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    const-string p1, "requestTransformWithMultiple(), failed, threadpool is invalid"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformWithMultipleRequestEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformWithMultipleRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformWithMultipleRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    return-object v0
.end method

.method public refreshForReopen()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CoeditTransformClient"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method public request(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->mTransformData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isInvalidStub()Z

    move-result v0

    const-string v1, "CoeditTransformClient"

    if-eqz v0, :cond_0

    const-string p1, "request(), failed, stub is invalid"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request(), unexpected message : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->requestCompose(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->requestTransformWithMultiple(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->requestMultipleTransform(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->requestTransform(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->requestStop(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->requestStart(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
