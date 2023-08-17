.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AutoRestoredNoteNotiDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-void
.end method

.method private isAvailableToShow(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "isAvailableToShow# dialog is showing"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableToShow# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

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

.method public onDetachView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView# dialog is attached"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setIsRecoveredOnCorrupted(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public show(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->isAvailableToShow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isRecoveredOnCorrupted()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createAutoRestoredNoteNotiDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AutoRestoredNoteNotiDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->show()V

    return-void
.end method
