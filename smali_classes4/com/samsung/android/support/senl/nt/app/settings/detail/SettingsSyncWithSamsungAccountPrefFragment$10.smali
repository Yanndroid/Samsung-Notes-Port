.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;->updateSyncLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

.field public final synthetic val$isChecked:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    const-string v1, "settings_samsung_cloud_sync"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->val$isChecked:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->val$isChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$10;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->o()Z

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;Z)V

    return-void
.end method
