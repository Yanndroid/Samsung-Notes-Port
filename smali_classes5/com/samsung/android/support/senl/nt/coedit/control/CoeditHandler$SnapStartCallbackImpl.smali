.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapStartCallbackImpl"
.end annotation


# instance fields
.field public mSnapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->mSnapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    return-void
.end method


# virtual methods
.method public onSnapCompleted(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapStartCallbackImpl# onSnapCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->t(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->mSnapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onCompleted(Ljava/lang/String;Z)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showDebugToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->initNetworkConnector()V

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapStartCallbackImpl# onSnapError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->t(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->mSnapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->handleSnapStartError(Ljava/lang/String;)V

    return-void
.end method
