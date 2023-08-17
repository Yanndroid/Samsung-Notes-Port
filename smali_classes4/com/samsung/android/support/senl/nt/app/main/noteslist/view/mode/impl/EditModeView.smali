.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$CoeditImportProgressListener;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditModeView"


# instance fields
.field private final mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

.field private mCurCheckedNotesFlag:Z

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

.field private mMenuStatus:J

.field private final mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

.field private final mOnClickSelectAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

.field private mUnlock:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mCurCheckedNotesFlag:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mUnlock:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mOnClickSelectAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getFragmentContract()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getActionMenuController()Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getPresenter()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getFragmentContract()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    return-object p0
.end method

.method private appendConvert(J)J
    .locals 4

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_CONVERT:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->DISABLE_ACTION_CONVERT:J

    or-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method private appendDeleteAll(II)J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, p2

    if-ne v0, p1, :cond_0

    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CHANGE_TO_DELETE_ALL:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method private appendDuplicate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;)J
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result p1

    if-lez p1, :cond_0

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_DUPLICATE:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private appendFavorite(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;I)J
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getFavoriteNotesCount()I

    move-result p1

    if-ne p2, p1, :cond_0

    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_ADD_FAVORITES:J

    return-wide p1

    :cond_0
    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_REMOVE_FROM_FAVORITES:J

    return-wide p1
.end method

.method private appendFolderMenu(II)J
    .locals 4

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SHARE:J

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_LOCK:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_UNLOCK:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_CONVERT:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_DUPLICATE:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_REMOVE_FROM_FAVORITES:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_ADD_FAVORITES:J

    or-long/2addr v0, v2

    if-nez p2, :cond_1

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->ADD_ACTION_CHANGE_COLOR:J

    or-long/2addr v0, v2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->ADD_ACTION_RENAME:J

    or-long/2addr v0, p1

    :cond_1
    return-wide v0
.end method

.method private appendLockNoteMenu(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;I)J
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v0

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getImportLockedNotesCount()I

    move-result p1

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SHARE:J

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_UNLOCK:J

    or-long v1, p1, v0

    :cond_1
    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_LOCK:J

    or-long/2addr p1, v1

    goto :goto_0

    :cond_2
    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_UNLOCK:J

    or-long/2addr p1, v1

    :goto_0
    return-wide p1
.end method

