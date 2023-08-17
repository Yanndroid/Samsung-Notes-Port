.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_FILE_DOWNLOAD_ENDED:Ljava/lang/String; = "key_file_download_ended"

.field private static final TAG:Ljava/lang/String; = "ST$ImportFolderDialog"


# instance fields
.field private final mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

.field private final mDuplicateFileResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

.field private mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

.field private final mFileDownloadResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

.field private mFileNameInUseDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

.field private mIsFileDownloadEnded:Z

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDuplicateFileResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    return-void
.end method


# virtual methods
.method public dismissFileDownloadingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ST$ImportFolderDialog"

    const-string v1, "dismissFileDownloadingDialog# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    :cond_0
    return-void
.end method

.method public isFileDownloadInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRestoreDialogState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key_file_download_ended"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "FileNameInUseDialogFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileNameInUseDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDuplicateFileResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mIsFileDownloadEnded:Z

    const-string v1, "key_file_download_ended"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public showErrorDialog(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "ST$ImportFolderDialog"

    if-eqz v0, :cond_0

    const-string p1, "showErrorDialog# isNotAvailableActivity"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "showErrorDialog# "

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;->show()V

    return-void
.end method

.method public showFileDownloadingDialog(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFileDownloadingDialog# importType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$ImportFolderDialog"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->newInstance(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileDownloadDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showFileNameInUseDialog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ST$ImportFolderDialog"

    const-string v1, "showFileNameInUseDialog# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileNameInUseDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDuplicateFileResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mFileNameInUseDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->mDialogContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FileNameInUseDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
