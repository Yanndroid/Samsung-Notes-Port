.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccountGuid(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract initPreferenceMDESupported()V
.end method

.method public abstract isAccountLogined(Landroid/content/Context;)Z
.end method

.method public abstract isAutoSyncPossible()Z
.end method

.method public abstract isCoeditFeatureSupported(Landroid/content/Context;)Z
.end method

.method public abstract isCoeditWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z
.end method

.method public abstract isDataCallNotLimitedForApp()Z
.end method

.method public abstract isDataNetworkAvailable(Landroid/content/Context;)Z
.end method

.method public abstract isSesAvailable(Landroid/content/Context;)Z
.end method

.method public abstract isWiFiAvailable(Landroid/content/Context;)Z
.end method

.method public abstract isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z
.end method

.method public abstract notifyOnDocumentClosed()V
.end method

.method public abstract requestCoeditTitleUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestCoeditUpdateItemData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestDeleteCoeditNoteDataAllAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestServerNoteInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V
.end method

.method public abstract requestShareBackground(Ljava/lang/String;)Z
.end method

.method public abstract requestShareDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestShareDeleteCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestSyncBackground()Z
.end method

.method public abstract requestSyncByModification()Z
.end method

.method public abstract requestSyncDownFirst(Ljava/lang/String;)V
.end method

.method public abstract requestSyncDownForRecovery(Ljava/lang/String;)V
.end method

.method public abstract requestSyncDownForServerNoteTemporarily(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
.end method

.method public abstract requestSyncForConflictedNote(Ljava/lang/String;I)V
.end method

.method public abstract requestSyncForServerPolling()V
.end method

.method public abstract requestSyncUpFirst(Ljava/lang/String;)V
.end method

.method public abstract setCategoryOrderModifiedTime(J)V
.end method

.method public abstract setRootServerTimestamp(J)V
.end method

.method public abstract setSyncEnableByUserClick(Z)V
.end method

.method public abstract stopCoeditDownloadBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
.end method

.method public abstract stopSyncBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
.end method
