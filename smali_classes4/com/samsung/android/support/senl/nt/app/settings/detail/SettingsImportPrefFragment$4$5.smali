.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$5;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$5;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x130

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->o(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;I[Ljava/lang/String;)V

    return-void
.end method
