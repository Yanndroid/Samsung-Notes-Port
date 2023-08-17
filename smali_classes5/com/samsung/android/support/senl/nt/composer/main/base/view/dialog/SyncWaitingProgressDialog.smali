.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "handoff$SyncWaitingProgressDialog"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    return-object p0
.end method

.method private releaseHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

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

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    const-string v1, "getPresenter# Presenter is null. dismiss call"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    const-string v0, "onCreateDialog# create"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p1

    const/16 v0, 0x12d

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$layout;->notes_progress_text_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->progress_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_synchronizing:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_cancel:I

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/d;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->sendRequestSyncMsg()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->releaseHandler()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;->onDismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->releaseHandler()V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    return-void
.end method
