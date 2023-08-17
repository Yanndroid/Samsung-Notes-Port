.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskDocumentScan"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->sendMessage(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendMessage(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)I

    move-result v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)V

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;ILjava/util/List;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->TAG:Ljava/lang/String;

    const-string v1, "clear "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImageHandler;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
