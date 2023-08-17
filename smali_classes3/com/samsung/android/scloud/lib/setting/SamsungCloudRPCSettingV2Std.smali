.class public Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[scsettingv2std][2.0.13.0]"


# instance fields
.field private iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    const-string v1, "[scsettingv2std][2.0.13.0]"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    return-void
.end method


# virtual methods
.method public getProfile()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->getProfile()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyAutoSyncChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->setAutoSync(Z)V

    :cond_0
    return-void
.end method

.method public notifyNetworkOptionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->setNetworkOption(I)V

    :cond_0
    return-void
.end method

.method public notifySyncStatusChanged(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->notifySyncStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public showSetting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2Std;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/ISyncSetting;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/scloud/lib/setting/ISyncSetting;->showSetting()V

    :cond_0
    return-void
.end method
