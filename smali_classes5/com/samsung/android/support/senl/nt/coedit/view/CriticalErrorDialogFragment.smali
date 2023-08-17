.class public Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CriticalErrorDialogFragment"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;)Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;->mContract:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;

    return-object p0
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

    const-string p1, "CriticalErrorDialogFragment"

    const-string v0, "onCreateDialog#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_error_dialog_title_tablet:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_error_dialog_title_phone:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_error_dialog_message_tablet:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_error_dialog_message_phone:I

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_error_dialog_button_cancel:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_error_dialog_button_save:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_2
    return-object p1
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;->mContract:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;

    return-void
.end method

.method public showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method
