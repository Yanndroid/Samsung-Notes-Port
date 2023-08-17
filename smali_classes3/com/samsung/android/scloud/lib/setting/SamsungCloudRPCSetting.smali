.class public Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SYNC:Ljava/lang/String; = "SYNC"

.field private static final TAG:Ljava/lang/String; = "[scsetting][2.0.13.0]"


# instance fields
.field private iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    const-string v1, "[scsetting][2.0.13.0]"

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/scloud/lib/setting/SyncSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->SYNC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    const-string v0, "[scsetting][2.0.13.0]"

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/scloud/lib/setting/SyncSetting;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$2;-><init>(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->cancel(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V

    return-void
.end method

.method public close(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->close(Landroid/content/Context;)V

    return-void
.end method

.method public getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/ISetting;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public showSetting(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->showSetting(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;-><init>(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V

    return-void
.end method

.method public switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/ISetting;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
