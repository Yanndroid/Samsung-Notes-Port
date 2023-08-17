.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onClick# ok"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->getContract()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;->onRestoreClicked()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
