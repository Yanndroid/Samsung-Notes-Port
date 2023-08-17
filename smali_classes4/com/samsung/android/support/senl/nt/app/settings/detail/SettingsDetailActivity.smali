.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsTabletLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;-><init>()V

    const-string v0, "ST$SettingsDetailActivity"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private changedToolbarFragment(Landroidx/fragment/app/Fragment;)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->mIsTabletLayout:Z

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->mIsTabletLayout:Z

    instance-of v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;->updateOtherPreference()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsAddOnsPrefFragment;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsAddOnsPrefFragment;-><init>()V

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsAddOnsPrefFragment;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;-><init>()V

    const/16 v0, 0xb

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "changeToolbarFragment#"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->fragment_container:I

    const-string v3, "ST$SettingsDetailActivity"

    invoke-virtual {v1, v2, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->initToolBar()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method private getDetailFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailFragment# Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ST$SettingsDetailActivity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->createSettingsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createSettingsFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingsFragment# Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsCustomizeToolbarFragment;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsAddOnsPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsAddOnsPrefFragment;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsHWLanguagePrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsHWLanguagePrefFragment;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsConvertOldNotesFragment;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;-><init>()V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLookWhenSavedPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLookWhenSavedPrefFragment;-><init>()V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;-><init>()V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getFragmentTypeFromTargetPreferenceKey(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFragmentTypeFromTargetPreferenceKey# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "settings_import_notes_from_phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "settings_pen_color_for_saved_notes_pen_color_on_white_bg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "settings_lock_biometrics_iris"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "settings_import_scrapbooks_from_samsung_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "settings_lock_biometrics_fingerprints"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move v5, v2

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "settings_pen_color_for_saved_notes_black_color_on_white_bg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "settings_pen_color_for_saved_notes_same_as_screen_off_memo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v5, v3

    goto :goto_0

    :sswitch_7
    const-string v0, "settings_import_memos_from_phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "settings_import_snote_from_google_drive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "settings_lock_create_change_password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v5, v4

    goto :goto_0

    :sswitch_a
    const-string v0, "settings_import_memos_from_samsung_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "settings_import_snote_from_phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "settings_import_snote_from_samsung_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not defined on SettingsSearchProvider"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->getFragmentTypeFromTargetPreferenceKey(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7752e2d5 -> :sswitch_c
        -0x7035948f -> :sswitch_b
        -0x37c871e9 -> :sswitch_a
        -0x27ae5381 -> :sswitch_9
        0xe0fa4a1 -> :sswitch_8
        0x1d14d35d -> :sswitch_7
        0x211a089f -> :sswitch_6
        0x31bac115 -> :sswitch_5
        0x35c4da9b -> :sswitch_4
        0x3699525b -> :sswitch_3
        0x36fb669f -> :sswitch_2
        0x576d852f -> :sswitch_1
        0x5d2b1a15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ST$SettingsDetailActivity"

    return-object v0
.end method

.method public initFragment()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getDetailFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initFragment# FragmentType is null. finish activity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->initFragmentArgument(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->fragment_container:I

    const-string v3, "ST$SettingsDetailActivity"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public initFragmentType()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, -0x1

    const-string v2, "fragment_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getFragmentTypeFromTargetPreferenceKey(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult# requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ST$SettingsDetailActivity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->resultAllFilesAccessPermission(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->mFragmentType:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ST$SettingsDetailActivity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ST$SettingsDetailActivity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->changedToolbarFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->mIsTabletLayout:Z

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSupportNavigateUp# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getSettingsMainActivity()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