.method private appendMaxNoteMenu(I)J
    .locals 4

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SHARE:J

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_LOCK:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_UNLOCK:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_CONVERT:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_DUPLICATE:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_REMOVE_FROM_FAVORITES:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_ADD_FAVORITES:J

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private appendOldNoteMenu(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object p2

    sget-wide v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_MOVE:J

    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_DUPLICATE:J

    or-long/2addr v1, v3

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result p1

    if-lez p1, :cond_1

    :cond_0
    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_CONVERT:J

    or-long v0, v1, v3

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SHARE:J

    or-long v1, v0, v2

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->isConverting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->DISABLE_ACTION_DELETE:J

    goto :goto_0

    :cond_3
    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_CONVERT:J

    const-wide/16 v2, 0x0

    or-long v1, v0, v2

    add-int/2addr p3, p2

    const/16 p1, 0x3e8

    if-le p3, p1, :cond_4

    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_MOVE:J

    :goto_0
    or-long/2addr v1, p1

    :cond_4
    return-wide v1
.end method

.method private appendSaveAsFile(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getImportLockedNotesCount()I

    move-result v0

    const-wide/16 v1, 0x0

    if-eq p3, v0, :cond_1

    const/16 v0, 0x64

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-wide v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->ADD_ACTION_SAVE_AS_FILE:J

    :cond_1
    :goto_0
    return-wide v1
.end method

.method private appendSecureFolderMove(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz1/d;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getImportLockedNotesCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result p1

    if-gtz p1, :cond_1

    if-gtz v0, :cond_1

    if-gtz p2, :cond_1

    if-lez p3, :cond_1

    const/16 p1, 0x64

    if-le p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SECURE_FOLDER_MOVE:J

    :goto_1
    return-wide p1
.end method

.method private appendStartCoedit(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J
    .locals 2

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-gt p3, v0, :cond_1

    if-gtz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ln/a;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    sget-wide p1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_START_COEDIT_WITH_STANDALONE:J

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_START_COEDIT:J

    or-long/2addr p1, v0

    :goto_1
    return-wide p1
.end method

.method private appendUnsupportedLock()J
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_LOCK:J

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_UNLOCK:J

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    return-object p0
.end method

.method private checkCanDelete()Z
    .locals 8

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v0

    invoke-virtual {v0}, Lv/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getCoeditNoteCreatorId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getStandAlone(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->isGroupLeaderByMemberId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_5
    return v4
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-object p0
.end method

.method private disableItem(Landroid/view/Menu;I)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method private isFakeNoteChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCoeditNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onOptionsItemSelectedCoeditSALogging(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->getModeIndex()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    const-string v1, "680"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result p1

    const-string v0, "7534"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_to_device:I

    if-ne p1, v0, :cond_1

    const-string p1, "7530"

    :goto_1
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    if-ne p1, v0, :cond_2

    const-string p1, "7531"

    goto :goto_1

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, v0, :cond_7

    const-string p1, "7532"

    goto :goto_1

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    const-string v1, "681"

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result p1

    const-string v0, "7538"

    goto :goto_0

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_to_device:I

    if-ne p1, v0, :cond_5

    const-string p1, "7535"

    goto :goto_1

    :cond_5
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    if-ne p1, v0, :cond_6

    const-string p1, "7536"

    goto :goto_1

    :cond_6
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, v0, :cond_7

    const-string p1, "7537"

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method private onOptionsItemSelectedSALogging(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->getModeIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mUnlock:Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->addSAlogOnOptionsItemSelected(IIZILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLongPressFlag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    const-string v1, "9901"

    if-ne p1, v0, :cond_1

    const-string p1, "2"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, v0, :cond_2

    const-string p1, "3"

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    if-ne p1, v0, :cond_3

    const-string p1, "4"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private startCoedit(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkCoeditNetworkConnection(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "EditModeView"

    const-string v0, "startCoedit# fail - network is not connected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;Z)V

    const/16 v1, 0x66

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "key_anchor_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->launchActivity(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "key_opened_by_list"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v2, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->launchPopOverActivity(Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V

    return-void
.end method

.method private updateDeleteMenu(Landroid/view/Menu;IZZ)V
    .locals 2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    return-void

    :cond_0
    sget p4, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {p1, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p4, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result p4

    if-ne p4, p2, :cond_1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete_all:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete:I

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    if-nez p3, :cond_2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method


# virtual methods
.method public checkIsNotCoeditSupportedPageMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getPageMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentOptionsMenuStatusEdit()J
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedFoldersCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendDeleteAll(II)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    or-long/2addr v3, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendSecureFolderMove(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J

    move-result-wide v5

    or-long/2addr v3, v5

    add-int v5, v0, v1

    if-nez v5, :cond_0

    sget-wide v0, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_REMOVE_FROM_FAVORITES:J

    or-long/2addr v0, v3

    sget-wide v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_ADD_FAVORITES:J

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendFolderMenu(II)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendMaxNoteMenu(I)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendLockNoteMenu(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;I)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendFavorite(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;I)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendUnsupportedLock()J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendOldNoteMenu(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendSaveAsFile(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendConvert(J)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendDuplicate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;)J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->appendStartCoedit(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;II)J

    move-result-wide v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public getMenuStatus()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    return-wide v0
.end method

.method public isUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mUnlock:Z

    return v0
.end method

.method public onCustomKeyEventEdit(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x1d

    const/4 v1, 0x0

    const/16 v2, 0x1000

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->callCustomKeyEventBase(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->getModeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditMode(I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->getModeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteDialog()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteCoeditNotesDialog()V

    :goto_1
    return v3

    :cond_6
    :goto_2
    return v1

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onSelectAll(Z)V

    return v3

    :cond_9
    :goto_3
    return v1
.end method

.method public onDataChangedEdit(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->releaseEditMode()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->recalculateCheckedData()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onSelectAll(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedNoteCount(ZIZ)V

    :goto_0
    return-void
.end method

.method public onLayout()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mOnClickSelectAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->startActionMode(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarSubTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->modeChangeAnimation(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onSelectAll(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedNoteCount(ZI)V

    :goto_0
    return-void
.end method

.method public onModeEndEdit()V
    .locals 2

    const-string v0, "EditModeView"

    const-string v1, "onModeEndEdit"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->finishActionMode()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->clearCheckedData()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->modeChangeAnimation(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLastOpenedSDocXUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onOptionsItemSelectedCoeditEdit(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelectedCoeditEdit# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EditModeView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onOptionsItemSelectedCoeditSALogging(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteCoeditNotesDialog()V

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_to_device:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDevice()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V

    :goto_0
    return v0

    :cond_4
    return v3
.end method

.method public onOptionsItemSelectedEdit(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelectedEdit# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EditModeView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const-string v4, "LockTask"

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->checkRunningTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "onOptionsItemSelected# return - lock task is running"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onOptionsItemSelectedSALogging(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLongPressFlag()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLongPressFlag(Z)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteDialog()V

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLongPressFlag()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLongPressFlag(Z)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getOldNotesCount()I

    move-result v1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->shareOldNotes()V

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V

    goto/16 :goto_0

    :cond_7
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_rename:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showFolderRenameDialog()V

    goto/16 :goto_0

    :cond_8
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLongPressFlag()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLongPressFlag(Z)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showFolderPickerDialog()V

    goto/16 :goto_0

    :cond_a
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    if-ne p1, v1, :cond_c

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mUnlock:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLockNotes()V

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setUnlockNotes()V

    goto/16 :goto_0

    :cond_c
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_secure_folder_move:I

    if-ne p1, v1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getNonCorruptedNotesUuid()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_failed_to_load_image:I

    invoke-static {p1, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_0

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->moveToSecureFolder(I)V

    goto :goto_0

    :cond_e
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_remove_from_favorites:I

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->updateFavorite(Z)V

    goto :goto_0

    :cond_f
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_to_favorites:I

    if-ne p1, v1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->updateFavorite(Z)V

    goto :goto_0

    :cond_10
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_convert:I

    if-ne p1, v1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showConvertNotesDialog()V

    goto :goto_0

    :cond_11
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_change_color:I

    if-ne p1, v1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedFolderUUID()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showChangeColorDialog(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_12
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_duplicate:I

    if-ne p1, v1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->duplicateToDevice()V

    goto :goto_0

    :cond_13
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_start_coedit_with_standalone:I

    if-ne p1, v1, :cond_14

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->startCoedit(Z)V

    goto :goto_0

    :cond_14
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_start_coedit_with_space:I

    if-ne p1, v1, :cond_15

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->startCoedit(Z)V

    :goto_0
    return v0

    :cond_15
    return v3
.end method

.method public onPrepareOptionsMenuCoeditEdit(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->isFakeNoteChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    if-eqz v2, :cond_1

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$menu;->notelist_coedit_edit_menu_fake_note:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$menu;->notelist_coedit_edit_menu:I

    :goto_0
    new-instance v5, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)V

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationMenu(ILcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->checkBottomProgressCircle()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getBottomNavigationMenu()Landroid/view/Menu;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->checkCanDelete()Z

    move-result v5

    if-eqz p1, :cond_5

    if-ne v0, v4, :cond_5

    if-nez v5, :cond_5

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_leave_shared_note:I

    invoke-interface {v3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {v3, p1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v3, v0, v5, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->updateDeleteMenu(Landroid/view/Menu;IZZ)V

    :goto_1
    if-eqz v2, :cond_6

    return-void

    :cond_6
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_switch_to_notebook:I

    invoke-interface {v3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    const/16 p1, 0x64

    if-le v0, p1, :cond_8

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_to_device:I

    invoke-interface {v3, p1}, Landroid/view/Menu;->removeItem(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onPrepareOptionsMenuEdit()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->getCurrentOptionsMenuStatusEdit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedFoldersCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mCurCheckedNotesFlag:Z

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$menu;->noteslist_edit_bottom:I

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;)V

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationMenu(ILcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getBottomNavigationMenu()Landroid/view/Menu;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v7, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CHANGE_TO_DELETE_ALL:J

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete_all:I

    goto :goto_0

    :cond_3
    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete:I

    :goto_0
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_LOCK:J

    and-long/2addr v9, v5

    cmp-long v9, v9, v7

    if-lez v9, :cond_4

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_UNLOCK:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    goto :goto_2

    :cond_4
    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v6

    if-eq v1, v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v3

    :goto_1
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->setLockIcon(Landroid/view/MenuItem;Z)V

    :goto_2
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_MOVE:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_6
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SHARE:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_7
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_CONVERT:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_8

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_convert:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_8
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->DISABLE_ACTION_CONVERT:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_9

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_convert:I

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->disableItem(Landroid/view/Menu;I)V

    :cond_9
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->DISABLE_ACTION_DELETE:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->disableItem(Landroid/view/Menu;I)V

    :cond_a
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->ADD_ACTION_RENAME:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-gtz v5, :cond_b

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_rename:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_b
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->ADD_ACTION_CHANGE_COLOR:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-gtz v5, :cond_c

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_change_color:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_c
    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v9, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->ADD_ACTION_SAVE_AS_FILE:J

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-gtz v5, :cond_d

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_as_file:I

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_d
    if-nez v0, :cond_f

    const/16 v0, 0x64

    if-le v1, v0, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mCurCheckedNotesFlag:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_warning_some_features_are_not_available_when_more_than_100_item_selected:I

    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_e
    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mCurCheckedNotesFlag:Z

    goto :goto_3

    :cond_f
    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mCurCheckedNotesFlag:Z

    :goto_3
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_SECURE_FOLDER_MOVE:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v7

    if-lez v0, :cond_10

    :goto_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_secure_folder_move:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz1/d;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_secure_folder_move:I

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_5
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_REMOVE_FROM_FAVORITES:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v7

    if-lez v0, :cond_12

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_remove_from_favorites:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_12
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_ADD_FAVORITES:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v7

    if-lez v0, :cond_13

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_to_favorites:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_13
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_DUPLICATE:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v7

    if-lez v0, :cond_14

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_duplicate:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->checkIsNotCoeditSupportedPageMode()Z

    move-result v0

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v5, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_START_COEDIT_WITH_STANDALONE:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-gtz v1, :cond_15

    if-eqz v0, :cond_16

    :cond_15
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_start_coedit_with_standalone:I

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_16
    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mMenuStatus:J

    sget-wide v5, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->REMOVE_ACTION_START_COEDIT:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-gtz v1, :cond_17

    if-eqz v0, :cond_18

    :cond_17
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_start_coedit_with_space:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->checkBottomProgressCircle()V

    :goto_6
    return-void
.end method

.method public onSelectAll(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectAll# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditModeView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLongPressFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "9901"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->selectAll(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->getCurrentOptionsMenuStatus()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;->getLastOptionsMenuStatus()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedNoteCount(ZIZ)V

    return-void
.end method

.method public onWindowFocusChangedEdit(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mModeParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->filteredInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public removeItem(Landroid/view/Menu;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public setLockIcon(Landroid/view/MenuItem;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_lock:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->action_more_lock:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_unlock:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->action_unlock:I

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mUnlock:Z

    return-void
.end method

.method public updateCheckBoxStateEdit(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x10

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isSubHeaderChecked(Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isUuidInCheckedData(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setCheckBoxState(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Z)V

    return-void
.end method
