.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;
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
    name = "ExternalSnapCallbackImpl"
.end annotation


# instance fields
.field public final mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

.field public final mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    return-void
.end method


# virtual methods
.method public onSnapCompleted(Ljava/lang/String;Z)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalSnapCallbackImpl# onSnapCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->t(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalSnapCallbackImpl# onSnapError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->t(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method
