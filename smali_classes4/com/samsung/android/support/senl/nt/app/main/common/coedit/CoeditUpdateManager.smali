.class public Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;,
        Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;
    }
.end annotation


# static fields
.field private static final COEDIT_SUPPORT_SES_AGENT_VERSION_CODE:I

.field private static final GALAXY_APPS_CHECK_EVERY_HOUR:Ljava/lang/String; = "galaxy_apps_check_ses_agent_version_every_hour"

.field private static final GALAXY_APPS_CHECK_NOTES_EVERY_DAY:Ljava/lang/String; = "galaxy_apps_check_notes_every_day"

.field private static final LATEST_CHECKED_NOTES_VERSION_CODE:Ljava/lang/String; = "latest_checked_notes_version_code"

.field private static final TAG:Ljava/lang/String; = "CoeditUpdateManager"

.field private static final UPDATE_CHECK_PERIOD:J = 0x36ee80L

.field private static final UPDATE_CHECK_PERIOD_EVERY_DAY:J = 0x5265c00L

.field private static sInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const v0, 0x406d39a3

    goto :goto_0

    :cond_0
    const v0, 0x4e2445d9    # 6.8901024E8f

    :goto_0
    sput v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->COEDIT_SUPPORT_SES_AGENT_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->setPrefLatestNotesVersion(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->sInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPrefLatestNotesVersion()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getCurrentVersionCode()I

    move-result v1

    const-string v2, "latest_checked_notes_version_code"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrefNotesCheckedPeriod()J
    .locals 4

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_notes_every_day"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUpdatePeriod()J
    .locals 4

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_ses_agent_version_every_hour"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isBlockedToCheckVersion()Z
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->getUpdatePeriod()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-string v4, "CoeditUpdateManager"

    if-nez v2, :cond_0

    const-string v0, "isBlockedToCheckVersion(). false / first time"

    :goto_0
    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->setUpdatePeriod(J)V

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/32 v0, 0x36ee80

    cmp-long v0, v5, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBlockedToCheckVersion(). true "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "isBlockedToCheckVersion(). false"

    goto :goto_0
.end method

.method private setPrefLatestNotesVersion(I)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "latest_checked_notes_version_code"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private setPrefNotesCheckedPeriod(J)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_notes_every_day"

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private setUpdatePeriod(J)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_ses_agent_version_every_hour"

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public checkForceUpdateNotesVersion(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->isGalaxyAppStorePackageExist()Z

    move-result v0

    const-string v1, "CoeditUpdateManager"

    if-nez v0, :cond_0

    const-string p1, "checkForceUpdateNotesVersion# GalaxyAppStorePackage not exist"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;->ERROR:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getCurrentVersionCode()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->getPrefLatestNotesVersion()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForceUpdateNotesVersion# currentVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", checkedLatestVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v0, v2, :cond_1

    const-string p1, "checkForceUpdateNotesVersion# currentVersion < checkedLatestVersion"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;->NEED_UPDATE:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;

    return-object p1

    :cond_1
    if-le v0, v2, :cond_2

    const-string p1, "checkForceUpdateNotesVersion# currentVersion > checkedLatestVersion"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->setPrefLatestNotesVersion(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;->LATEST:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->getPrefNotesCheckedPeriod()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForceUpdateNotesVersion# currentVersion == checkedLatestVersion, latestCheckedPeriod : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    const-string v2, "checkForceUpdateNotesVersion# App Store check"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/connector/MarketConnectorFactory;->createMarketConnector()Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;I)V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->checkNewVersionOnMarket(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->setPrefNotesCheckedPeriod(J)V

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;->LATEST:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;

    return-object p1
.end method

.method public checkForceUpdateSESAgentVersion(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CoeditUpdateManager"

    if-nez p1, :cond_0

    const-string p1, "checkForceUpdateSESAgentVersion() false - context is null"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v2

    const-string v3, "com.samsung.android.mobileservice"

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->COEDIT_SUPPORT_SES_AGENT_VERSION_CODE:I

    if-lt v2, v3, :cond_1

    invoke-static {p1}, Ln/a;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForceUpdateSESAgentVersion() false - this is coedit supported SES version. "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->isBlockedToCheckVersion()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "checkForceUpdateSESAgentVersion() false - blocked to check server"

    goto :goto_0

    :cond_2
    const-string p1, "checkForceUpdateSESAgentVersion() true"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public releaseUpdatePeriod()V
    .locals 4

    const-string v0, "CoeditUpdateManager"

    const-string v1, "releaseUpdatePeriod()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "galaxy_apps_check_ses_agent_version_every_hour"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    return-void
.end method
