.class Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->k()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->d(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->isAuthInitCompleted()Z

    move-result v0

    const-string v2, " "

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->d(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->signIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->e(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;Landroidx/fragment/app/DialogFragment;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoftLoginActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ST$SettingsMicrosoftLoginActivity"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string p1, "517"

    const-string v0, "5171"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_network_init_error_msg_first:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_network_init_error_msg_second:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms_network_connection_error_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :goto_2
    return-void
.end method
