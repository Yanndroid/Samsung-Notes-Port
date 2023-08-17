.class public Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
    }
.end annotation


# static fields
.field private static final IS_VERSION_UPDATED:Ljava/lang/String; = "is_version_updated"

.field private static final LOG_TAG:Ljava/lang/String; = "UpdateManager$VersionChecker"

.field private static final OS_VERSION:Ljava/lang/String; = "os_version"

.field private static sCurrentVersionCode:I = -0x1

.field private static sLastVersionCode:I = -0x1


# instance fields
.field private mLastCheckedMarketVersionCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->mLastCheckedMarketVersionCode:I

    return-void
.end method

.method private checkVersionCode(IIII)Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
    .locals 3

    const-string v0, "UpdateManager$VersionChecker"

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkVersionCode# App is first launched with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTime:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object p1

    :cond_0
    const-string v1, "checkVersionCode# App is updated - previous: "

    const-string v2, " current: "

    if-ge p3, p4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "APP_LAUNCH"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "is_version_updated"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTimeAfterVersionUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object p1

    :cond_1
    if-le p3, p4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkVersionCode# Current version code ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is less then the one recognized on last startup ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "). Defenisvely assuming normal app start."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->Normal:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object p1

    :cond_2
    if-ge p1, p2, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkVersionCode# OS is updated - previous: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTimeAfterOSUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object p1

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->Normal:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object p1
.end method

.method public static getCurrentVersionCode()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->sCurrentVersionCode:I

    return v0
.end method

.method public static getLastVersionCode()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->sLastVersionCode:I

    return v0
.end method

.method private static setVersionCode(II)V
    .locals 0

    sput p0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->sLastVersionCode:I

    sput p1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->sCurrentVersionCode:I

    return-void
.end method


# virtual methods
.method public checkVersionStart()Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
    .locals 11

    const-string v0, "app_version"

    const-string v1, "os_version"

    const-string v2, "UpdateManager$VersionChecker"

    const-string v3, "APP_LAUNCH"

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->Normal:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v6

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v9

    invoke-virtual {v9, v0, v7}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7, v5}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->setVersionCode(II)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkVersionStart, lastOsVersion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> currentOsVersion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", lastVersionCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> currentVersionCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v8, v7, v5}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->checkVersionCode(IIII)Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "checkVersionStart, Unable to determine current app version"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4
.end method

.method public getLastCheckedMarketVersionCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->mLastCheckedMarketVersionCode:I

    return v0
.end method

.method public initLastCheckedMarketVersionCode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->mLastCheckedMarketVersionCode:I

    return-void
.end method

.method public isVersionUpdated()Z
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "is_version_updated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public resetVersionUpdated()V
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "is_version_updated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastCheckedMarketVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->mLastCheckedMarketVersionCode:I

    return-void
.end method
