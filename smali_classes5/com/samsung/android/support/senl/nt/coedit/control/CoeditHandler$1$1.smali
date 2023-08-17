.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alreadyCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    const-string v1, "internalChannelOpen# alreadyCanceled"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public verifyFail()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    const-string v1, "internalChannelOpen# verifyFail"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
