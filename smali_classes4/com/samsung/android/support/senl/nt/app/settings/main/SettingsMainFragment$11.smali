.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/AllowAppPermissionDialogFragment$AllowAppPermissionDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->onStart()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppPermissionCancel()V
    .locals 2

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "onAppPermissionCancel."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->d(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    return-void
.end method

.method public onAppPermissionConfirm()V
    .locals 2

    const-string v0, "ST$SettingsMainFragment"

    const-string v1, "onAppPermissionConfirm."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->m(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$11;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    return-void
.end method
