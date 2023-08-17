.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    const-class p3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->getRunningTask(ILjava/lang/Class;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->getTaskResult()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)V

    :cond_1
    return v0
.end method
