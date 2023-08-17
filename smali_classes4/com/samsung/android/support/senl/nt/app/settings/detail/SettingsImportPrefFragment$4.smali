.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->lambda$onPreferenceClick$1()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->lambda$onPreferenceClick$0()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->lambda$onPreferenceClick$2()V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->lambda$onPreferenceClick$3()V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->l(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->j(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->h(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$3()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->m(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsDetail:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

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

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick(). key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ST$SettingsImportPrefFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v3, v1

    goto :goto_1

    :sswitch_0
    const-string v3, "settings_import_notes_from_phone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "settings_import_scrapbooks_from_samsung_account"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "settings_import_memos_from_phone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "settings_import_snote_from_google_drive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "settings_import_memos_from_samsung_account"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "settings_import_snote_from_phone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_1

    :sswitch_6
    const-string v4, "settings_import_snote_from_samsung_account"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v6, "android.permission.GET_ACCOUNTS"

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->i(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$7;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/h;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->hasMemoStoragePermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$5;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->g(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto/16 :goto_3

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->n(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/e;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$6;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/g;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    goto :goto_2

    :pswitch_5
    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;[Ljava/lang/String;)V

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->k(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/f;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V

    :goto_2
    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->p(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;Ljava/lang/Runnable;)V

    :cond_9
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7752e2d5 -> :sswitch_6
        -0x7035948f -> :sswitch_5
        -0x37c871e9 -> :sswitch_4
        0xe0fa4a1 -> :sswitch_3
        0x1d14d35d -> :sswitch_2
        0x3699525b -> :sswitch_1
        0x5d2b1a15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
