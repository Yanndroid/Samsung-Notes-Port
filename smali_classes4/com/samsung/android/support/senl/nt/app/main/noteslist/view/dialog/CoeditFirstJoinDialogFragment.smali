.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CoeditFirstJoinDialogFragment"


# instance fields
.field private mDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;

.field private mMessageResID:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_invitations_join_dialog_message_for_standalone:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mMessageResID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mTitle:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mMessageResID:I

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;->onDecline()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;->onJoin()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;->onDecline()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const-string v0, "singleMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mTitle:Ljava/lang/String;

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mMessageResID:I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_shared_note:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mTitle:Ljava/lang/String;

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mMessageResID:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_invitation_join:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_decline:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mTitle:Ljava/lang/String;

    const-string v1, "title_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mMessageResID:I

    const-string v1, "message_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setResultListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->mDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;

    return-void
.end method
