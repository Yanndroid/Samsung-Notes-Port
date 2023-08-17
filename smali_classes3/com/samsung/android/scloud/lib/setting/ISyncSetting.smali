.class interface abstract Lcom/samsung/android/scloud/lib/setting/ISyncSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addSyncStatusObserver(Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;Ljava/lang/String;)V
.end method

.method public abstract cancelSync()V
.end method

.method public abstract getAutoSync()Z
.end method

.method public abstract getNetworkOption()I
.end method

.method public abstract getProfile()Landroid/os/Bundle;
.end method

.method public abstract isSyncActive()Z
.end method

.method public abstract notifySyncStatus(Ljava/lang/String;I)V
.end method

.method public abstract removeSyncStatusObserver()V
.end method

.method public abstract requestSync()V
.end method

.method public abstract setAutoSync(Z)V
.end method

.method public abstract setNetworkOption(I)V
.end method

.method public abstract showSetting()V
.end method
