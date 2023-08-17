.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;
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

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12e

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showAllFilesAccessPermission(Landroid/app/Activity;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4$2;->val$permissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->o(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;I[Ljava/lang/String;)V

    return-void
.end method
