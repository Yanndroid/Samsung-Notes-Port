.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

.field private mIsShare:Z

.field public mSavePostAction:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShareSaveNoteConfirmDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mSavePostAction:Ljava/lang/Runnable;

    return-void
.end method

.method public findFragmentByTag(Landroid/app/Activity;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->findFragmentByTag(Landroid/app/Activity;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public getMessageId()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mIsShare:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_save:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_as_file_save:I

    :goto_0
    return v0
.end method

.method public save()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mSavePostAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public show(ZLjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->canShow(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mIsShare:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createShareSaveNoteConfirmDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->show(Landroid/app/Activity;Ljava/lang/String;Landroidx/fragment/app/DialogFragment;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->mSavePostAction:Ljava/lang/Runnable;

    return-void
.end method
