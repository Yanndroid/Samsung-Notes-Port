.class public Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;
.implements Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;,
        Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;
    }
.end annotation


# static fields
.field private static final ADDONS_APPS_CHECK_TWICE_A_DAY:Ljava/lang/String; = "addons_apps_check_once_a_day"

.field private static final DEFAULT_ERROR:I = 0x1

.field private static final INSTALL_ERROR:I = 0x2

.field private static final NETWORK_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AddonsStubManager"

.field private static final UPDATE_CHECK_PERIOD:J = 0xa4cb800L


# instance fields
.field private final addonsInstallDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

.field private mActivity:Landroidx/fragment/app/FragmentActivity;

.field private final mFailDialogListener:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

.field private mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

.field private mIsAvailableUpdate:Z

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;

.field private final recommendConvertDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

.field private final updateSamsungNotesDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->addonsInstallDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->recommendConvertDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->updateSamsungNotesDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mFailDialogListener:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->addonsInstallDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->recommendConvertDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->updateSamsungNotesDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mFailDialogListener:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mPresenter:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$5;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->setStubUtil(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$OnDeviceIdListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isRequiredMandatoryUpdate()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->onStubUpdateTaskFinished(Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setErrorMessage(I)V

    return-void
.end method

.method private getAvailableUpdate()Z
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "add_ons_available_Update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getServerAddonsVersionName()Ljava/lang/String;
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "add_ons_version_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAvailableVersion(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->parseVersion(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->parseVersion(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->major:I

    iget v3, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->major:I

    if-le v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    return v4

    :cond_2
    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->minor:I

    iget v3, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->minor:I

    const-string v5, "AddonsStubManager"

    if-le v2, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnsMinorVersion false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->minor:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    if-ge v2, v3, :cond_4

    return v4

    :cond_4
    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->patch:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->patch:I

    if-le v2, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnsPatchVersion false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->patch:I

    goto :goto_0

    :cond_5
    return v4

    :cond_6
    :goto_1
    return v1
.end method

.method private isRequiredMandatoryUpdate()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getVersionIntCode()I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xc8473d8

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->getServerAddonsVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.1.00.6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isUpdatableVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUpdatableVersion(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AddonsStubManager"

    const-string v0, "curAddOnsVersionName isEmpty"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isUpdatableVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isUpdateEnableVersion(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isAvailableVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isUpdatableVersion(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onStubUpdateTaskFinished(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setAvailableUpdate(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->removeAddonsInstallDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mPresenter:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;->onStubUpdateTaskFinished(Z)V

    :cond_0
    return-void
.end method

.method private parseVersion(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;
    .locals 5

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->reviseMajorVersion(I)I

    move-result p2

    goto :goto_0

    :cond_1
    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p2, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method private reviseMajorVersion(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method private setAvailableUpdate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    const-string p1, "APP_LAUNCH"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    const-string v1, "add_ons_available_Update"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private setErrorMessage(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showInstallFailDialog()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showSamsungNotesUpdateDialog()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->network_fail_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->onStubUpdateTaskFinished(Z)V

    :goto_0
    return-void
.end method

.method public static setServerAddonsVersionName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "add_ons_version_name"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAddonsUpdate()V
    .locals 9

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "addons_apps_check_once_a_day"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    const-string v3, "AddonsStubManager"

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    const-string v0, "isAvailableCheckUpdate(). false - do not check server app version at the first app launch."

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v4, 0xa4cb800

    cmp-long v1, v7, v4

    if-gez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->getAvailableUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailableCheckUpdate(). false - operate only once a day. So skip. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "checkAddonsUpdate# true"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->checkUpdate()V

    return-void
.end method

.method public checkUpdate()V
    .locals 4

    const-string v0, "AddonsStubManager"

    const-string v1, "checkUpdate# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appId"

    const-string v2, "com.samsung.android.app.notes.addons"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callerId"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionCode"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getMcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcc"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getMnc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnc"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getCsc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "csc"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cc"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkVer"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "systemId"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getAbiType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "abiType"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getExtuk()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extuk"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getPd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pd"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "updateType"

    const-string v3, "ond"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->setType(I)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->setListener(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;->run()V

    return-void
.end method

.method public convertNote()V
    .locals 2

    const-string v0, "AddonsStubManager"

    const-string v1, "convertNote"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->removeAddonsInstallDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mPresenter:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;->convertNote()V

    :cond_0
    return-void
.end method

.method public installAddons(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installAddons isNeedInstall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddonsStubManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isDataNetworkNotAvailable()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setErrorMessage(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isQaServerEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestGUID(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->callGalaxyAppsClientAppUsingDeepLink(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->onStubUpdateTaskFinished(Z)V

    :goto_0
    return-void
.end method

.method public isAddonExist()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isAddonExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDataNetworkNotAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isDataNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isWifiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallableAddons()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->getServerAddonsVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isInstallableAddons# "

    const-string v2, "AddonsStubManager"

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isAvailableVersion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " version is not available."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " version is available."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedAddonsUpdate()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedAddonsUpdate# isAvailableUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsStubManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isRequiredMandatoryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->getServerAddonsVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isUpdatableVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    return v0
.end method

.method public isNeedSamsungNotesUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isAddonExist()Z

    move-result v0

    const-string v1, "AddonsStubManager"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isAvailableVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isNeedSamsungNotesUpdate# false"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "isNeedSamsungNotesUpdate# true"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isUpdatableVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->parseVersion(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->parseVersion(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    move-result-object p2

    if-eqz p1, :cond_9

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->major:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->major:I

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x1

    if-le v0, v2, :cond_3

    return v3

    :cond_3
    iget v0, p2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->minor:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->minor:I

    if-ge v0, v2, :cond_4

    return v1

    :cond_4
    if-le v0, v2, :cond_5

    return v3

    :cond_5
    iget v0, p2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->patch:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->patch:I

    if-ge v0, v2, :cond_6

    return v1

    :cond_6
    if-le v0, v2, :cond_7

    return v3

    :cond_7
    iget p2, p2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->revision:I

    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;->revision:I

    if-gt p2, p1, :cond_8

    return v1

    :cond_8
    return v3

    :cond_9
    :goto_0
    return v1

    :cond_a
    :goto_1
    const-string p1, "AddonsStubManager"

    const-string p2, "version name is Empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->getAvailableUpdate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    return-void
.end method

.method public onNoMatchingApplication(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V
    .locals 1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setAvailableUpdate(Z)V

    const-string p1, "AddonsStubManager"

    const-string v0, "onNoMatchingApplication : Update check failed because no matching application found at server."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreDialogListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "update_addons_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->addonsInstallDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "recommend_convert_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->recommendConvertDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_ADDONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isAddonExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_3
    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->updateSamsungNotesDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "install_addons_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isAddonExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    :cond_5
    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->addonsInstallDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "install_fail_addons_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mFailDialogListener:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;->setContract(Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onUpdateAvailable(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setServerAddonsVersionName(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isUpdateEnableVersion(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setAvailableUpdate(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mIsAvailableUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version is available. Would you update to it?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddonsStubManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateCheckFail(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V
    .locals 1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setAvailableUpdate(Z)V

    const-string p1, "AddonsStubManager"

    const-string v0, "onUpdateCheckFail : Update check failed. Would you retry ?"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateNotNecessary(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setServerAddonsVersionName(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->setAvailableUpdate(Z)V

    const-string p1, "AddonsStubManager"

    const-string v0, "onUpdateNotNecessary : No updates found."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->isAddonExist(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "is_progress_on"

    if-nez v1, :cond_2

    const-string v3, "install_addons_dialog"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showAddonsInstallDialog(ZZ)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "update_addons_dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "recommend_convert_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showRecommendConvertDialog()V

    goto :goto_1

    :cond_4
    const-string p1, "install_fail_addons_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showInstallFailDialog()V

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_ADDONS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showSamsungNotesUpdateDialog()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onViewChangeSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "install_addons_dialog"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "update_addons_dialog"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "recommend_convert_dialog"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "install_fail_addons_dialog"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_ADDONS:Ljava/lang/String;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v2, v1, v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/DialogFragment;

    if-eqz v4, :cond_1

    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public parseNotesVersion(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->parseVersion(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    move-result-object p1

    return-object p1
.end method

.method public parseVersion(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->parseVersion(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$Version;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public removeAddonsInstallDialog()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-string v1, "AddonsStubManager"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "install_addons_dialog"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "update_addons_dialog"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "recommend_convert_dialog"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_ADDONS:Ljava/lang/String;

    aput-object v5, v2, v3

    :goto_0
    if-ge v4, v0, :cond_2

    :try_start_0
    aget-object v3, v2, v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DialogFragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAddonsInstallDialog - IllegalStateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string v0, "removeAddonsInstallDialog - fail"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showAddonsInstallDialog(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAddonsInstallDialog# isUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsStubManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "update_addons_dialog"

    goto :goto_0

    :cond_1
    const-string p1, "install_addons_dialog"

    :goto_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;-><init>(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->addonsInstallDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showInstallFailDialog()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->removeAddonsInstallDialog()V

    const-string v0, "AddonsStubManager"

    const-string v1, "need to show INSTALL_ERROR dialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->samsung_notes_add_on_jp:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->samsung_notes_add_on:I

    :goto_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->install_fail_error_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->install_fail_error_message:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mFailDialogListener:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;->setContract(Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "install_fail_addons_dialog"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInstallFailDialog - IllegalStateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showRecommendConvertDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->removeAddonsInstallDialog()V

    const-string v0, "AddonsStubManager"

    const-string v1, "showRecommendConvertDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;

    const/4 v1, 0x0

    const-string v2, "recommend_convert_dialog"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->recommendConvertDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showSamsungNotesUpdateDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->removeAddonsInstallDialog()V

    const-string v0, "AddonsStubManager"

    const-string v1, "showSamsungNotesUpdateDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->updateSamsungNotesDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_ADDONS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
