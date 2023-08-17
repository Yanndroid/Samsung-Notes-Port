.class public Lcom/samsung/android/support/senl/nt/coedit/control/EmptyComposerContract;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getXmlDataWeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideInitProgress(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public hideProgress(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCoeditUpdateListenerNonNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeleteOnlyMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFixedReadPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickCloseComposer()V
    .locals 0

    return-void
.end method

.method public onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public requestReopen(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestSaveToDevice(I)V
    .locals 0

    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 0

    return-void
.end method

.method public setFixedReadPermission(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRequestUpdate(Z)V
    .locals 0

    return-void
.end method

.method public showProgress(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
