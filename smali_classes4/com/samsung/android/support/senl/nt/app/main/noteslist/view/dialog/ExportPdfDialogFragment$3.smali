.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->updateExportingNoteName(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
