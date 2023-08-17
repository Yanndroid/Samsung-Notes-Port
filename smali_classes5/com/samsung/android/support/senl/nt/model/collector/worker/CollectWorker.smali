.class public Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;,
        Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificTriggerStrategy;,
        Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificNoteStrategy;,
        Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;,
        Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;
    }
.end annotation


# static fields
.field private static final BLOCKING_QUEUE_CAPACITY:I = 0x4e20

.field private static final BLOCKING_QUEUE_CAPACITY_PRIORITY:I = 0x64

.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;


# instance fields
.field private final mCollectParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

.field private final mPausedPdfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

.field private final mPriorityNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CollectWorker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPausedPdfMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mCollectParamMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;-><init>(IILjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPriorityNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v3, 0x4e20

    invoke-direct {v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;-><init>(IILjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;-><init>(IILjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    return-void
.end method

.method private addPausedPdf(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->dumpPausedPdfMap()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPausedPdfMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionCaller()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cancelPriorityNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    const-string v0, "cancelPriorityNoteCollect uuid is empty !!!"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPriorityNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->cancelAndRemoveTask(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->cancelAndRemoveTask(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPriorityNoteCollect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dumpPausedPdfMap()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPausedPdfMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpPdfStateMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->sInstance:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->sInstance:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->sInstance:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPdfState()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPausedPdfMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;->RESUME:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;->PAUSE:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    :goto_0
    return-object v0
.end method

.method private needToSkipRunNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getTriggerType()I

    move-result p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getActiveTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getPausedTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    goto :goto_2

    :cond_5
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToSkipRunNoteCollect uuid/result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private needToSkipRunPdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getTriggerType()I

    move-result p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getActiveTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getPausedTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    goto :goto_2

    :cond_5
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToSkipRunPdfCollect uuid/result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private removePausedPdf(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->dumpPausedPdfMap()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPausedPdfMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removePausedPdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getContainsPausedTasks(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor$CollectTask;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getPausedTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mCollectParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePausedPdfCollect uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runNoteCollect uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->needToSkipRunNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "runNoteCollect skipped"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runPdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runPdfCollect uuid/pdfState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getPdfState()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->needToSkipRunPdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "runPdfCollect skipped"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getPdfState()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;->PAUSE:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->addPausedTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runPriorityNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runPriorityNoteCollect, uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->cancelPriorityNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPriorityNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setNoteJobFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getNoteJobFinishCallback()Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mCollectParamMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;->onFinishJob()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getCancelType()I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->SAVE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->getValue()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getCancelType()I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->AUTO_TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificTriggerStrategy;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificTriggerStrategy;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/worker/b;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;)V

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificNoteStrategy;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificNoteStrategy;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/worker/a;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    const-string v0, "cancelCollect uuid is empty !!!"

    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->cancelActiveTask()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getActiveTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    check-cast v4, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->isCancelable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->cancel()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getLastModifiedAt()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->setNoteReadyState(Ljava/lang/String;J)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from activeTasks, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    check-cast v4, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->isCancelable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from queue, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getPausedTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    check-cast v4, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->isCancelable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from pausedTasks, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCollect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPriorityNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mNoteThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCollectFailed(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCollectFailed# taskType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->deleteReadyState(Ljava/lang/String;)V

    return-void
.end method

.method public onCollectFinished(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCollectFinished# uuid/taskType/hasPdf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;->NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mCollectParamMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->runPdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_1

    :cond_0
    const-string p2, "onCollectFinished# invalid collectParam"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mCollectParamMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->setNoteJobFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->setDoneState(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCollectStarted(Ljava/lang/String;JLcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCollectStarted# uuid/taskType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;->NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    if-ne v0, p4, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->setNoteReadyState(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->setPdfReadyState(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pausePdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePdfCollect key/caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionCaller()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->addPausedPdf(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getActiveTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->cancel()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->addPausedTask(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePdfCollect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resumePdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePdfCollect key/caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPdfActionCaller()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->removePausedPdf(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getPdfState()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;->PAUSE:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$PdfState;

    if-ne p1, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->getPausedTasks()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getCollectParam()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mPdfThreadPoolExecutor:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor;->clearPausedTasks()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePdfCollect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public runCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->removePausedPdfCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->mCollectParamMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPriority()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->IMMEDIATELY:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->runPriorityNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->runNoteCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    :goto_0
    return-void
.end method

.method public setDoneState(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setDoneState(Ljava/lang/String;)V

    return-void
.end method

.method public setNoteReadyState(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setReadyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public setPdfReadyState(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setReadyState(Ljava/lang/String;JI)V

    return-void
.end method
