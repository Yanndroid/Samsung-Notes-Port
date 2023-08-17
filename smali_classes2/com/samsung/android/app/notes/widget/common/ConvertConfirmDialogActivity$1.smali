.class Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

.field public final synthetic val$fragment:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->val$fragment:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->val$fragment:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;->getDocOpenTriggerClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p2, "widget.MEMO_CONVERT"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->d(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->c(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "doc_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;->e(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;)I

    move-result p2

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x18000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
