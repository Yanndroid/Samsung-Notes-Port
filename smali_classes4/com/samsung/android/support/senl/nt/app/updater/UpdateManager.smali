.class public Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GALAXY_APPS_CHECK_TWICE_A_DAY:Ljava/lang/String; = "galaxy_apps_check_once_a_day"

.field private static final GALAXY_APPS_CHECK_WHEN_SEP_CHANGED:Ljava/lang/String; = "galaxy_apps_check_when_sep_changed"

.field public static final SHOW_TIPCARD_VERSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UpdateManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;


# instance fields
.field private final GALAXY_APPS_PACKAGE_NAME:Ljava/lang/String;

.field private final UPDATE_CHECK_ONE_HOUR:J

.field private final UPDATE_CHECK_PERIOD:J

.field private mStartType:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

.field private mUpdateSettingsBadgeListener:Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;

.field private mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sec.android.app.samsungapps"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->GALAXY_APPS_PACKAGE_NAME:Ljava/lang/String;

    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->UPDATE_CHECK_PERIOD:J

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->UPDATE_CHECK_ONE_HOUR:J

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->Normal:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mStartType:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-void
.end method

.method private clearGlideDiskCache(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "UpdateManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPrefLatestSepVersion()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_when_sep_changed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getUpdatePeriod()J
    .locals 4

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_once_a_day"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleFirstTimeAfterVersionUpdate(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreDatabaseManager;->restore(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getCurrentVersionCode()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getLastVersionCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->revisionOperation(II)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isAppUpdateNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setAppUpdateNeeded(Landroid/content/Context;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->updateViewModeIfNeeded()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonLogger;->clearPreferencesForLogger()V

    invoke-static {}, Lg2/b;->i()Lg2/b;

    move-result-object p1

    invoke-virtual {p1}, Lg2/b;->h()V

    new-instance p1, Lcom/samsung/android/app/notes/trash/EmptyTrashNotifier;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/trash/EmptyTrashNotifier;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/trash/EmptyTrashNotifier;->execute(Z)V

    return-void
.end method

.method private handleFirstTimeAfterVersionUpdateGuaranteed(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->isVersionUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreDatabaseManager;->restoreGuaranteed(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setStoreConnected(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->resetVersionUpdated()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->clearGlideDiskCache(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static isValid()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setPrefCloseTipCardVersion(I)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "close_tipcard_version"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private setPrefLatestSepVersion(I)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_when_sep_changed"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private setUpdatePeriod(J)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_once_a_day"

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private updateViewModeIfNeeded()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewModeIfNeeded# viewMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->needNoThumbnailSimpleList()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "updateViewModeIfNeeded# no MODEL_FEATURE_NO_THUMBNAIL_SIMPLE_LIST"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x6

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->setViewMode(I)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isDefaultViewModeGridMedium()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "updateViewModeIfNeeded# no MODEL_FEATURE_DEFAULT_VIEW_MODE_GRID_MEDIUM"

    goto :goto_0

    :cond_3
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "view_mode"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_4

    const-string v0, "updateViewModeIfNeeded# preference value is VIEW_MODE_NONE"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getLastVersionCode()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    const/16 v1, 0x10ce

    if-lt v0, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewModeIfNeeded# lastVersion : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public getCurrentVersionCode()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastCheckedMarketVersionCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getLastCheckedMarketVersionCode()I

    move-result v0

    return v0
.end method

.method public getPrefCloseTipCardVersion()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "close_tipcard_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPrefUserCheckedVersion()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "user_checked_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStartType()Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mStartType:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    return-object v0
.end method

.method public goToGalaxyAppStore()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->goToGalaxyAppStore(Ljava/lang/String;)V

    return-void
.end method

.method public goToGalaxyAppStore(Ljava/lang/String;)V
    .locals 6

    const-string v0, "UpdateManager"

    const-string v1, "goToGalaxyAppStore# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "samsungapps://ProductDetail/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/?source=SamsungNotes&fsOrigin=stubUpdateCheck&fsUpdateType"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "self"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p1, 0x14000020

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public handleAppUpdate()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->checkVersionStart()Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mStartType:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAppUpdate, startType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mStartType:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->handleFirstTimeAfterVersionUpdateGuaranteed(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mStartType:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTimeAfterVersionUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App version changed! - last: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getLastVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getCurrentVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->handleFirstTimeAfterVersionUpdate(Landroid/content/Context;)V

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->execute(Landroid/content/Context;)V

    return-void
.end method

.method public hasBadge()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "has_new_version_badge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getCurrentVersionCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefUserCheckedVersion()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public hasTipCard()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefCloseTipCardVersion()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initLastCheckedMarketVersionCode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->initLastCheckedMarketVersionCode()V

    return-void
.end method

.method public isGalaxyAppStorePackageExist()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needToCheck()Z
    .locals 11

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefLatestSepVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "UpdateManager"

    if-eq v2, v0, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setPrefLatestSepVersion(I)V

    goto :goto_1

    :cond_0
    const-string v0, "needToCheck(). true - SEP version is changed."

    :goto_0
    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getUpdatePeriod()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    const-string v0, "needToCheck(). false - do not check server app version at the first app launch."

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setUpdatePeriod(J)V

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v9, 0xa4cb800

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToCheck(). false - operate only once every two days.. So skip. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v0, "needToCheck(). true"

    goto :goto_0
.end method

.method public removeUpdateSettingsBadgeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mUpdateSettingsBadgeListener:Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;

    return-void
.end method

.method public resetNeedToCheck()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setUpdatePeriod(J)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefLatestSepVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setPrefLatestSepVersion(I)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetNeedToCheck# latestSepVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentSepVersion : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public revisionOperation(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setPreviousVersionCode(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasTipCard(I)V

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const v0, 0x17dadf60

    if-ge p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "settings_hide_navigation_bar_when_writing"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    :cond_0
    const v0, 0x190bd5b0

    if-ge p2, v0, :cond_1

    const/4 p2, 0x0

    const-string v0, "settings_anchor_to_text_enabled"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setHasBadge(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBadge : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "has_new_version_badge"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mUpdateSettingsBadgeListener:Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;->updateBadge(Z)V

    :cond_0
    return-void
.end method

.method public setHasTipCard(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHasTipCard : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setPrefCloseTipCardVersion(I)V

    return-void
.end method

.method public setLastCheckedMarketVersionCode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mVersionChecker:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->setLastCheckedMarketVersionCode(I)V

    return-void
.end method

.method public setNeedToCheckOneHourLater()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setUpdatePeriod(J)V

    return-void
.end method

.method public setPrefUserCheckedVersion(I)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "user_checked_version"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPreviousVersionCode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviousVersionCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "setting_previous_version"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUpdateSettingsBadgeListener(Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->mUpdateSettingsBadgeListener:Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;

    return-void
.end method
