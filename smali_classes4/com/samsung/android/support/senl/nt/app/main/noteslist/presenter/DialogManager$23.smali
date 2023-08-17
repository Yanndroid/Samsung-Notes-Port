.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->updateExportPdfDialogNoteName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

.field public final synthetic val$exportingNoteName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;->val$exportingNoteName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-string v1, "DialogManager"

    if-nez v0, :cond_0

    const-string v0, "updateExportPdfDialogNoteName# not isAdded"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "updateExportPdfDialogNoteName#"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$23;->val$exportingNoteName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;->updateExportPdfDialogNoteName(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
