.class public Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "content"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->setContent(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->buildDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    return-void
.end method

.method public setConfirmSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->setConfirmSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPostRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->mDialog:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->setPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
