.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditControllerComposerContractImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;
    }
.end annotation


# instance fields
.field public mErrorCounter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->mErrorCounter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->onDeviceListUpdate(Ljava/util/List;)V

    return-void
.end method

.method private hideInitProgress(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDeviceListUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    const-string v1, "onDeviceListUpdate"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->isClosingState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->onListUpdate(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public canShowProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->canShowProgress()Z

    move-result v0

    return v0
.end method

.method public handleError(JLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleError# msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isServerError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isServerError(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isConcurrencyError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isConcurrencyError(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isClientError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isClientError(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", checkPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditControlPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->releaseUiThreadHandler()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->initUiThreadHandler()V

    invoke-static {p3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isServerError(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_server_error_check_app_update:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->g(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string v1, "WORKSPACE_ERROR_BLOCK"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->c(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "CLIENT_ERROR_FORCE_REFRESH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "WORKSPACE_ERROR_RESET"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->hideInitProgress(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_can_not_use_note_nonnection_not_unstable:I

    goto :goto_0

    :cond_4
    invoke-static {p3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isClientUpdateError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->mErrorCounter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$ErrorCounter;->isMaxCounted(JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->i(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "RESET_WORKSPACE_DURATION"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "SNAP_ERROR_VIEW_REATTACH"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public handleExceedMaxConnectDevice(J)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_disable_edit_mode_for_exceed_max_editable_device_count:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleExceedMaxConnectDevice"

    invoke-static {v0, v3, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->g(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hideProgress(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isEditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public onDeviceListUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisableOfflineEditMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_disable_edit_mode_for_offline:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDisableOfflineEditMode"

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->g(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->setRequestUpdate(Z)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->showProgress(Ljava/lang/String;)Z

    return-void
.end method
