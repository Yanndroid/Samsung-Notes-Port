.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setFixedReadPermission(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

.field public final synthetic val$message:Ljava/lang/String;

.field public final synthetic val$set:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->val$set:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->val$set:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->val$set:Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$4;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->setFixedReadPermission(ZLjava/lang/String;)V

    return-void
.end method
