.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->createDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->access$400(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->positiveButtonEnable(Z)V

    return-void
.end method
