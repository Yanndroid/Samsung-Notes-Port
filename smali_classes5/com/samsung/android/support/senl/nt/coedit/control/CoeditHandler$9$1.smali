.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;
.super Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->internalSnapStart(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

.field public final synthetic val$lastCheckPoint:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->val$lastCheckPoint:J

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    return-void
.end method


# virtual methods
.method public onSnapCompleted(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->val$lastCheckPoint:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalSnapStart# onSnapCompleted, isSnapUploaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->k(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "succeed to internalSnapStart, but cancelled"

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->onSnapError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setSnapUploadCompleted(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->onSnapCompleted(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;->val$lastCheckPoint:J

    const-string v3, "internalSnapStart# onSnapError"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;JLjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;->onSnapError(Ljava/lang/String;)V

    return-void
.end method
