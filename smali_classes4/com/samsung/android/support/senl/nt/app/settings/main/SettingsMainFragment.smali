.class public Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;
.source "SourceFile"


# static fields
.field private static final REQUEST_CONTINUITY_SETTING:I = 0x2

.field private static final REQUEST_LOGIN_MS_ACCOUNT:I = 0x1

.field private static final REQUEST_SYNC_ACCESS_TOKEN:I = 0x67

.field public static final TAG:Ljava/lang/String; = "ST$SettingsMainFragment"


# instance fields
.field private final mContinuitySettingObserver:Landroid/database/ContentObserver;

.field private mGlobalSyncStatusHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

.field private mIsTablet:Z

.field private final mMsLoginConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

.field private final mMsSyncTurnOnConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

.field private mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private final mOptionToMovePenToolsConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSettingsMenuInitializationHelper:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

.field private mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

.field private final mSignInAndTurnOnSyncConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

.field private mSyncEnableModeListener:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

.field private final mTurnOffSCloudSyncConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mMsLoginConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSignInAndTurnOnSyncConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mMsSyncTurnOnConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$6;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mTurnOffSCloudSyncConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$7;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOptionToMovePenToolsConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$9;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mContinuitySettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->bindSyncService()V

    return-void
.end method

