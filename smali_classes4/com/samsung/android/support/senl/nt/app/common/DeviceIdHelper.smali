.class public Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StubManager$DeviceIdHelper"


# instance fields
.field private mIsServiceConnected:Z

.field private mIsSupport:Z

.field private mOaid:Ljava/lang/String;

.field private sOnDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;

.field private sServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsServiceConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsSupport:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->sOnDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsServiceConnected:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsSupport:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mOaid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindDeviceIdService(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;)V
    .locals 3

    const-string v0, "StubManager$DeviceIdHelper"

    :try_start_0
    const-string v1, "bindDeviceIdService start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->sOnDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    const/16 v2, 0x25

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsServiceConnected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDeviceIdService error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsServiceConnected:Z

    :goto_0
    return-void
.end method

.method public getOaid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mOaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getAndroidDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mOaid:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsSupport:Z

    return v0
.end method

.method public unBindDeviceIdService()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsServiceConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->mIsServiceConnected:Z

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindDeviceIdService error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StubManager$DeviceIdHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
