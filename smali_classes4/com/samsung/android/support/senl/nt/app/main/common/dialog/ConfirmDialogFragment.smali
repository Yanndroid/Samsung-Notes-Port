.class public Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mCheckCount:I

.field private mConfirmDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

.field public mFolderUuid:Ljava/lang/String;

.field public mMessageResID:I

.field public mNegativeResId:I

.field public mPlurals:Z

.field public mPositiveResId:I

.field public mTitleResID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPositiveResId:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mNegativeResId:I

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mTitleResID:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mMessageResID:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPlurals:Z

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPositiveResId:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mNegativeResId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mConfirmDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mFolderUuid:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;->onConfirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const-string v0, "singleMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mTitleResID:I

    const-string v0, "multipleMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mMessageResID:I

    const-string v0, "check_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    const-string v0, "positive_res_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPositiveResId:I

    const-string v0, "negative_res_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mNegativeResId:I

    const-string v0, "folder_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mFolderUuid:Ljava/lang/String;

    const-string v0, "plurals"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPlurals:Z

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mTitleResID:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mTitleResID:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPlurals:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mMessageResID:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mMessageResID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mTitleResID:I

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mMessageResID:I

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPositiveResId:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mNegativeResId:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mTitleResID:I

    const-string v1, "singleMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mMessageResID:I

    const-string v1, "multipleMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mCheckCount:I

    const-string v1, "check_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPositiveResId:I

    const-string v1, "positive_res_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mNegativeResId:I

    const-string v1, "negative_res_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mFolderUuid:Ljava/lang/String;

    const-string v1, "folder_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mPlurals:Z

    const-string v1, "plurals"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mConfirmDialogResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    return-void
.end method

.method public setSelectedUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->mFolderUuid:Ljava/lang/String;

    return-void
.end method
