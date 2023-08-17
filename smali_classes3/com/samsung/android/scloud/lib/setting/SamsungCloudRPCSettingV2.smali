.class public Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[scsettingv2][2.0.13.0]"


# instance fields
.field private iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    const-string v1, "[scsettingv2][2.0.13.0]"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    return-void
.end method


# virtual methods
.method public addSyncStatusObserver(Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    const-string v1, "scloud_setting_lib_provider_authority"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->addSyncStatusObserver(Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;Ljava/lang/String;)V

    return-void
.end method

.method public cancelSync()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->cancelSync()V

    return-void
.end method

.method public getAutoSync()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->getAutoSync()Z

    move-result v0

    return v0
.end method

.method public getNetworkOption()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->getNetworkOption()I

    move-result v0

    return v0
.end method

.method public getProfile()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->getProfile()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isSyncActive()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->isSyncActive()Z

    move-result v0

    return v0
.end method

.method public removeSyncStatusObserver()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->removeSyncStatusObserver()V

    return-void
.end method

.method public requestSync()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->requestSync()V

    return-void
.end method

.method public setAutoSync(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->setAutoSync(Z)V

    return-void
.end method

.method public setNetworkOption(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->setNetworkOption(I)V

    return-void
.end method

.method public showSetting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->showSetting()V

    return-void
.end method
