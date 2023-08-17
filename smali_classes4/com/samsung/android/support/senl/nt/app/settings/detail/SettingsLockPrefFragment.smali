.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;
.source "SourceFile"


# static fields
.field private static final INTENT_ACTION_REGISTER_IRIS:Ljava/lang/String; = "com.samsung.settings.REGISTER_IRIS"

.field private static final REQUEST_CODE_CHANGE_PASSWORD:I = 0x2

.field private static final REQUEST_CODE_CREATE_PASSWORD:I = 0x1

.field private static final REQUEST_CODE_VERIFY_PASSWORD_FOR_FINGERPRINT:I = 0x3

.field private static final REQUEST_CODE_VERIFY_PASSWORD_FOR_IRIS:I = 0x4

.field private static final SETTINGS_LOCK_BIOMETRICS_CATEGORY:Ljava/lang/String; = "settings_lock_biometrics_category"

.field private static final SETTINGS_LOCK_BIOMETRICS_FINGERPRINT:Ljava/lang/String; = "settings_lock_biometrics_fingerprints"

.field private static final SETTINGS_LOCK_BIOMETRICS_HELP_TEXT:Ljava/lang/String; = "settings_lock_biometrics_help_text"

.field private static final SETTINGS_LOCK_BIOMETRICS_IRIS:Ljava/lang/String; = "settings_lock_biometrics_iris"

.field private static final SETTINGS_LOCK_CREATE_CHANGE_PASSWORD:Ljava/lang/String; = "settings_lock_create_change_password"

.field private static final TAG:Ljava/lang/String; = "SettingsLockPrefFragment"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

.field private mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

.field private final mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private final mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mPreferenceFingerprint:Landroidx/preference/SwitchPreferenceCompat;

.field private mPreferenceIris:Landroidx/preference/SwitchPreferenceCompat;

.field private mPreferencePassword:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceFingerprint:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceIris:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferencePassword:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->startChangePassword()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->startCreatePassword()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->startRegisterFingerprint()V

    return-void
.end method

.method private initPreference()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$xml;->settings_lock_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string v0, "settings_lock_create_change_password"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferencePassword:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string v0, "settings_lock_biometrics_iris"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceIris:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string v0, "settings_lock_biometrics_fingerprints"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceFingerprint:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->startRegisterIris()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->startVerifyPasswordForBiometric(I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->updateBiometricsViews()V

    return-void
.end method

.method private setBiometricsVisible(ZZ)V
    .locals 5

    const-string v0, "settings_lock_biometrics_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "settings_lock_biometrics_help_text"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    if-eqz v1, :cond_5

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceIris:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceFingerprint:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private startChangePassword()V
    .locals 3

    const-string v0, "SettingsLockPrefFragment"

    const-string v1, "startChangePassword"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_lock_scenario_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "511"

    const-string v1, "5102"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startCreatePassword()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_lock_scenario_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "511"

    const-string v1, "5101"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startRegisterFingerprint()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->registerFingerprint(Landroid/content/Context;)V

    return-void
.end method

.method private startRegisterIris()V
    .locals 2

    const-string v0, "SettingsLockPrefFragment"

    const-string v1, "startRegisterIris"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.REGISTER_IRIS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startVerifyPasswordForBiometric(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVerifyPasswordForBiometric(requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsLockPrefFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_lock_scenario_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateBiometricsLayout()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesUsingFingerprintSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesUsingIrisSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->setBiometricsVisible(ZZ)V

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBiometricsViews()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseFingerprint(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SettingsLockPrefFragment"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasChangedFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "updateBiometricsViews, Fingerprint has changed"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseFingerprint(Landroid/content/Context;Z)V

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasChangedIris(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "updateBiometricsViews, Iris has changed"

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseIris(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    new-instance v4, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;Landroid/content/Context;ZZ)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updatePasswordLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferencePassword:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNoteSetPasswordEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferencePassword:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getLockNotesSetPasswordTitleRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SettingsLockPrefFragment"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const-string p1, "unresolved requestCode"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasEnrolledIris(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceIris:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->enableIris(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-ne p2, p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasEnrolledFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mPreferenceFingerprint:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->enableFingerprint(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-eq p2, p3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->startCreatePassword()V

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "SettingsLockPrefFragment"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->initPreference()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->updatePasswordLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->updateBiometricsLayout()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsDetail:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->releaseHoldingEventTimeByTag(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    return-void
.end method
