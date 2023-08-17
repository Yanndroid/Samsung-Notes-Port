.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditHelper"

.field private static mImportProgressListeners:Lj/a;


# instance fields
.field public final mCoeditInviteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;

.field private mDeleteProgressListener:Lj/a;

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;

.field private final mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mCoeditInviteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->lambda$requestImport$0(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object p0

    return-object p0
.end method

.method public static addImportProgressListener(Lj/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImportProgressListener# Already has a registered listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lj/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mDeleteProgressListener:Lj/a;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    return-object p0
.end method

.method private dismissDeleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "delete_coedit_note_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->dismissDeleteDialog()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->importErrorHandler(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->replaceDeleteBtnToProgress()V

    return-void
.end method

.method public static bridge synthetic h()Lj/a;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    return-object v0
.end method

.method public static bridge synthetic i(Lj/a;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    return-void
.end method

.method private importErrorHandler(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "importErrorHandler# result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_import_dialog_server_error:I

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_connect_to_wifi_or_allow_mobile_data:I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->coedit_fail_to_share_as_too_big:I

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_failed_to_copy:I

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xca
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic lambda$requestImport$0(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->importNoteToCoedit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lj/a;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "CoeditHelper"

    const-string p1, "requestImport# importNotesUuid is null"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    const/16 p1, 0xc9

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public static removeImportProgressListener()V
    .locals 2

    const-string v0, "CoeditHelper"

    const-string v1, "removeImportProgressListener#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    return-void
.end method

.method private replaceDeleteBtnToProgress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "delete_coedit_note_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;->replaceBtnToProgress()V

    return-void
.end method


# virtual methods
.method public canCreateNewCoeditNote()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isWiFiSyncOnlyAndNotWiFiConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CoeditHelper"

    if-eqz v0, :cond_0

    const-string v0, "canCreateNewCoeditNote# false - wifi only"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showGoToSettingsDialog(Ljava/lang/ref/WeakReference;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v0, "canCreateNewCoeditNote# false - network is not available"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    iget v2, v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->standaloneNetworkFail:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return v1

    :cond_1
    invoke-static {}, Lu/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "canCreateNewCoeditNote# false - storage full"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_cannot_create_shared_note_storage_full:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return v1

    :cond_2
    return v3
.end method

.method public importNoteToSpace(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importNoteToSpace# checkedCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lockedNotesCount : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CoeditHelper"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;->createUnlockConfirmDialog(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;Z)V

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2, v7, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->requestImport(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerInviteReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mCoeditInviteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;->registerReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;)V

    return-void
.end method

.method public requestImport(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lp/a;->j(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_0
    sget-object p4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mImportProgressListeners:Lj/a;

    if-eqz p4, :cond_1

    invoke-interface {p4, p2}, Lj/a;->onStarted(Ljava/lang/String;)V

    :cond_1
    new-instance p4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;

    invoke-direct {p4, p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/util/concurrent/Callable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observe(Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;->onTaskFinished()V

    return-void
.end method

.method public setNoteDeleteProgressListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mDeleteProgressListener:Lj/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mDeleteProgressListener:Lj/a;

    :cond_0
    invoke-static {}, Li/a;->c()Li/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mDeleteProgressListener:Lj/a;

    invoke-virtual {v0, v1}, Li/a;->a(Lj/a;)V

    return-void
.end method

.method public unregisterInviteReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->mCoeditInviteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;->unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;)V

    return-void
.end method
