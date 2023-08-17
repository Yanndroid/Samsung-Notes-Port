.class public Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetInfo"

.field private static mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtuk()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDeviceIdServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getAndroidDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDeviceIdServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->unBindDeviceIdService()V

    :cond_0
    return-void
.end method

.method public static setOnDeviceIdHelper(Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDeviceIdServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$1;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->bindDeviceIdService(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;->success()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setOnDeviceIdHelperForSamsungNotes(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;->getResult(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "TargetInfo"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$2;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method
