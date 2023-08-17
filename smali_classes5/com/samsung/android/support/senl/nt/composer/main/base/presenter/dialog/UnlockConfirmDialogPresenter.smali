.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockConfirmDialogPresenter"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

.field private mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    return-void
.end method

.method private isAvailableToShow()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "UnlockConfirmDialogPresenter"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isAvailableToShow# dialog is showing"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableToShow# "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachView()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->onDismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    return-void
.end method

.method public show(Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->isAvailableToShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createUnlockConfirmDialog(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->show()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public unlock(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/UnlockConfirmDialogPresenter;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
