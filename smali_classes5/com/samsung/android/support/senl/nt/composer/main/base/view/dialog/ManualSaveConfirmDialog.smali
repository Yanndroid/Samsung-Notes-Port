.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ManualSaveConfirmDialog"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IManualSaveConfirmDialogPresenter;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_save_note:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IManualSaveConfirmDialogPresenter;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_cancel_type1:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IManualSaveConfirmDialogPresenter;->getMessageId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;->getDefaultDismissListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ManualSaveConfirmDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method
