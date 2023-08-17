.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;
.source "SourceFile"


# static fields
.field private static final KEY_REVIEW_REQUEST_TIME_STAMP:Ljava/lang/String; = "review_request_time_stamp"

.field private static final REVIEW_REQUEST_PERIOD:J = 0x48190800L

.field private static final TAG:Ljava/lang/String; = "NotesPresenter"


# instance fields
.field private mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

.field private mUiSyncProgressListener:Lz2/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mUiSyncProgressListener:Lz2/a;

    return-void
.end method

.method private checkLiveSharingStatus()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NotesPresenter"

    const-string v1, "checkLiveSharingStatus#setRequestSyncContract"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/model/contractimpl/RequestSyncContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/model/contractimpl/RequestSyncContractImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->setRequestSyncContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->MAIN_LIST:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->checkLiveSharingStatus(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method private duplicateToDevice(ZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_2

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v3, 0x0

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v4, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDevice(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->checkLiveSharingStatus()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDevice(ZLjava/util/List;)V

    return-void
.end method

.method private getUpdateDataIndex(I)I
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isOldMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isRecyclebinMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isHashTagMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x16

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_0
    const/16 p1, 0x8

    return p1
.end method

.method private needVerifyOldNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "NotesPresenter"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "startConvertNotes# entity is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "startConvertNotes# locked sdoc"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    const/16 v0, 0x6f

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->verifyLockedNoteForConvert(ILandroid/content/Intent;[Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private showDeleteItemsDialog()V
    .locals 12

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersCount()I

    move-result v7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersUUID()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getChildDeletableList(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->addAll(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->getDeletableWithVerifyCount()I

    move-result v3

    add-int v8, v1, v3

    const/4 v3, 0x0

    add-int v1, v7, v0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->getTotalItems()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    if-lez v8, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->getTotalNotes()I

    move-result v1

    add-int/2addr v0, v1

    if-ne v8, v6, :cond_3

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_move_to_trash_n_note_including_1_locked_note_dialog_msg:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_deleted_include_locked_notes:I

    :goto_2
    move v6, v0

    move v4, v1

    move v9, v5

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_move_to_trash_n_note_dialog_msg:I

    :goto_3
    move v4, v1

    move v9, v6

    move v6, v0

    goto :goto_4

    :cond_5
    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_move_to_trash_n_folder_has_child_dialog_msg:I

    goto :goto_3

    :cond_6
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_move_to_trash_n_folder_dialog_msg:I

    goto :goto_3

    :cond_7
    if-ne v7, v6, :cond_9

    if-ne v0, v6, :cond_9

    if-eqz v1, :cond_8

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_one_folder_has_child_and_one_note_q:I

    goto :goto_2

    :cond_8
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_one_folder_and_one_note_q:I

    goto :goto_2

    :cond_9
    if-ne v7, v6, :cond_b

    if-eqz v1, :cond_a

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_one_folder_has_child_and_n_note_q:I

    goto :goto_2

    :cond_a
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_one_folder_and_n_note_q:I

    goto :goto_2

    :cond_b
    if-ne v0, v6, :cond_d

    if-eqz v1, :cond_c

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_n_folder_has_child_and_one_note_q:I

    goto :goto_2

    :cond_c
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_n_folder_and_one_note_q:I

    goto :goto_2

    :cond_d
    if-eqz v1, :cond_e

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_n_folder_has_child_and_n_note_q:I

    goto :goto_2

    :cond_e
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_n_folder_and_n_note_q:I

    goto :goto_2

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDeleteItemsDialog# deleteNotesCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "# deleteFolderCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_btn:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showDeleteDialog(IIIIIIZIZ)V

    return-void
.end method

.method private showPermanentlyDeleteItemsDialog(Z)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersCount()I

    move-result v6

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_permanently_delete_dialog_msg:I

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_permanently_delete_no_cloud_dialog_msg:I

    :cond_1
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPermanentlyDeleteItemsDialog# deleteNotesCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleteFolderCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEmptyAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotesPresenter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    const/4 v2, 0x0

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showDeleteDialog(IIIIIIZIZ)V

    return-void
.end method

.method private unRegisterNoteListListener()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mContentObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public canCreateNewCoeditNote()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->canCreateNewCoeditNote()Z

    move-result v0

    return v0
.end method

.method public duplicateToDevice()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDevice(ZLjava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showSaveToDeviceDialog()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$Runnable;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$PostRunnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public duplicateToDevice(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicateToDevice# documentList size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "DUPLICATE_NOTES"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showSaveToDeviceDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lt1/a;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Lt1/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mImportDocumentManager:Lt1/a;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {v2, p1}, Lt1/a;->u(Ljava/util/concurrent/ExecutorService;)Lt1/a;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$10;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lt1/a;->N(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lt1/a;

    move-result-object p1

    invoke-virtual {p1}, Lt1/a;->execute()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->onTaskFinished()V

    return-void
.end method

.method public duplicateToDeviceFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLockHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    return-object v0
.end method

.method public getSearchHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mSearchHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    return-object v0
.end method

.method public getTipCardHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    return-object v0
.end method

.method public importNoteToSpace(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->importNoteToSpace(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public initDataObserver()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->initDataObserver()V

    return-void
.end method

.method public initPresenter(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;)V
    .locals 4

    const-string v0, "NotesPresenter"

    const-string v1, "initPresenter"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getDialogCreator()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$CheckBoxAnimatorControllerListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCheckBoxAnimatorController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mUiSyncProgressListener:Lz2/a;

    invoke-virtual {p1, v0}, Ln2/a;->c(Lz2/a;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTaskStatusListener:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->registerTaskStatusListener(ILcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->registerInviteReceiver()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mPdfImportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;->registerTaskListener()V

    return-void
.end method

.method public msSyncChanged()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v4, v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    if-ne v3, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_0
    if-eq v3, v1, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyItemRangeChanged(II)V

    :cond_3
    return-void
.end method

.method public onCoeditInvitationReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCoeditInvitationMap(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    const-string v0, "Space Invitation Received"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    const-string v1, "onCoeditInvitationReceived"

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onDataChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onDataChangedByFolder(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataChangedByFolder needDataChange# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isDataChanged# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " getLastOpenedSDocXDataChanged# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLastOpenedSDocXDataChanged()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotesPresenter"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLastOpenedSDocXDataChanged()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_1
    const/16 p1, 0x18

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setCheckedDimNotes(Landroid/os/Bundle;)V

    :cond_2
    const-string p1, "onDataChangedByFolder"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickEditMode(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setLastOpenedSDocXDataChanged(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onDataChanged(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onDestroy(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy# hashCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->removeObserver()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mMicrosoftHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mMicrosoftHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->unregisterListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mPdfImportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mPdfImportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;->unregisterTaskListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mPdfImportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mSearchHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mSearchHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->unregisterInviteReceiver()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDragAndDropHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDragAndDropHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDragAndDropHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->unRegisterNoteListListener()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTaskStatusListener:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->unregisterTaskStatusListener(ILcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/migration/c;->H(Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mUiSyncProgressListener:Lz2/a;

    invoke-virtual {p1, v1}, Ln2/a;->k(Lz2/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mUiSyncProgressListener:Lz2/a;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mMigrationListener:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTaskStatusListener:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFolderSelected# folderUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needDataChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->setFolderUuid(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->setLastSelectedFolder(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setIsScrollToTop(ZI)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onDataChangedByFolder(Z)V

    :cond_0
    return-void
.end method

.method public onHashTagSelected(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NotesPresenter"

    if-nez p1, :cond_0

    const-string p1, "onHashTagSelected# selectedTags is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHashTagSelected# selectedTags : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->onHashTagSelected(Ljava/util/Set;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingUtils;->stopCheckLiveSharing(Landroid/content/Context;)V

    return-void
.end method

.method public onRestoreProgressCircle()Z
    .locals 3

    const-string v0, "LockTask"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->checkRunningTask(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NotesPresenter"

    if-eqz v0, :cond_0

    const-string v0, "onRestoreProgressCircle : LockTask"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "RestoreTask"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->checkRunningTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onRestoreProgressCircle : RestoreTask"

    goto :goto_0

    :cond_1
    const-string v0, "ShareDialogTask"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->checkRunningTask(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "onRestoreProgressCircle : ShareDialogTask"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mExportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getRunningTask(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->setShareDialogTaskResultListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostResumeToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;ILjava/lang/Runnable;)V

    return-void
.end method

.method public onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpaceSelected# groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setSpaceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    const/16 p2, 0xe

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setMode(I)Z

    const-string p1, "681"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerNoteListListener()V
    .locals 5

    const-string v0, "NotesPresenter"

    const-string v1, "registerNoteListListener#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.app.notes.memolist.ACTION_FORCE_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->registerListener()V

    return-void
.end method

.method public removeProgressCircle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->removeProgressCircle()V

    return-void
.end method

.method public requestInAppReview()V
    .locals 13

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "review_request_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "review_request_time_stamp"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestInAppReview# count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", timeStamp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NotesPresenter"

    invoke-static {v10, v9}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v11, 0x48190800

    add-long/2addr v5, v11

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    const/16 v5, 0xf

    if-le v5, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v7, v8}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$11;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Lcom/google/android/play/core/review/ReviewManager;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void

    :cond_1
    :goto_0
    const-string v0, "requestInAppReview# not enough conditions"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public runPendingShareDialogTask()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mExportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->runPendingShareDialogTask()V

    return-void
.end method

.method public setCheck(Ljava/lang/String;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCheck# uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->findCommonHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->findCommonHolderInfo(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCheckBoxAnimatorController:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;->setCheck(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDragAndDropHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedDataCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->updateDragShadow(I)V

    return-void
.end method

.method public shareNoteBySavedShareType(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->executeShareTask(Ljava/util/ArrayList;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setSaveExportType(I)V

    return-void
.end method

.method public shareOldNotes()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getSharableCheckedOldNotes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->executeShareTask(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public showConvertNotesDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_note_title:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_note_jp_desctiption:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_note_desctiption:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_notes_title:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_notes_jp_desctiption:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->convert_notes_desctiption:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showConvertDialog(II)V

    return-void
.end method

.method public showDeleteCoeditNotesDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mCoeditHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->setNoteDeleteProgressListener()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showCoeditDeleteNotesDialog(II)V

    return-void
.end method

.method public showDeleteDialog()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteDialog(Z)V

    return-void
.end method

.method public showDeleteDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isNeedToDeletePermanently(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showPermanentlyDeleteItemsDialog(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteItemsDialog()V

    :goto_0
    return-void
.end method

.method public showDeleteGcsSpaceNotesDialog(I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_permanently_delete_n_note_erased_dialog_msg:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showDeleteGcsSpaceDialog(IIIIIIZI)V

    return-void
.end method

.method public showExportOptionPopup(Z)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotesPresenter"

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->canAddPdfFileMenu(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "showExportOptionPopup# isSaveAs, canAddPdfFileMenu fail"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesCount()I

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "showExportOptionPopup# checkCount 0"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getSharableCheckedNoteMap()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showExportOptionPopup# isSaveAs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", selectedSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getDeletableCheckedLockNotesCount()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result v3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;->SHARE:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;

    invoke-direct {v4, v0, v5, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;IZ)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;ZLjava/util/Map;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;->SHARE_NO_PROVIDER:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;

    invoke-direct {v4, v0, v5, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper$Caller;IZ)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$7;

    invoke-direct {v1, p0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Ljava/util/Map;Z)V

    :goto_0
    invoke-interface {v3, v0, v4, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;->createUnlockConfirmDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mExportHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->showExportOptionPopup(Ljava/util/ArrayList;Z)V

    :goto_1
    return-void
.end method

.method public showToastForMove(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->moveFolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->duplCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_note_not_moved:I

    iget v3, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->duplCount:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$MovingFolder;->sdocUuidList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public startConvertNotes(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getOldNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->getAll_OldNotes(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setConvertAll(Z)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startConvertNotes# size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->needVerifyOldNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setConvertAll(Z)V

    return-void

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->addConvertNoteTipCard(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateDataObserverToCurrentMode(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->getUpdateDataIndex(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->getUpdateDataIndex(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->updateDataObserverToCurrentMode()V

    return-void
.end method

.method public updateSubHeaderCheckBox(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->findCommonHolder(J)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->findCommonHolderInfo(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const-wide/16 v1, -0x10

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isSubHeaderChecked(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method
