.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DeletedNoteConfirmDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "getPresenter()# Presenter is null. dismiss call"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DeletedNoteConfirmDialogPresenter;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_deleted_note_confirm:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->OK:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_cancel_type1:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DeletedNoteConfirmDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
