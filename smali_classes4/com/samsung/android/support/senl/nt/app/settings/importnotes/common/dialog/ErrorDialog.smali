.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;
.source "SourceFile"


# instance fields
.field private final mAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_btn_ok:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_import_dialog_server_error_title:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_import_dialog_server_error:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
