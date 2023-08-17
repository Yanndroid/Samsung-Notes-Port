.class public Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;,
        Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskState"

.field private static final sInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->sInfo:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->sInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->addListener(Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V

    return-void
.end method

.method public declared-synchronized countDown(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object v0

    const-string v1, "TaskState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", countDown: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->getCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized countUp(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object v0

    const-string v1, "TaskState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", countUp: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->getCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->countUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRunning(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->isRunning()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSyncBlocked()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "CONVERT"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RESTORE_TASK"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "COEDIT_SERVICE"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

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

.method public removeListener(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->removeListener(Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V

    return-void
.end method

.method public declared-synchronized setIsRunning(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->setIsRunning(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
