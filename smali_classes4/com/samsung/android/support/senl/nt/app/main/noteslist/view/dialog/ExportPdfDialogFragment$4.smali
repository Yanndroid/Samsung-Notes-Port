.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->updateProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
