.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VoiceDataRenameDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getExistNameError()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_already_in_use:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_recording_rename_tilte:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidNameError()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_invalid_title_letter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

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

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "getPresenter()# Presenter is null. dismiss call"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataRenameDialogPresenter;

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->onDetach()V

    return-void
.end method

.method public showInvalidTitleToast()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_invalid_title_letter:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
