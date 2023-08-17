.class public Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;
    }
.end annotation


# static fields
.field private static final KEY_ADAPTER_POSITION:Ljava/lang/String; = "adapter_position"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final TAG:Ljava/lang/String; = "InvitationJoinDialogFragment"


# instance fields
.field private mAdapterPosition:I

.field private mGroupId:Ljava/lang/String;

.field private mResultListener:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mAdapterPosition:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mGroupId:Ljava/lang/String;

    const-string v0, "adapter_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mAdapterPosition:I

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_decline:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_accept:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_title:I

    new-array v2, v0, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_message:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mGroupId:Ljava/lang/String;

    const-string v1, "group_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mAdapterPosition:I

    const-string v1, "adapter_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setGroupId(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mAdapterPosition:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;

    return-void
.end method

.method public showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
