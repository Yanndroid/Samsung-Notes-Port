.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    const-string v1, "settings_sync_to_microsoft"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onUpdate(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
