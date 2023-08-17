.class public Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$OnDeviceIdListener;
    }
.end annotation


# static fields
.field public static final ADDONS_PAKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.notes.addons"

.field public static final API_UPDATE_CHECK_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field public static APK_DOWNLOAD_DIR:Ljava/io/File; = null

.field public static APK_FILE_PREFIX:Ljava/lang/String; = null

.field public static APK_FILE_SUFFIX:Ljava/lang/String; = null

.field public static final DIRECTORY_NAME:Ljava/lang/String; = "addonsDownload"

.field public static final REQUEST_APK_INSTALL_TO_GALAXYAPPS:I = 0x1

.field public static final REQUEST_GET_DOWNLOAD_URL:I = 0x2

.field public static final REQUEST_UPDATE_CHECK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StubManager$StubUtil"

.field private static mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "addonsDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->makeDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->APK_DOWNLOAD_DIR:Ljava/io/File;

    :cond_0
    const-string v0, "com.samsung.android.app.notes.addons_"

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->APK_FILE_PREFIX:Ljava/lang/String;

    const-string v0, ".apk"

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->APK_FILE_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callGalaxyAppsClientAppUsingDeepLink(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isQaServerEnabled()Z

    move-result v0

    const-string v1, "StubManager$StubUtil"

    if-eqz v0, :cond_0

    const-string v0, "callGalaxyAppsClientAppUsingDeepLink# in Pre-deployed or Pre-distributed status"

    goto :goto_0

    :cond_0
    const-string v0, "callGalaxyAppsClientAppUsingDeepLink# in Deployed or For sale status"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "samsungapps://ProductDetail/com.samsung.android.app.notes.addons/?source=SamsungNotes&fsOrigin=stubUpdateCheck&fsUpdateTypeond"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "cover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToGalaxyAppStore# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static getExtuk()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDeviceIdServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

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

.method public static getVersionCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getVersionIntCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getVersionIntCode()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.addons"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StubManager$StubUtil"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.app.notes.addons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StubManager$StubUtil"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static isAddonExist(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v1, "com.samsung.android.app.notes.addons"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isError(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getResultMsg()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resultMsg# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StubManager$StubUtil"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNoMatchingApplication(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUpdateAvailable(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUpdateNotNecessary(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDeviceIdServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->unBindDeviceIdService()V

    :cond_0
    return-void
.end method

.method public static setStubUtil(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$OnDeviceIdListener;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDeviceIdServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->mDeviceIdHelper:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$OnDeviceIdListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->bindDeviceIdService(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$OnDeviceIdListener;->success()V

    :cond_1
    :goto_0
    return-void
.end method
