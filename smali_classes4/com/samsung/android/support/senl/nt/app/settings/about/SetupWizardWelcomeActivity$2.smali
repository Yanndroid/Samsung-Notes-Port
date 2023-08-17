.class Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->setNoticeAppPermissionNeededs(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
