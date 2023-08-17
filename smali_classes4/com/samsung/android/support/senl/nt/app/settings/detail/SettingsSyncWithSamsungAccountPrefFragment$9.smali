.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged(). Sync Accounts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$SettingsSyncWithSamsungAccountPrefFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9;Landroid/widget/CompoundButton;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/CompoundButton;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p2, :cond_1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1}, Ln2/a;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onCheckedChanged(). : R.string.settings_cannot_sync_in_wifi_only"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ln2/a;->D(ZZ)V

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "settings_samsung_cloud_sync"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$9;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;Z)V

    return-void
.end method
