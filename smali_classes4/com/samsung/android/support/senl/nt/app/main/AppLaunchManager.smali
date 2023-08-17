.class public Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLaunchManager"


# instance fields
.field private mEmptyDatabaseDetector:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

.field private final mIMainView:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;

.field private final mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

.field private mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

.field private mRestoreDatabaseListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

.field private mRestoreListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mIMainView:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->execute()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mEmptyDatabaseDetector:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mIMainView:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    return-object p0
.end method

.method private checkNetworkOperation()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;ILjava/lang/Runnable;)V

    return-void
.end method

.method private countReviewRequest()V
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "review_request_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mRestoreDatabaseListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    return-object p0
.end method

.method private deleteDuplicatedDB()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    return-void
.end method

.method private deleteScanCache()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    const/16 v2, 0xcb

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    return-void
.end method

.method private dismissRestoreDatabaseDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "db_restore_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mRestoreListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    return-object p0
.end method

.method private execute()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->checkNetworkOperation()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->restoreDatabase()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->deleteDuplicatedDB()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->deleteScanCache()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mEmptyDatabaseDetector:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mRestoreDatabaseListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mRestoreListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->countReviewRequest()V

    return-void
.end method

.method private initServerTime()V
    .locals 1

    new-instance v0, Lm2/a;

    invoke-direct {v0}, Lm2/a;-><init>()V

    invoke-virtual {v0}, Lm2/a;->f()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->dismissRestoreDatabaseDialog()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->onCheckNewVersion()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->performSyncInitialization()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->savePendingRestorePath(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->showRestoreDatabaseDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    return-void
.end method

.method private onCheckNewVersion()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->isGalaxyAppStorePackageExist()Z

    move-result v0

    const-string v1, "AppLaunchManager"

    if-nez v0, :cond_0

    const-string v0, "onCheckNewVersion# skip - isGalaxyAppStorePackageExist() false."

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->needToCheck()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/connector/MarketConnectorFactory;->createMarketConnector()Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    const-string v0, "onCheckNewVersion# Start to check update"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->checkNewVersionOnMarket(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V

    return-void
.end method

.method private performSyncInitialization()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->initServerTime()V

    invoke-static {}, Lg2/b;->i()Lg2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg2/b;->k(Landroid/content/Context;)V

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CAServerKeyHelper;->hasKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Li2/a;

    invoke-direct {v1, v0}, Li2/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Li2/a;->e()V

    :cond_0
    return-void
.end method

.method private restoreDatabase()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    return-void
.end method

.method private savePendingRestorePath(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "pending_path_set"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private showRestoreDatabaseDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "db_restore_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;-><init>(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AppLaunchManager"

    const-string v0, "showRestoreDatabaseDialog# already showing"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;->setListener(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mMarketConnector:Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mEmptyDatabaseDetector:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->cancel()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->savePendingRestorePath(Ljava/util/Set;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->mEmptyDatabaseDetector:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    :cond_1
    return-void
.end method
