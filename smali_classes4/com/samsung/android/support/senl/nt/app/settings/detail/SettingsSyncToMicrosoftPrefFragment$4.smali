.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->initLayout()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4;Landroid/widget/CompoundButton;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/CompoundButton;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;)Lcom/samsung/android/support/senl/nt/app/settings/common/component/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "settings_sync_to_microsoft"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;Z)V

    return-void
.end method
