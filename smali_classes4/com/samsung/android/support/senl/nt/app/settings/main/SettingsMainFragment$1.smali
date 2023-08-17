.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsMain:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick# key : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ST$SettingsMainFragment"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onPreferenceClick# preference is disabled "

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainSALoggingHelper;->mainSettingClickedSALogging(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v3, p1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "settings_style_of_new_notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "settings_contact_us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "settings_privacy_notice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "settings_about_notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "settings_permissions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "settings_convert_your_notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "settings_import_notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "settings_sync_to_microsoft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v2, "settings_customize_toolbar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_9
    const-string v2, "settings_handwriting_recognition_language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_a
    const-string v2, "settings_toolbar_add_ons"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_b
    const-string v2, "settings_lock_notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_c
    const-string v2, "settings_pen_color_for_saved_notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    move v3, v0

    goto :goto_1

    :sswitch_d
    const-string v2, "settings_samsung_cloud_sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/external/ContactUs;->launchContactUs(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/external/PersonalInfoNotice;->linkPersonalInfoNotice(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->m(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->n(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->g(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e2f629a -> :sswitch_d
        -0x77eeb40b -> :sswitch_c
        -0x6dd29fb7 -> :sswitch_b
        -0x44c9ef0a -> :sswitch_a
        -0x325a4d12 -> :sswitch_9
        -0x217f319d -> :sswitch_8
        -0x178dbdce -> :sswitch_7
        0xbc2d443 -> :sswitch_6
        0x1550435d -> :sswitch_5
        0x15b1f268 -> :sswitch_4
        0x252b3573 -> :sswitch_3
        0x38646f0b -> :sswitch_2
        0x512e10b9 -> :sswitch_1
        0x7f33b864 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
