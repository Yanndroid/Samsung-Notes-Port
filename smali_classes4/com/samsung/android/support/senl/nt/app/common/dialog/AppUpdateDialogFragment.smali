.class public Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;
    }
.end annotation


# static fields
.field public static FOR_ADDONS:Ljava/lang/String; = "FOR_ADDONS"

.field public static FOR_COEDIT:Ljava/lang/String; = "FOR_COEDIT"

.field public static FOR_UNSUPPORTED_FORMAT_IMPORT:Ljava/lang/String; = "FOR_UNSUPPORTED_FORMAT_IMPORT"

.field public static FOR_UNSUPPORTED_FORMAT_SYNC:Ljava/lang/String; = "FOR_UNSUPPORTED_FORMAT_SYNC"

.field private static final TAG:Ljava/lang/String; = "AppUpdateDialogFragment"


# instance fields
.field private mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_ADDONS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->app_update_dialog_title_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->app_update_dialog_title:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->critical_app_update_dialog_jp:I

    goto :goto_4

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->critical_app_update_dialog:I

    goto :goto_4

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_UNSUPPORTED_FORMAT_IMPORT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->app_update_dialog_title_jp:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->app_update_dialog_title:I

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->import_new_format_content:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_jp:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->app_name:I

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_UNSUPPORTED_FORMAT_SYNC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    :goto_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_new_format_content_jp:I

    goto :goto_4

    :cond_6
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_new_format_content:I

    :goto_4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_COEDIT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected dialogTag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdateDialogFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    :goto_5
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_update:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->cancel_btn:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->mDialogListener:Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;

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
