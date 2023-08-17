.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showExportPdfDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

.field public final synthetic val$total:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;->val$total:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;->createExportPdfDialogFragment(ILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$22;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "export_pdf_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
