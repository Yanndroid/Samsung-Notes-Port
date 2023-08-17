.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

.field public final synthetic val$inputText:Landroid/widget/EditText;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "HashTagRenameDialogFragment"

    const-string v0, "onRenameDismiss"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Z)V

    return-void
.end method
