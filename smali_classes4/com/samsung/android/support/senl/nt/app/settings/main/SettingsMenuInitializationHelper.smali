.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ST$SettingsMenuInitializationHelper"


# instance fields
.field private mIsHideNavigationMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHandWritingLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->initTextRecognitionLanguage(Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->getFirstLanguageForTextRecognition()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage$SupportedLanguageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandWritingLanguage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$SettingsMenuInitializationHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initAboutNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_about_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getAboutSamsungNotesTitleRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private initActionIcons(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_action_icons"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isActionIconsSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_advanced_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getActionIconsSummaryRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isActionIconsEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initAutoSaveNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_auto_save_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initBlockBackKeyWhileEditing(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_block_back_key_while_editing"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initClippingOptions(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_clipping_options"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isClippingOptionsSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_advanced_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isClippingOptionsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isClippingOptionsChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getClippingOptionsSummary(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initContactUs(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_contact_us"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isContactUsSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_about_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initConvertYourNote(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_convert_your_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isConvertYourNoteVisible(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isConvertYourNoteEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initCustomizeToolbar(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_customize_toolbar"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private initHandWritingRecognitionLanguage(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_handwriting_recognition_language"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isHandWritingRecognitionLanguageSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "settings_advanced_category"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->getHandWritingLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initHideNavigationBarWhenWriting(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_hide_navigation_bar_when_writing"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isHideNavigationBarWhenWritingSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_advanced_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->mIsHideNavigationMenu:Z

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initHideScrollBarWhenEditing(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_hide_scroll_bar_when_editing"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isHideScrollBarWhenEditingSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_advanced_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initImportData(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_import_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportDataSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_general_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initLockNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_lock_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_general_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initLookWhenSaved(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 3
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_screen_off_memo_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLookWhenSavedSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_1
    const-string v1, "settings_pen_color_for_saved_notes"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLookWhenSavedVisible()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_list_summary_text_color:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initMicrosoftSync(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_sync_to_microsoft"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isMicrosoftSyncSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_sync_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->w()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initNoteStyleAndTemplate(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_style_of_new_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initPermissions(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_privacy_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "settings_permissions"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isPermissionsSupported()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initPrivacyNotice(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_privacy_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "settings_privacy_notice"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initSamsungCloudSync(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_samsung_cloud_sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isSamsungCloudSyncSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "settings_sync_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getSamsungCloudSyncMenuTitleRes(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->o()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initSharedNotesSync(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_coedit_note_sync_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isSharedNotesSyncSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_1
    const-string v0, "settings_coedit_note_sync_type"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initShowLinksInNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_show_links_in_notes"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initShowOptionToMovePenTool(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_show_option_to_move_pen_tools"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isUsePhoneAsToolbarSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "settings_advanced_category"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getUsePhoneAsToolbarSummaryRes(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private initShowWebPreviews(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_show_web_previews"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initTipCard(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 3
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_update_tipcard"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;Landroidx/preference/PreferenceFragmentCompat;Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;->setNeutralButtonClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private initToolbarAddOns(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "settings_toolbar_add_ons"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public initDefaultPreference()V
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isDefaultHideNavigationOptionEnabled()Z

    move-result v1

    const-string v2, "settings_hide_navigation_bar_when_writing"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->mIsHideNavigationMenu:Z

    return-void
.end method

.method public initSettingsMenu(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2

    const-string v0, "ST$SettingsMenuInitializationHelper"

    const-string v1, "initSettingsMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initTipCard(Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initSamsungCloudSync(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initMicrosoftSync(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initSharedNotesSync(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initLookWhenSaved(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initNoteStyleAndTemplate(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initLockNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initConvertYourNote(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initImportData(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initAutoSaveNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initShowLinksInNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initShowWebPreviews(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initClippingOptions(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initActionIcons(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initHideScrollBarWhenEditing(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initHideNavigationBarWhenWriting(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initBlockBackKeyWhileEditing(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initHandWritingRecognitionLanguage(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initShowOptionToMovePenTool(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initToolbarAddOns(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initCustomizeToolbar(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initPrivacyNotice(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initPermissions(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initAboutNotes(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initContactUs(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
