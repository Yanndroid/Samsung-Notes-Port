.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

.field public final synthetic val$mApplyAllItems:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->val$mApplyAllItems:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->val$mApplyAllItems:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;->val$mApplyAllItems:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;->onSkip(Z)V

    :cond_0
    return-void
.end method