.method private bindSyncService()V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSyncEnableModeListener:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    invoke-virtual {v0, v1}, Ln2/a;->a(Lf1/a;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->checkedNotificationPermissions()V

    return-void
.end method

.method private changeSCloudSyncSummaryToAutoSyncDisabled(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "changeSCloudSyncSummaryToAutoSyncDisabled# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_auto_sync_disabled:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private changeSCloudSyncSummaryToAutoSyncEnabled(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "changeSCloudSyncSummaryToAutoSyncEnabled# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_sync_turned_off:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private changeSCloudSyncSummaryToFailedConsentToUseNetwork(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "changeSCloudSyncSummaryToFailedConsentToUseNetwork# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_failed_consent_to_use_network:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private changeSCloudSyncSummaryToNoPermission(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->getNotGrantedPermissions()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSCloudSyncSummaryToNoPermission# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ST$SettingsMainFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    if-gtz v1, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_no_permission:I

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v0, v0, v3

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_no_permissions:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->string_comma:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->arrayJoin(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private changeSCloudSyncSummaryToNoPersonalInfo(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "changeSCloudSyncSummaryToNoPersonalInfo# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_no_personal_info:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private changeSCloudSyncSummaryToNoPrivacyNotice(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "changeSCloudSyncSummaryToNoPrivacyNotice# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_no_privacy_notice:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private changeSCloudSyncSummaryToNotLogin(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "changeSCloudSyncSummaryToNotLogin# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private changeSCloudSyncSummaryToRequestDownloadSCloud(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_no_scloud_package:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_samsung_cloud:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkedNotificationPermissions()V
    .locals 1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->checkedNotificationPermissions(Landroidx/fragment/app/Fragment;)Z

    return-void
.end method

.method private compareIntentAction(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->finishActivity()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMsAccountSignIn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->loginSamsungAccountByFragment(I)V

    return-void
.end method

.method private finishActivity()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->onSCloudSettingSelected()V

    return-void
.end method

.method private getNotGrantedPermissions()[Ljava/lang/String;
    .locals 7

    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->requestPermissions(I[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->setEnableSamsungAccountSync(Z)V

    return-void
.end method

.method private initializeGlobalSyncStatusHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mGlobalSyncStatusHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$12;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$Listener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mGlobalSyncStatusHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;->initialize()V

    return-void
.end method

.method private isMicrosoftSyncStartRequestedByExternalAction()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMsSignInRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMsSignOutRequested()Z

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

.method private isMsAccountSignIn()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->isSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMsSignInRequested()Z
    .locals 1

    const-string v0, "com.samsung.android.app.notes.sync.ui.MS_SETTINGS"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->compareIntentAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMsSignOutRequested()Z
    .locals 1

    const-string v0, "com.samsung.android.app.notes.sync.ui.MS_SIGNOUT"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->compareIntentAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showOptionMovePenToolsDialog()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showTurnOffSCloudSyncWithTurnOffMSSyncDialog()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showTurnOnSCloudSyncWithTurnOnMSSyncDialog()V

    return-void
.end method

.method private loginSamsungAccountByFragment(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->loginSamsungAccountByFragmentContext(Landroidx/fragment/app/Fragment;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainSALoggingHelper;->mainSettingLoginSamsungAccount()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startMicrosoftSyncSettingsActivity()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateHandwritingRecognitionLanguageSummary()V

    return-void
.end method

.method private onSCloudSettingSelected()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/external/SCloudSetting;->getSCloudSupportState(Landroid/content/Context;)I

    move-result v0

    const-string v1, "settings_samsung_cloud_sync"

    const-string v2, "ST$SettingsMainFragment"

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSCloudSettingSelected, unexpected sCloudSupportState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$13;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    const-string v3, "android.permission.GET_ACCOUNTS"

    const-string v4, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onSCloudSettingSelected# no permission"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v0, "onSCloudSettingSelected# Not Login."

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->loginSamsungAccountByFragment(I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "onSCloudSettingSelected# SCloud not installed."

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    const-string v1, "com.samsung.android.scloud"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->goToGalaxyAppStore(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSCloudSettingSelected, unused sCloudSupportState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "onSCloudSettingSelected# Show SCloud Sync Settings by RPCSyncApi"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/external/SCloudSetting;->launchSCloudRPCSetting(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "onSCloudSettingSelected# Start SCloud Sync Settings by intent"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/external/SCloudSetting;->launchSCloudSyncSetting(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onSCloudSettingSelected# failed to launch SCloudSyncSetting, Start NotesSyncSetting"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_6
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startSettingsActivity(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateMicrosoftSyncSummary()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateMicrosoftSyncSummary(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateUsePhoneAsToolbarSummary()V

    return-void
.end method

.method private releaseGlobalSyncStatusHandler()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mGlobalSyncStatusHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mGlobalSyncStatusHandler:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    return-void
.end method

.method private varargs requestPermissions(I[Ljava/lang/String;)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method

.method private setEnableSamsungAccountSync(Z)V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ln2/a;->D(ZZ)V

    const-string v0, "settings_samsung_cloud_sync"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;

    if-nez v0, :cond_0

    const-string p1, "ST$SettingsMainFragment"

    const-string v0, "setEnableSamsungAccountSync#. Sync Preference is Null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_accounts_summary_sync_turned_off:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private showOptionMovePenToolsDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOptionToMovePenToolsConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showSettingsConfirmDialog(ILcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    return-void
.end method

.method private showSettingsConfirmDialog(ILcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "SettingsConfirmDialogFragment"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSignInAndTurnOnSCloudSyncDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSignInAndTurnOnSyncConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showSettingsConfirmDialog(ILcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    return-void
.end method

.method private showTurnOffSCloudSyncWithTurnOffMSSyncDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mTurnOffSCloudSyncConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showSettingsConfirmDialog(ILcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    return-void
.end method

.method private showTurnOnSCloudSyncAndLoginMSDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mMsLoginConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showSettingsConfirmDialog(ILcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    return-void
.end method

.method private showTurnOnSCloudSyncWithTurnOnMSSyncDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mMsSyncTurnOnConfirmDialogFragmentListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showSettingsConfirmDialog(ILcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    return-void
.end method

.method private startMicrosoftSyncSettingsActivity()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$14;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    const-string v2, "android.permission.GET_ACCOUNTS"

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMsSignOutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showTurnOnSCloudSyncAndLoginMSDialog()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->isSignIn()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$15;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const-string v0, "settings_sync_to_microsoft"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showSignInAndTurnOnSCloudSyncDialog()V

    :cond_5
    :goto_0
    return-void
.end method

.method private startSettingsActivity(Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-class v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSettingsActivity# key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ST$SettingsMainFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    sparse-switch v6, :sswitch_data_0

    :goto_0
    const/16 v16, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "settings_style_of_new_notes"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, v7

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "settings_about_notes"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v16, v8

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "settings_permissions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v16, v9

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "settings_convert_your_notes"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, v10

    goto/16 :goto_2

    :sswitch_4
    const-string v6, "settings_import_notes"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v16, v11

    goto :goto_2

    :sswitch_5
    const-string v6, "settings_sync_to_microsoft"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v16, v12

    goto :goto_2

    :sswitch_6
    const-string v6, "settings_customize_toolbar"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v16, v13

    goto :goto_2

    :sswitch_7
    const-string v6, "settings_handwriting_recognition_language"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_8
    const-string v6, "settings_toolbar_add_ons"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v16, v14

    goto :goto_2

    :sswitch_9
    const-string v6, "settings_lock_notes"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v16, v15

    goto :goto_2

    :sswitch_a
    const-string v6, "settings_pen_color_for_saved_notes"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    :cond_b
    move/from16 v16, v5

    goto :goto_2

    :sswitch_b
    const-string v6, "settings_samsung_cloud_sync"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    :goto_1
    move/from16 v16, v6

    :goto_2
    const-string v6, "fragment_type"

    packed-switch v16, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSettingsActivity# unexpected key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_1
    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;

    goto :goto_3

    :pswitch_2
    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;

    :goto_3
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4

    :pswitch_3
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_4
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_5
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMsSignOutRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "com.samsung.android.app.notes.sync.ui.MS_SIGNOUT"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :pswitch_6
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_7
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_8
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_9
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_a
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :pswitch_b
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_d
    :goto_4
    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e2f629a -> :sswitch_b
        -0x77eeb40b -> :sswitch_a
        -0x6dd29fb7 -> :sswitch_9
        -0x44c9ef0a -> :sswitch_8
        -0x325a4d12 -> :sswitch_7
        -0x217f319d -> :sswitch_6
        -0x178dbdce -> :sswitch_5
        0xbc2d443 -> :sswitch_4
        0x1550435d -> :sswitch_3
        0x15b1f268 -> :sswitch_2
        0x252b3573 -> :sswitch_1
        0x7f33b864 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unBindSyncService()V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSyncEnableModeListener:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    invoke-virtual {v0, v1}, Ln2/a;->j(Lf1/a;)V

    return-void
.end method

.method private updateBadge()V
    .locals 4

    const-string v0, "settings_about_notes"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/BadgePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->hasBadge()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBadge# hasBadge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ST$SettingsMainFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/BadgePreference;->setBadgeVisibility(I)V

    return-void
.end method

.method private updateChangeablePreference()V
    .locals 2

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "updateChangeablePreference()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateSamsungCloudSyncSummary()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateBadge()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateTipCard()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateLookOfSavedScreenOffMemoSummary()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateHandwritingRecognitionLanguageSummary()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateUsePhoneAsToolbarSummary()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateClippingOptions()V

    return-void
.end method

.method private updateClippingOptions()V
    .locals 4

    const-string v0, "settings_clipping_options"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isClippingOptionsChecked()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClippingOptions# isChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ST$SettingsMainFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateHandwritingRecognitionLanguageSummary()V
    .locals 5

    const-string v0, "settings_handwriting_recognition_language"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "Settings"

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLookOfSavedScreenOffMemoSummary()V
    .locals 4

    const-string v0, "settings_pen_color_for_saved_notes"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "Settings"

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update LookOfSavedScreenOffMemo summary : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ST$SettingsMainFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ColoredPreference;->setSummaryColor(Z)V

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_of_saved_notes_same_as_screen_off_memo:I

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_of_saved_notes_pen_color_on_white_bg:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_of_saved_notes_black_color_on_white_bg:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateMicrosoftSyncSummary()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMsAccountSignIn()Z

    move-result v0

    invoke-static {}, Li1/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateMicrosoftSyncSummary(ZLjava/lang/String;)V

    return-void
.end method

.method private updateMicrosoftSyncSummary(ZLjava/lang/String;)V
    .locals 8

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    const-string v1, "ST$SettingsMainFragment"

    if-nez v0, :cond_0

    const-string p1, "updateMicrosoftSyncSummary# Microsoft Sync is not supported"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "settings_sync_to_microsoft"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;

    if-nez v0, :cond_1

    const-string p1, "updateMicrosoftSyncSummary# Sync Preference is Null"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isUPSM(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_upsm_sub_text_unable_to_sync:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setSecondarySummary(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_2
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->w()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMicrosoftSyncSummary# signIn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setShowSwitch(Z)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz p1, :cond_6

    if-eqz v5, :cond_5

    if-eqz p2, :cond_4

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_sign_in_with_account_summary:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;->setSecondarySummary(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_4
    const-string p1, ""

    goto :goto_4

    :cond_5
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_sign_out_with_account_summary:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_sign_out_without_account_summary:I

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :goto_5
    return-void
.end method

.method private updateTipCard()V
    .locals 4

    const-string v0, "settings_update_tipcard"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->hasTipCard()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTipCard# hasTipCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ST$SettingsMainFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateToolbarMenuVisibility()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mIsTablet:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mIsTablet:Z

    const-string v0, "settings_customize_toolbar"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mIsTablet:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string v0, "settings_toolbar_add_ons"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mIsTablet:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method private updateUsePhoneAsToolbarSummary()V
    .locals 5

    const-string v0, "settings_show_option_to_move_pen_tools"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isUsePhoneAsToolbarVisible(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isUsePhoneAsToolbarEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v3, "Settings"

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getUsePhoneAsToolbarSummaryRes(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->onActivityResult(IILjava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->finishActivity()V

    return-void

    :cond_0
    const/16 v0, 0x67

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->onSCloudSettingSelected()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    if-eq p2, v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Ln2/a;->C(ZZ)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startMicrosoftSyncSettingsActivity()V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMicrosoftSyncStartRequestedByExternalAction()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->finishActivity()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string p2, "settings_show_option_to_move_pen_tools"

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateToolbarMenuVisibility()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mIsTablet:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->noticeAppPermissionIfNeededs(Landroid/app/Activity;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->checkedNotificationPermissions()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMenuInitializationHelper:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initDefaultPreference()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "Settings"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$xml;->settings_main_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMenuInitializationHelper:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initSettingsMenu(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSyncEnableModeListener:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->initializeGlobalSyncStatusHandler()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mContinuitySettingObserver:Landroid/database/ContentObserver;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$10;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;-><init>(Ljava/lang/ref/WeakReference;Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->isMicrosoftSyncStartRequestedByExternalAction()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startMicrosoftSyncSettingsActivity()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->releaseGlobalSyncStatusHandler()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mContinuitySettingObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSyncEnableModeListener:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->release()V

    :cond_1
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "settings_microsoft_sync_first_time"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSettingsMenuInitializationHelper:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->mSyncEnableModeListener:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->stopCheckLiveSharing(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x2711

    const-string v1, "ST$SettingsMainFragment"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRequestPermissionsResult# unexpected requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->o()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->showTurnOnSCloudSyncWithTurnOnMSSyncDialog()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateMicrosoftSyncSummary()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateMicrosoftSyncSummary()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->startMicrosoftSyncSettingsActivity()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateSamsungCloudSyncSummary()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->onSCloudSettingSelected()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onRequestPermissionsResult# PERMISSION_REQUEST_NOTIFICATION not verified"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;->onResume()V

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsMain:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->releaseHoldingEventTimeByTag(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateChangeablePreference()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->SETTINGS:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln2/a;->I(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment;->newInstance()Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment;->setAllowAppPermissionDialogCallback(Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment$AllowAppPermissionDialogCallback;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isAvailableActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AllowAppPermissionDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->bindSyncService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->unBindSyncService()V

    return-void
.end method

.method public updateSamsungCloudSyncSummary()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    const-string v1, "ST$SettingsMainFragment"

    if-eqz v0, :cond_0

    const-string v0, "updateSamsungCloudSyncSummary# fragment is detached"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "settings_samsung_cloud_sync"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;

    if-nez v2, :cond_2

    const-string v0, "updateSamsungCloudSyncSummary# Sync Preference is Null"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/settings/external/SCloudSetting;->getSCloudSyncState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSamsungCloudSyncSummary, unexpected sCloudSyncState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToAutoSyncDisabled(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToAutoSyncEnabled(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToNoPermission(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToNotLogin(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToRequestDownloadSCloud(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToNoPrivacyNotice(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToNoPersonalInfo(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->changeSCloudSyncSummaryToFailedConsentToUseNetwork(Lcom/samsung/android/support/senl/nt/app/settings/common/component/SyncSwitchPreferenceScreen;)V

    goto :goto_1

    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSamsungCloudSyncSummary, unused sCloudSyncState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateMicrosoftSyncSummary()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
