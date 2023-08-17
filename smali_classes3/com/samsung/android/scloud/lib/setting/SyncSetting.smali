.class Lcom/samsung/android/scloud/lib/setting/SyncSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/scloud/lib/setting/ISetting;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private ACTION_NAME:Ljava/lang/String;

.field private CLASS_NAME:Ljava/lang/String;

.field private PACKAGE_NAME:Ljava/lang/String;

.field private iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

.field private mConnection:Landroid/content/ServiceConnection;

.field private samsungCloudRPCStatus:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.scloud.RPC_SYNC_SETTING"

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->ACTION_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud"

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud.app.service.RPCSyncService"

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->CLASS_NAME:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;-><init>(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    sput-object p2, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string p2, "binding success"

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string p2, "binding failure"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.scloud.RPC_SYNC_SETTING"

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->ACTION_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud"

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud.app.service.RPCSyncService"

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->CLASS_NAME:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;-><init>(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    sput-object p2, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->samsungCloudRPCStatus:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string p2, "binding success"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;->onBind(Z)V

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string p2, "binding failure"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/scloud/lib/setting/SyncSetting;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->samsungCloudRPCStatus:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;

    return-object p0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->cancel(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public close(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unbindService: success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string v1, "getProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const p2, 0x55d4a80

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "rcode"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public showSetting(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->showSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchOnOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const p2, 0x55d4a80

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "rcode"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
