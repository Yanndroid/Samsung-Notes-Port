.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isValidInternalSnapStart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alreadyCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    const-string v1, "fail to initInternalSnap, already cancelled"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public verifyFail()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    const-string v1, "initInternalSnap# verifyFail"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
