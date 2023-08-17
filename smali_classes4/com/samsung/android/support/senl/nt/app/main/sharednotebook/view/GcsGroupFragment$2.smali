.class Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm(Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->n(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->o(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "delete_confirm_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method
