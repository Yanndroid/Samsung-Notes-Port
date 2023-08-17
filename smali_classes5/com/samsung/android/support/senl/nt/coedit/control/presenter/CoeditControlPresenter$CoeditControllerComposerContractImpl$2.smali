.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->hideInitProgress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$2;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->hideInitProgress(Ljava/lang/String;)V

    return-void
.end method
