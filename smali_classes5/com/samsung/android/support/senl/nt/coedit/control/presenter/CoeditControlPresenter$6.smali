.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setDeleteOnlyMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

.field public final synthetic val$set:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;->val$set:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    const-string v1, "setDeleteOnlyMode"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->isClosingState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$6;->val$set:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->setDeleteOnlyMode(Z)V

    return-void
.end method
