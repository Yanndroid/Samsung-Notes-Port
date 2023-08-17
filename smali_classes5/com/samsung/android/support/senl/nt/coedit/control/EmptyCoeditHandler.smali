.class public Lcom/samsung/android/support/senl/nt/coedit/control/EmptyCoeditHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDeleteOnlyMode()V
    .locals 0

    return-void
.end method

.method public externalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 0

    return-void
.end method

.method public externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 0

    return-void
.end method

.method public externalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 0

    return-void
.end method

.method public externalSnapUpload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 0

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 0

    return-void
.end method

.method public internalSnapRefresh()V
    .locals 0

    return-void
.end method

.method public internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 0

    return-void
.end method

.method public internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 0

    return-void
.end method

.method public isInitializing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSnapEndState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWritePermissionGranted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pauseConcurrency(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public release(Ljava/lang/Runnable;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestReadPermission()V
    .locals 0

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public saveCoeditCache()V
    .locals 0

    return-void
.end method

.method public setCancelled()V
    .locals 0

    return-void
.end method

.method public setComposerContract(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;)V
    .locals 0

    return-void
.end method
