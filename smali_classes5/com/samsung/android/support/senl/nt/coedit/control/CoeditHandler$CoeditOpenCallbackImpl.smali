.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditOpenCallbackImpl"
.end annotation


# instance fields
.field public mCoeditCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;->mCoeditCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;->mCoeditCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;->onCompleted(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showDebugToast(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
