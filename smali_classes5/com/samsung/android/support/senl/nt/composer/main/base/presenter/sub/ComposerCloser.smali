.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

.field private mLastCause:Ljava/lang/String;

.field private mPendingActionAfterOnActivityResult:Ljava/lang/Runnable;

.field private mPendingActionAfterOnDestroy:Ljava/lang/Runnable;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BaseComposerPresenter$ComposerCloser"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-void
.end method

.method private closeDialogFragment(Landroid/app/Activity;)V
    .locals 3

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "Composer"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private closeDrawingActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isRunningDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getExecuteOtherActivityController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getExecuteOtherActivityController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;->finishBrush()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTaskRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private printFinishCause()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mLastCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPendingActionToTask(Ljava/lang/Runnable;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->isTaskRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    const-string v2, "closeTopWindow# task is running"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->addPendingJob(Ljava/lang/Runnable;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public closeComposer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeComposer uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pendingAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mPendingActionAfterOnDestroy:Ljava/lang/Runnable;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->closeTopWindow(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeTopWindow(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    const-string v1, "closeTopWindow#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->closeDrawingActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mPendingActionAfterOnActivityResult:Ljava/lang/Runnable;

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->setPendingActionToTask(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->getLastRequestCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->finishActivity(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->closeDialogFragment(Landroid/app/Activity;)V

    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public finish(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "finish : "

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", activity is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isLockTaskMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mLastCause:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish: f: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " d:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mPendingActionAfterOnActivityResult:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mPendingActionAfterOnActivityResult:Ljava/lang/Runnable;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->printFinishCause()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mPendingActionAfterOnDestroy:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->mPendingActionAfterOnDestroy:Ljava/lang/Runnable;

    return-void
.end method
