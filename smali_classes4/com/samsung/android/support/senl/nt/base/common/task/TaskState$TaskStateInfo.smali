.class Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskStateInfo"
.end annotation


# instance fields
.field private mIsRunning:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskCount:I

.field private final mType:Ljava/lang/String;
    .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$Type;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mType:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized notifyStateChanged()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mIsRunning:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;->onTaskStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized countDown()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized countUp()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I

    return v0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mIsRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mTaskCount:I
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

.method public declared-synchronized removeListener(Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsRunning(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mIsRunning:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->mIsRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateInfo;->notifyStateChanged()V
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
