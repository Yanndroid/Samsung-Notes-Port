.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;
.source "SourceFile"


# static fields
.field private static final SETTINGS_BOTTOM_CATEGORY:Ljava/lang/String; = "settings_bottom_category"

.field private static final SETTINGS_CONVERT_OLD_NOTES:Ljava/lang/String; = "settings_convert_your_notes"

.field private static final SETTINGS_CONVERT_OLD_NOTES_BUTTON:Ljava/lang/String; = "settings_convert_your_notes_button"

.field private static final SETTINGS_CONVERT_OLD_NOTES_BUTTON_CATEGORY:Ljava/lang/String; = "settings_convert_your_notes_button_category"

.field private static final SETTINGS_CONVERT_OLD_NOTES_DESCRIPTION:Ljava/lang/String; = "settings_convert_your_notes_description"

.field private static final TAG:Ljava/lang/String; = "SettingsConvertOldNotesFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;-><init>()V

    return-void
.end method

.method private initLayout()V
    .locals 7

    const-string v0, "SettingsConvertOldNotesFragment"

    const-string v1, "initConvertYourNotesLayout# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesOldDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->getAll_OldNotes(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "settings_convert_your_notes_description"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextViewPreference;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_notes_jp_desctiption:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_notes_desctiption:I

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;->initTextureLayout()V

    const-string v1, "settings_convert_your_notes_button_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string v1, "settings_convert_your_notes_button"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_convert_n_notes:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ButtonPreference;->setText(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/ButtonPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "settings_bottom_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    return-void
.end method

.method private initTextureLayout()V
    .locals 5

    const-string v0, "SettingsConvertOldNotesFragment"

    const-string v1, "initTextureLayout# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_convert_your_notes"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$raw;->convert_old_note_video_tablet:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$raw;->convert_old_note_video_phone:I

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;->initTextureLayout()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$xml;->settings_convert_old_notes_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;->initLayout()V

    return-void
.end method
