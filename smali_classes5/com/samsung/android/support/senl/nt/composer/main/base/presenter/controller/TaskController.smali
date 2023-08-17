.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$UiCallbackWrapper;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$OnProgressCancelListenerImpl;
    }
.end annotation


# static fields
.field private static final PROGRESS_DELAY:I = 0xfa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLivingActivity:Z

.field private mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

.field private final mHandler:Landroid/os/Handler;

.field private mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

.field private mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

.field private final mOnProgressCancelListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$OnProgressCancelListenerImpl;

.field private final mPendingJobList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

.field private final mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

.field private final mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

.field private rNotification:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$OnProgressCancelListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$OnProgressCancelListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/c;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mOnProgressCancelListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$OnProgressCancelListenerImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->setOnCancelListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$OnCancelListener;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingJobList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingJobList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->notify(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->release()V

    return-void
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notify(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
            ">(TR;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify# isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isLivingActivity:Z

    if-nez v1, :cond_0

    const-string v1, "notify# activity is invalid."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    invoke-direct {v0, p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->resumeCoedit()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    return-void
.end method


# virtual methods
.method public addPendingJob(Ljava/lang/Runnable;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPendingJob# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingJobList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    :cond_0
    return-void
.end method

.method public clearTask()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isKeepTaskDuringActivityRecreation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->release()V

    :cond_0
    return-void
.end method

.method public execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;",
            "R::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
            ">(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
            "TI;TR;>;TI;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;Z)Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZZ)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;",
            "R::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
            ">(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
            "TI;TR;>;TI;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;ZIZ)Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isNeedToCheckStorage()Z

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isNeedToCheckNoteSize()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToEdit(ZZZ)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "execute# err: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->checkPermission(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p5, "execute# no permissions"

    invoke-static {v0, p5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isNeededToWaitPermission()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->setPendingTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->setWaitingPermission(Z)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    if-eqz p4, :cond_4

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$UiCallbackWrapper;

    invoke-direct {p2, p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$UiCallbackWrapper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isProgressBarStyle()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgressBarDialog()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setProgressBarUpdater(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$IProgressBarUpdater;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {p2, p5, v2, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(IIZ)V

    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    if-eqz p2, :cond_7

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->pauseCoedit()V

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->run()V

    return v5
.end method

.method public execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;",
            "R::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
            ">(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
            "TI;TR;>;TI;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;ZZ)Z"
        }
    .end annotation

    const/16 v5, 0xfa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZIZ)Z

    move-result p1

    return p1
.end method

.method public executePendingTask()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePendingTask# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->isSync:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastTask()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    return-void
.end method

.method public isAvailableToReload()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isAvailableToReload()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAvailableToSave()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isAvailableToSave()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAvailableToUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isAvailableToUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isKeepTaskDuringActivityRecreation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->isKeepTaskDuringActivityRecreation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning(Z)Z

    move-result v0

    return v0
.end method

.method public isRunning(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRunning(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRunning# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachView# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isLivingActivity:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->notify(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mCoeditPauseController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;)V

    :cond_1
    return-void
.end method

.method public onDetachView()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachView# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isLivingActivity:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isKeepTaskDuringActivityRecreation()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->release()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-virtual {v1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->rNotification:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->isWaitingPermission:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->onRequestPermissionsResult(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->executePendingTask()Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public resetOnCancelListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mOnProgressCancelListenerImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$OnProgressCancelListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->setOnCancelListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$OnCancelListener;)V

    return-void
.end method

.method public setPendingTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;",
            "R::",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
            ">(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
            "TI;TR;>;TI;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingTask# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/d;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->mPendingTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;

    return-void
.end method
