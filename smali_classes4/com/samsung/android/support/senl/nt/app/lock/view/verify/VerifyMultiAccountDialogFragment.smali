.class public Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "VerifyMultiAccountDialogFragment"


# instance fields
.field private mResultListener:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyMultiAccountDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;)Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_multiple_accounts_verify_dialog_message:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->button_sign_in:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public setOnResultListener(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;

    return-void
.end method
