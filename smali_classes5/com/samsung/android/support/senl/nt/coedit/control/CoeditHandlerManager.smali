.class public Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;,
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;,
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$RunningStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditHandlerManager"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;


# instance fields
.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLastCheckedComposerRunning:Z

.field private final mRunningStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$RunningStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->lambda$releaseHandler$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;Ljava/util/concurrent/CountDownLatch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->lambda$initCoeditHandlerContract$0(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;Ljava/util/concurrent/CountDownLatch;Z)V

    return-void
.end method

.method private cancelWithRelease(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWithRelease, uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHandlerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->cancel(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;->execute(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/cancelWithRelease"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->releaseHandler(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;Ljava/lang/String;)V

    return-void
.end method

.method private checkCoeditWithComposerRunningState()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mIsLastCheckedComposerRunning:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "CoeditHandlerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCoeditWithComposerRunningState, composerRunningState changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mIsLastCheckedComposerRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mIsLastCheckedComposerRunning:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$RunningStateListener;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mIsLastCheckedComposerRunning:Z

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$RunningStateListener;->onComposerRunningStateChanged(Z)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyCoeditHandler;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyCoeditHandler;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    monitor-enter v1

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CoeditHandlerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandler, handlerMap, add: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestUser: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", backtrace : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->checkCoeditWithComposerRunningState()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CoeditHandlerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHandler, handlerMap, requestUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", handlerUser: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyCoeditHandler;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyCoeditHandler;-><init>()V

    monitor-exit v1

    return-object p1

    :cond_2
    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->sInstance:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->sInstance:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->sInstance:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isCoeditRunning(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;Z)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CoeditHandlerManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isCoeditRunning, do not need to check user, handler for uuid["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v3

    if-ne v3, p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz p3, :cond_5

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getState()I

    move-result v2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCoeditRunning, uuid: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestUser: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", handlerUser: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const-string p1, "null"

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object p1

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isOpened: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", state: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v3
.end method

.method private isCoeditWithComposerRunning(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;Z)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$initCoeditHandlerContract$0(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;Ljava/util/concurrent/CountDownLatch;Z)V
    .locals 0

    sget-object p4, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    new-instance p4, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;

    invoke-direct {p4, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V

    invoke-interface {p1, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->setComposerContract(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$releaseHandler$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseHandler finished, caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHandlerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/releaseHandler"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->removeCoeditHandler(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;->execute(Z)V

    :cond_0
    return-void
.end method

.method private removeCoeditHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    const-string v1, "CoeditHandlerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCoeditHandler, handlerMap, remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", backtrace : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->checkCoeditWithComposerRunningState()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->checkWaitingExternalSnap()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel, uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CoeditHandlerManager"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->setCancelled()V

    return-object p1
.end method

.method public checkDeleteOnlyMode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->checkDeleteOnlyMode()V

    return-void
.end method

.method public checkWaitingExternalSnap()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->isExceedExternalSnap()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->wakeExternalSnap()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public externalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->External:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p2

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->externalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    return-void
.end method

.method public externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    return-void
.end method

.method public externalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->External:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->externalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    return-void
.end method

.method public externalSnapUpload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->externalSnapUpload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    return-void
.end method

.method public forceCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CoeditHandlerManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceCancel ignore, note run with composer caller: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uuid: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceCancel, uuid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/forceCancel"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->cancelWithRelease(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V

    return-void
.end method

.method public getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getHandlerCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHandlers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasWaitingStateListeners()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initCoeditHandlerContract(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCoeditHandlerContract, current handler is not Internal Handler, uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHandlerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/a;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/a;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;Ljava/util/concurrent/CountDownLatch;)V

    const-string p2, "initCoeditHandlerContract"

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->cancelWithRelease(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initCoeditHandlerContract, await failed, InterruptedException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;

    invoke-direct {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->setComposerContract(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;)V

    return-void
.end method

.method public internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V

    return-void
.end method

.method public internalSnapRefresh(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->internalSnapRefresh()V

    return-void
.end method

.method public internalSnapRestart(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V

    return-void
.end method

.method public internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    return-void
.end method

.method public isCoeditInitializing(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->isInitializing()Z

    move-result p1

    return p1
.end method

.method public isCoeditRunning(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCoeditWithComposerRunning()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    if-ne v3, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCoeditWithComposerRunning, uuid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditHandlerManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isCoeditWithComposerRunning(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isCoeditWithExternalRunning(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;Z)Z

    move-result p1

    return p1
.end method

.method public isCoeditWithExternalSyncRunning(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->External:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;Z)Z

    move-result p1

    return p1
.end method

.method public isCoeditWithUpDownloaderRunning(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;Z)Z

    move-result p1

    return p1
.end method

.method public isSnapEndState(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->isSnapEndState()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSnapEndState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CoeditHandlerManager"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isWritePermissionGranted(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->isWritePermissionGranted()Z

    move-result p1

    return p1
.end method

.method public pauseConcurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public registerExternalSnap(Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerRunningStateListener(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$RunningStateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized releaseHandler(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "CoeditHandlerManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "releaseHandler, ignore, handler is invalid, caller: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/b;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/b;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/releaseHandler"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v1, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->release(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :try_start_2
    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;->execute(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestReadPermission(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->requestReadPermission()V

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->resumeConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public saveCoeditCache(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getHandler(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;->saveCoeditCache()V

    return-void
.end method

.method public unregisterExternalSnap(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;->isDownload()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mWaitingStateListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRunningStateListener(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->mRunningStateListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
