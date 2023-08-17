.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;

.field public final synthetic val$dvcId:Ljava/lang/String;

.field public final synthetic val$uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;->val$dvcId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;->val$dvcId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl$1;->val$uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
