.class public Lcom/samsung/android/smartscan/TaskManager/TaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartScan-TaskManager"


# instance fields
.field private curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

.field private taskDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;",
            ">;"
        }
    .end annotation
.end field

.field private taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

.field private taskLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    iput-object p1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->executeTaskRecursive()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/smartscan/TaskManager/TaskManager;Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;)Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private executeTaskRecursive()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    const-string v1, "SmartScan-TaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur task = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    invoke-virtual {v2}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    iput-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    iget-object v4, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove duplicated tasks, CurTaskType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    invoke-virtual {v6}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", FirstQueuedTask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", SecondQueuedTask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->curTask:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    invoke-virtual {v5}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v2

    invoke-virtual {v4}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v4

    invoke-direct {p0, v5, v2, v4}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->getTaskNumToRemoveDuplicatedTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task removed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;-><init>(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void
.end method

.method private getTaskNumToRemoveDuplicatedTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eq p2, p3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/2addr v2, v3

    if-eq p1, p2, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    if-ne p2, p3, :cond_3

    move v0, v1

    :cond_3
    and-int/2addr p1, v0

    or-int/2addr p1, v2

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    :goto_3
    return v1
.end method


# virtual methods
.method public makeTaskByType(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;
    .locals 1

    sget-object v0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Init:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/smartscan/TaskManager/Tasks/InitTask;

    invoke-direct {p1}, Lcom/samsung/android/smartscan/TaskManager/Tasks/InitTask;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Deinit:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/samsung/android/smartscan/TaskManager/Tasks/DeinitTask;

    invoke-direct {p1}, Lcom/samsung/android/smartscan/TaskManager/Tasks/DeinitTask;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public requestNewTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->makeTaskByType(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->setTaskListener(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->None:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add task in deque : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->getType()Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartScan-TaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskDeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->taskLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    new-instance p1, Lcom/samsung/android/smartscan/TaskManager/TaskManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager$1;-><init>(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
