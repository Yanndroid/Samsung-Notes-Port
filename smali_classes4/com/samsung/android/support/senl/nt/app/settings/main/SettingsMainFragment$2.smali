.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleDropDownPreferenceChange(Landroidx/preference/DropDownPreference;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange# key : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ST$SettingsMainFragment"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings_coedit_note_sync_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lc3/q;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private handleSwitchPreferenceChange(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange# key : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ST$SettingsMainFragment"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainSALoggingHelper;->mainSettingChangedSALogging(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "settings_sync_to_microsoft"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v4, "settings_show_option_to_move_pen_tools"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v4, "settings_samsung_cloud_sync"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "settings_clipping_options"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->k()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->e(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;)V

    const-string v3, "android.permission.GET_ACCOUNTS"

    const-string v4, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->o()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->l(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->p(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->j(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    return v1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->e(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->w()Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->k(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Ln2/a;->D(ZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateSamsungCloudSyncSummary()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->c(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/permission/DeepSkyPermissionHelper;->isAllGrantedPermission()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/permission/DeepSkyPermissionHelper;->showGotoPermissionSettingDialog()V

    return v1

    :cond_9
    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e40a743 -> :sswitch_3
        -0x7e2f629a -> :sswitch_2
        -0x703d6ed9 -> :sswitch_1
        -0x178dbdce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsMain:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x64

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->handleSwitchPreferenceChange(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "settings_coedit_note_sync_type"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroidx/preference/DropDownPreference;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->handleDropDownPreferenceChange(Landroidx/preference/DropDownPreference;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method
