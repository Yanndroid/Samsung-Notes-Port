.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string p1, "settings_template_type"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "Settings"

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;->setSwitchEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;->setSwitchChecked(Z)V

    :cond_3
    return-void
.end method
