.class public Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerManagerContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditControlPresenter"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

.field private mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

.field private mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->isEnableFixedReadPermission(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->requestReopenDirectly(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->requestSaveToDevice(I)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setCheckDeleteOnlyModeTimer()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setDeleteOnlyMode(Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setFixedReadPermission(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showCriticalDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showCriticalErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method private isEnableFixedReadPermission(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->isCoeditUpdateListenerNonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->isFixedReadPermission()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private requestReopen(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeComposeCoeditCache(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestReopenDirectly(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Coedit:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidSingleActionEvent(Z[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestReopenDirectly# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CoeditControlPresenter"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    invoke-static {v3, v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingSingleActionEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->releaseNetworkConnector()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditGrpcPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->refreshForReopen()V

    const-string v1, "requestReopenDirectly"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->requestReopen(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private requestSaveToDevice(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->requestSaveToDevice(I)V

    return-void
.end method

.method private setCheckDeleteOnlyModeTimer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    const-string v1, "setCheckDeleteOnlyModeTimer"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->isClosingState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$7;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setDeleteOnlyMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setFixedReadPermission(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->isEnableFixedReadPermission(Z)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;ZLjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showCriticalDialog(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Coedit:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidSingleActionEvent(Z[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCriticalDialog# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditControlPresenter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingSingleActionEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditGrpcPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->refreshForReopen()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    const-string p1, "showCriticalDialog ignore, activity reference is invalid"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;->init(Ljava/lang/ref/WeakReference;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;->showCriticalDialog(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;)V

    return-void
.end method

.method private showCriticalErrorDialog(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->releaseNetworkConnector()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkDeleteOnlyMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->getXmlDataWeight()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDeleteOnlyMode weightCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditControlPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xa410

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->isDeleteOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "checkDeleteOnlyMode setDeleteOnlyMode true"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setDeleteOnlyMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setCheckDeleteOnlyModeTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleSnapStartError(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapStartCallbackImpl# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoeditControlPresenter"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SNAP_ERROR_SET_XML_FAIL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_can_not_use_note_changed_to_view_mode:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setFixedReadPermission(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isServerError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_server_error_check_app_update_and_can_not_use_co_edit:I

    goto :goto_0

    :cond_1
    const-string v2, "SERVER_ERROR_UNKNOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SNAP_ERROR_EMPTY_XML_FAIL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "SNAP_ERROR_UPLOAD_FAIL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Fail to upload coedit note"

    goto :goto_1

    :cond_3
    const-string p1, "Fail to download coedit note"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showDebugToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isSnapUploadCompleted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_unexpected_server_error_try_again_later:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_could_not_create_shared_note_try_again_later:I

    goto :goto_0

    :goto_3
    return-void
.end method

.method public initCoeditController()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerManagerContractImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerManagerContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->initCoeditController(Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;)V

    return-void
.end method

.method public initNetworkConnector()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->initNetworkReconnector()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->registerNetworkCallback(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$Callback;)V

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritePermissionGranted()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isValid()Z

    move-result v0

    const-string v1, "CoeditControlPresenter"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "isWritePermissionGranted, mCoeditManager not created yet"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, "isWritePermissionGranted, use offline edit, data network is not available"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isRequestUpdateCorrupted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_can_not_use_note_nonnection_not_unstable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showToast(Ljava/lang/String;)V

    return v3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    const-string v4, "NETWORK_ISSUE"

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isConcurrencyPaused(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isWritePermissionGranted, use offline edit, concurrency paused by network issue"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isRequestUpdateCorrupted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->requestPermission(Z)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditGrpcPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->isConnectionUnstable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_can_not_use_note_nonnection_not_unstable:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_can_not_use_note_maximum_edit_mode:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showToast(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "7650"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v0
.end method

.method public onAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    const-string v1, "onAvailable"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public onLost()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    const-string v1, "NETWORK_ISSUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I

    return-void
.end method

.method public releaseCoeditController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/coedit/view/DialogManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mActivityRef:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public releaseNetworkConnector()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->unregisterNetworkCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->releaseNetworkReconnector()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mActivityRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setServerCheckPoint(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->setServerCheckPoint(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CoeditControlPresenter"

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServerCheckPoint : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setServerCheckPoint(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServerCheckPoint, ignore, path: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], setServerCheckPoint : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopCoeditManager()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->stop()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCoeditManager# end, uuid: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], serverCheckPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoeditControlPresenter"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setServerCheckPoint(J)V

    return-void
.end method

.method public waitRelease()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isValid()Z

    move-result v1

    const-string v2, "CoeditControlPresenter"

    if-nez v1, :cond_0

    const-string v0, "waitRelease finish, CoeditManager is released"

    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isWorkingConcurrency()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "waitRelease finish, concurrency is not working"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v1

    const-string v3, "COEDIT_RELEASE"

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isConcurrencyPaused(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "waitRelease finish, concurrency is paused for coedit_release"

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitRelease wait, concurrency is working and not paused, count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitRelease wait, exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method
