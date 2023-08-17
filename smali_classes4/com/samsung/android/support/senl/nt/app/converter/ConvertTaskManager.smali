.class public Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONVERTING_STATE_UPDATE_INTERVAL:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "ConvertTaskManager"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

.field private static sReferenceCount:I


# instance fields
.field private mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

.field private mGroupStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

.field private mGroupTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

.field private final mStatusUpdateRunnable:Ljava/lang/Runnable;

.field private mTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mStatusUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/converter/a;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "construct : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertTaskManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->lambda$new$0(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->enableConvertingState(Z)V

    return-void
.end method

.method public static declared-synchronized connect(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->initService(Landroid/content/Context;)V

    const-string p0, "ConvertTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect, reference count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->hasConvertingTask()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized disconnect()V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    if-eqz v2, :cond_0

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    :cond_0
    const-string v1, "ConvertTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect, reference count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sReferenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private enableConvertingState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableConvertingState, enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertTaskManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CONVERT"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1}, Ln2/a;->B()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized hasConvertingTask()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->isInProgress()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initService(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->enableConvertingState(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mStatusUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "ConvertTaskManager"

    const-string v0, "init service"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->getExternalCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getDstType()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;-><init>(II)V

    invoke-virtual {v2, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setState(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;->onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailed#, uuid : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", msg: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConvertTaskManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->disconnect()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;->shutdownAndAwaitTermination()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mStatusUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->enableConvertingState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->startCollector()V

    const-string v0, "ConvertTaskManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeAllTaskGroupOnMap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private removeTaskGroupOnMap(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->getCallerId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private startCollector()V
    .locals 3

    const-string v0, "ConvertTaskManager"

    const-string v1, "startCollector"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_SKIPPED_NOTES_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method private updateAllTaskMapByCancel()V
    .locals 3

    const-string v0, "ConvertTaskManager"

    const-string v1, "updateAllTaskMapByCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getStatus()Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->CANCELLD:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->updateStatus(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized updateStatusMap(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConvertTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatusMap, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getStatus()Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateTaskMapByCancel(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTaskMapByCancel, groupId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertTaskManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

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

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getCallerId()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getGroupId()I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getStatus()Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->CANCELLD:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->updateStatus(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->removeTaskGroupOnMap(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->updateTaskMapByCancel(II)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;->cancel(I)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAll()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->removeAllTaskGroupOnMap()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->updateAllTaskMapByCancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;->cancelAll()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z
    .locals 1
    .param p3    # Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->getCallerId()I

    move-result v0

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->setExternalCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isConverting(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->isInProgress()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->isEmptyTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "converting is blocked"

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->isConverting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "progress in converting"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->updateStatusMap(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mServiceManager:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->setRequestor(Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mExecutor:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskExecutor;->runConvert(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->getTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ConvertTaskManager"

    const-string v0, "put, ConvertTaskGroup is empty"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->mGroupStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->setStatusCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->getTaskList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public put(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method
