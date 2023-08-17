.class public Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsMenuUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLayoutDirectionMarkToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u200f"

    goto :goto_0

    :cond_0
    const-string v1, "\u200e"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAboutSamsungNotesTitleRes()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->about_note_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->about_note:I

    :goto_0
    return v0
.end method

.method public static getActionIconsSummaryRes(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v1, "com.sec.android.app.popupcalculator"

    const v2, 0x241f3140

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_action_icons_summary:I

    return p0

    :cond_0
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_action_icons_summary_without_equations:I

    return p0
.end method

.method public static getClippingOptionsSummary(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_clipping_options_summary:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_clipping_options_summary_without_message:I

    :goto_0
    return p0
.end method

.method public static getImportFromDeviceTitleRes()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_tablet:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_device:I

    :goto_0
    return v0
.end method

.method public static getImportFromSamsungAccountTitleRes()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_samsung_account_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_samsung_account:I

    :goto_0
    return v0
.end method

.method public static getImportNotesCategoryTitleRes()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

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

.method public static getLockNotesSetPasswordTitleRes(Landroid/content/Context;)I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_change_password:I

    return p0

    :cond_0
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_create_password:I

    return p0
.end method

.method public static getSamsungCloudSyncMenuTitleRes(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_jp:I

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasSaSetting(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_na:I

    return p0

    :cond_1
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts:I

    return p0
.end method

.method public static getSamsungNotesSettingTitleRes()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_title_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_title:I

    :goto_0
    return v0
.end method

.method public static getUsePhoneAsToolbarSummaryRes(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_use_phone_as_toolbar_global_setting_on_summary:I

    return p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result p0

    const v0, 0x222e0

    if-ge p0, v0, :cond_1

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_use_phone_as_toolbar_global_setting_off_summary:I

    return p0

    :cond_1
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_use_phone_as_toolbar_global_setting_off_summary_sep_14:I

    return p0
.end method

.method public static isActionIconsEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActionIconsSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isSupportedActionLink(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBiometricSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isBiometricDisabledMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isClippingOptionsChecked()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/permission/DeepSkyPermissionHelper;->isAllGrantedPermission()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_clipping_options"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isClippingOptionsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isSupportedMode()Z

    move-result v0

    return v0
.end method

.method public static isClippingOptionsSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isContextAwarenessSupported()Z

    move-result v0

    return v0
.end method

.method public static isContactUsSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/settings/external/ContactUs;->isAvailableContactUs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConvertYourNoteEnabled()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isConvertYourNoteVisible(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesOldDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->getAll_OldNotesCount(I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;->getAll_ConvertedCount(I)I

    move-result p0

    sub-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isEnableTrashVisible()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->isOnDeveloperMode()Z

    move-result v0

    return v0
.end method

.method public static isFingerprintDeviceSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->isDeviceAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHandWritingRecognitionLanguageSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHideNavigationBarWhenWritingSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isSupportHideNavigationOption()Z

    move-result v0

    return v0
.end method

.method public static isHideScrollBarWhenEditingSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isVSTModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isImportDataSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p0

    invoke-virtual {p0}, Ln/a;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImportMemosFromPhoneSupported(Landroid/content/Context;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;->isAppInstalled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImportNotesSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v1

    const v2, 0x1afa4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isImportSNotesFromGoogleDriveSupported(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/common/util/EnvironmentUtils;->isRunningUnderKnox(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIrisDeviceSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isDeviceAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLockNoteSetPasswordEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedSetLockPassword(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isLockNotesAccessEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p0

    invoke-virtual {p0}, Lf/a;->r()Z

    move-result p0

    return p0
.end method

.method public static isLockNotesSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedLock(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isLockNotesUsingFingerprintSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isBiometricSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isFingerprintDeviceSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;)Z

    move-result p0

    return p0
.end method

.method public static isLockNotesUsingIrisSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isBiometricSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isIrisDeviceSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;)Z

    move-result p0

    return p0
.end method

.method public static isLookWhenSavedSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isScreenOffMemoEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLookWhenSavedVisible()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->isSpenActivated()Z

    move-result v0

    return v0
.end method

.method public static isMicrosoftSyncSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isMsSyncSupported()Z

    move-result v0

    return v0
.end method

.method public static isPermissionsSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isKoreaModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

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

.method public static isSamsungCloudSyncSupported()Z
    .locals 1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->p()Z

    move-result v0

    return v0
.end method

.method public static isSharedNotesSyncSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isCoeditFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc3/h;->l(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUsePhoneAsToolbarEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isUsePhoneAsToolbarSupported()Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    const-string v1, "SettingsMenuUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "isUsePhoneAsToolbarSupported# false not TabletModel"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isUsePhoneAsToolbarSupported# false DexMode"

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_2

    const-string v0, "isUsePhoneAsToolbarSupported# false Below R OS"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isContinuityFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "isUsePhoneAsToolbarSupported# false ContinuityFeatureEnabled"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isContinuityServiceVersionSupported()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "isUsePhoneAsToolbarSupported# false ContinuityServiceVersionSupported"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "isUsePhoneAsToolbarSupported# false SecureFolderMode"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "isUsePhoneAsToolbarSupported# false KnoxMode"

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isSupportInAppServer()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getOneUIVersion()I

    move-result v3

    const v4, 0x9ca4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_7

    move v3, v5

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsePhoneAsToolbarSupported# modelFeatureEnabled: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSupportedOnUiVersion: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v2, v5

    :cond_9
    return v2
.end method

.method public static isUsePhoneAsToolbarVisible(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p0

    invoke-virtual {p0}, Lf/a;->r()Z

    move-result p0

    return p0
.end method
