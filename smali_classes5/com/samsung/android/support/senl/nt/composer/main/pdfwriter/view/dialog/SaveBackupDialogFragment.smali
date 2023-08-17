.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isClicked:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveBackupDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->isClicked:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->isClicked:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->isClicked:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "Composer"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;

    if-eqz v0, :cond_1

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "getPresenter()# Presenter is null. dismiss call"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-object v1
.end method

.method private getTitle()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {v1}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->pdf_reader_save_backup_confirm_dialog_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->pdf_reader_save_backup_confirm_dialog_desc:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_save_full:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_discard:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/SaveBackupDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method
