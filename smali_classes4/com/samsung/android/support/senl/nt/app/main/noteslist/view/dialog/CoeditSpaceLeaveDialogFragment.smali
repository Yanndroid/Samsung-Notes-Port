.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceLeaveDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;
.source "SourceFile"


# instance fields
.field private mIsLeader:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 10

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_leave_space_dialog_title:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_leave_space_dialog_message:I

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_ok:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_edit_menu_dialog_action_leave:I

    :goto_0
    move v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;-><init>(IIIIIIZIZ)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceLeaveDialogFragment;->mIsLeader:Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->KEY_IS_LEADER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceLeaveDialogFragment;->mIsLeader:Z

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceLeaveDialogFragment;->mIsLeader:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->mMessageId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_leave_space_dialog_message_for_leader:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->KEY_IS_LEADER:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceLeaveDialogFragment;->mIsLeader:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
