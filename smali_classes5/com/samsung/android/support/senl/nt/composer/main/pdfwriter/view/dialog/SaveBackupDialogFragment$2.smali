.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->save()V

    :cond_1
    return-void
.end method
