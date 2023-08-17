.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;

.field public final synthetic val$msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->reconnect(Ljava/lang/String;)V

    return-void
.end method
