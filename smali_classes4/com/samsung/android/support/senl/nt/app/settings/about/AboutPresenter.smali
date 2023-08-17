.class public Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;
    }
.end annotation


# static fields
.field public static final STATE_LATEST:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RETRY:I = 0x3

.field public static final STATE_UPDATE:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;

.field private mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ST$AboutPresenter"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;

    return-void
.end method

.method private finishedAsLatestVersionInstalled(I)V
    .locals 2

    const-string v0, "ST$AboutPresenter"

    const-string v1, "versionCheckFinished# It is latest version."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasBadge(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->resetNeedToCheck()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasTipCard(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->setState(I)V

    return-void
.end method

.method private finishedAsNewVersionOnMarket(I)V
    .locals 2

    const-string v0, "ST$AboutPresenter"

    const-string v1, "versionCheckFinished# new version exist on market"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefCloseTipCardVersion()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasTipCard(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefUserCheckedVersion()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasBadge(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setPrefUserCheckedVersion(I)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->resetNeedToCheck()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->setState(I)V

    return-void
.end method

.method private finishedAsNoNetwork()V
    .locals 2

    const-string v0, "ST$AboutPresenter"

    const-string v1, "versionCheckFinished# no network."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->setState(I)V

    return-void
.end method


# virtual methods
.method public checkNewVersion()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->isSkipVersionCheck()Z

    move-result v0

    const-string v1, "ST$AboutPresenter"

    if-eqz v0, :cond_0

    const-string v0, "checkNewVersion# - Skip new version check"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    if-nez v0, :cond_1

    const-string v0, "checkNewVersion# MarketConnector is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "checkNewVersion#"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;->startProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->checkNewVersionOnMarket(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V

    return-void
.end method

.method public getAppName()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->notes:I

    :goto_0
    return v0
.end method

.method public getResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;->stopProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->setLastCheckedMarketVersionCode(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->finishedAsNoNetwork()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getCurrentVersionCode()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->finishedAsNewVersionOnMarket(I)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->finishedAsLatestVersionInstalled(I)V

    return-void
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    return v0
.end method

.method public getUpdateNoticeText()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->latest_version_installed:I

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->new_version_is_available:I

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->network_connect_is_not_stable:I

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getUpdateText()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_update:I

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->retry:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->version_info:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRetryState()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSkipVersionCheck()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isKMemoPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->isGalaxyAppStorePackageExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUpdateState()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveToMarket()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->moveToMarket()V

    :cond_0
    return-void
.end method

.method public releaseMarketConnector()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->setListener(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    :cond_0
    return-void
.end method

.method public setMarketConnector(Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    return-void
.end method

.method public setState(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState# stateChangedTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$AboutPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mState:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;->stateChanged(I)V

    return-void
.end method
