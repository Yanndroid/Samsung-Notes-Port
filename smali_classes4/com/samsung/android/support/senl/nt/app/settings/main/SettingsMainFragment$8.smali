.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "settings_sync_notes"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateSamsungCloudSyncSummary()V

    goto :goto_0

    :cond_0
    const-string p1, "settings_handwriting_recognition_language"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->o(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    goto :goto_0

    :cond_1
    const-string p1, "settings_show_option_to_move_pen_tools"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->r(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
