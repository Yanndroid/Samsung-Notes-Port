.class public interface abstract Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canShowProgress()Z
.end method

.method public abstract getAbnormalReleased(Ljava/lang/String;)I
.end method

.method public abstract getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastDownloadedCheckPoint(Ljava/lang/String;)J
.end method

.method public abstract getMimeType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleExceedMaxConnectDevice(J)V
.end method

.method public abstract hideProgress(Ljava/lang/String;)V
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isLocalDataChanged(Ljava/lang/String;)Z
.end method

.method public abstract isMainThread()Z
.end method

.method public abstract isNetworkReconnectDisabled()Z
.end method

.method public abstract isReconnectAvailable()Z
.end method

.method public abstract isSnapUploadCompleted(Ljava/lang/String;)Z
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

.method public abstract onError(JLjava/lang/String;)V
.end method

.method public abstract releaseForReconnect(Ljava/lang/String;)V
.end method

.method public abstract releaseJwt()V
.end method

.method public abstract requestDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestReconnect(Ljava/lang/String;)V
.end method

.method public abstract requestUploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract restoreUndrawnData(Ljava/lang/String;)V
.end method

.method public abstract runOnUiThread(J)V
.end method

.method public abstract setAbnormalReleased(Ljava/lang/String;I)V
.end method

.method public abstract setDisableOfflineEditMode(Z)V
.end method

.method public abstract setLastDownloadedCheckPoint(Ljava/lang/String;J)V
.end method

.method public abstract setRequestUpdate(Ljava/lang/String;I)V
.end method

.method public abstract showProgress(Ljava/lang/String;)V
.end method
