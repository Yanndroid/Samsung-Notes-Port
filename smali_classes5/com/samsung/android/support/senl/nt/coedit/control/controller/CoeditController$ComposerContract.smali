.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ComposerContract"
.end annotation


# virtual methods
.method public abstract canShowProgress()Z
.end method

.method public abstract handleError(JLjava/lang/String;)V
.end method

.method public abstract handleExceedMaxConnectDevice(J)V
.end method

.method public abstract hideProgress(Ljava/lang/String;)V
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract onDeviceListUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDisableOfflineEditMode(Z)V
.end method

.method public abstract setRequestUpdate(Z)V
.end method

.method public abstract showProgress(Ljava/lang/String;)V
.end method
