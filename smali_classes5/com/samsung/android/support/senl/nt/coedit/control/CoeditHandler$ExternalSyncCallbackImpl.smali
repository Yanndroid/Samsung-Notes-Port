.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalSyncCallbackImpl"
.end annotation


# instance fields
.field public final mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

.field public final mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;->mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;->mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;->mExternalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method
