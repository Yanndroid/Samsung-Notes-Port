.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "IMPORT_PROGRESS_DIALOG"

.field private static final TAG:Ljava/lang/String; = "ST$ImportDocumentDialog"


# instance fields
.field private mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

.field private final mDownloadingResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

.field private mMemoDataWarningDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

.field private final mMemoDataWarningResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$NoteDataWarning;

.field private mProgressDialog:Landroidx/fragment/app/DialogFragment;

.field private final mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$NoteDataWarning;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mDownloadingResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->newInstance(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    return-object p0
.end method


# virtual methods
.method public dismissCancelDownloadingDialog()V
    .locals 2

    const-string v0, "ST$ImportDocumentDialog"

    const-string v1, "dismissCancelDownloadingDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->setIsCancelDownloadingEnded(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mProgressDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->isFragmentAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "IMPORT_PROGRESS_DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    const-string v0, "ST$ImportDocumentDialog"

    const-string v1, "dismissProgressDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mProgressDialog:Landroidx/fragment/app/DialogFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mProgressDialog:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public initDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mDownloadingResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$Downloading;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getIsCancelDownloadingEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->setIsCancelDownloadingEnded(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NoteDataWarningDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$NoteDataWarning;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$NoteDataWarning;)V

    :cond_1
    return-void
.end method

.method public isCancelDownloadingDialogAdded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

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

.method public showCancelDownloadingDialog()V
    .locals 4

    const-string v0, "ST$ImportDocumentDialog"

    const-string v1, "showCancelDownloadingDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mCancelDownloadingDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileDownloadDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 2

    const-string v0, "ST$ImportDocumentDialog"

    const-string v1, "showErrorDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ErrorDialog;->show()V

    return-void
.end method

.method public showNoteDataWarningDialog(ID)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ST$ImportDocumentDialog"

    const-string v1, "showNoteDataWarningDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;->newInstance(ID)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$NoteDataWarning;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$NoteDataWarning;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mMemoDataWarningDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "NoteDataWarningDialogFragment"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/NoteDataWarningDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IllegalStateException :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showProgressDialog()V
    .locals 3

    const-string v0, "ST$ImportDocumentDialog"

    const-string v1, "showProgressDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mProgressDialog:Landroidx/fragment/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mProgressDialog:Landroidx/fragment/app/DialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialog;->mView:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "IMPORT_PROGRESS_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
