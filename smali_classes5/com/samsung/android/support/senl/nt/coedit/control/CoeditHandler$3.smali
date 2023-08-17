.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$coeditCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

.field public final synthetic val$msg:Ljava/lang/String;

.field public final synthetic val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->val$coeditCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeComposeCoeditCache(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    const-string v1, "internalSnapRestart"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isClosingState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->val$coeditCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->internalSnapRestart(Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;Ljava/lang/String;)V

    return-void
.end method
