.class public Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraAccessErrorDialog"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
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

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->camera_access_error_camera_busy_to_open:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->OK:I

    new-instance v1, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$1;-><init>(Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;->mContract:Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;->onDismissed()V

    :cond_0
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;->mContract:Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$Contract;

    return-void
.end method
