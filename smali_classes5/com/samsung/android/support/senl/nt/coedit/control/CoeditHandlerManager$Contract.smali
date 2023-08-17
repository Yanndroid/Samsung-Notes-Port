.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation


# virtual methods
.method public abstract canShowProgress()Z
.end method

.method public abstract getWorkspaceId()Ljava/lang/String;
.end method

.method public abstract getXmlDataWeight()I
.end method

.method public abstract hideInitProgress(Ljava/lang/String;)V
.end method

.method public abstract hideProgress(Ljava/lang/String;)Z
.end method

.method public abstract isDeleteOnlyMode()Z
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isFixedReadPermission()Z
.end method

.method public abstract onClickCloseComposer()V
.end method

.method public abstract onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onListUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestReopen(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract requestSaveToDevice(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setDeleteOnlyMode(Z)V
.end method

.method public abstract setFixedReadPermission(ZLjava/lang/String;)V
.end method

.method public abstract setRequestUpdate(Z)V
.end method

.method public abstract showProgress(Ljava/lang/String;)Z
.end method
