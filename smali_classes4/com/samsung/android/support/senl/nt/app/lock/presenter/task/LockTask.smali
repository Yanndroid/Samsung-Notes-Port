.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final TAG:Ljava/lang/String; = "LockTask"


# instance fields
.field public mIsLock:Z

.field public mLockTaskSuccess:Z

.field public mNeedResult:Z

.field private final mPostRunnable:Ljava/lang/Runnable;

.field public mShowWidgetNoteWarning:Z

.field private final taskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "LockTask"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mIsLock:Z

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mShowWidgetNoteWarning:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mNeedResult:Z

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mPostRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->taskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private toCallableSetLockNotes(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$2;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)V

    return-object v0
.end method

.method private toCallableSetUnLockNotes(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "LockTask"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mIsLock:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->toCallableSetLockNotes(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->toCallableSetUnLockNotes(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v2, 0x1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->taskResult:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method public onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mPostRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mShowWidgetNoteWarning:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showWidgetNoteWarning(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mLockTaskSuccess:Z

    if-nez p2, :cond_3

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_3
    :goto_0
    return-void
.end method
