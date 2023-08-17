.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alreadyCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;->val$externalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v2, "externalChannelOpen# alreadyCanceled"

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method

.method public verifyFail()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;->val$externalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v2, "externalChannelOpen# verifyFail"

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method
