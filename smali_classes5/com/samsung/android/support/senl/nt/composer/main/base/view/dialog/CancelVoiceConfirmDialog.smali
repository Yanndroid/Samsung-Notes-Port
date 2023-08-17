.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CancelVoiceConfirmDialog"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;->TAG:Ljava/lang/String;

    const-string v1, "CancelVoiceConfirmDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$style;->NoteAlertDialogThemeForAppCompat:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_alertdialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_save_full:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_discard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$2;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_cancel_type1:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
