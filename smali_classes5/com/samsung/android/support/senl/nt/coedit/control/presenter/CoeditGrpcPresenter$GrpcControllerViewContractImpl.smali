.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GrpcControllerViewContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDeviceListChange(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->handleDeviceListChange(Ljava/lang/String;)V

    return-void
.end method

.method public onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditControlPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showDebugToast(Ljava/lang/String;)V

    return-void
.end method
