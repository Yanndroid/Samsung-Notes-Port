.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$CoeditModeActionResult;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$OldSharedNotebooksSmartTipPopup;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditMode"


# instance fields
.field private mCoeditNoNoteLayout:Landroid/view/View;

.field private final mCoeditSessionConnected:Ljava/lang/Runnable;

.field private final mCreateSpaceDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

.field private final mEventListener:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

.field private final mEventListenerStandaloneReceive:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

.field private final mInvitationAcceptResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

.field private final mInvitationResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;

.field private mIsCoeditNoNoteVisibility:I

.field private mIsNeedToOnLayoutLogging:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private final mRequestOldSharedNotebooksResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

.field public mSelectedGroupId:Ljava/lang/String;

.field public mSelectedSpaceId:Ljava/lang/String;

.field private mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

.field private final mSpaceMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

.field private final mSpaceRemoveResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

.field private final mWorkerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mMainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "CoeditMode"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mInvitationResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$CoeditModeActionResult;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$CoeditModeActionResult;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mRequestOldSharedNotebooksResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditSessionConnected:Ljava/lang/Runnable;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSpaceMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSpaceRemoveResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mInvitationAcceptResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCreateSpaceDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$16;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$16;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mEventListener:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$17;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$17;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mEventListenerStandaloneReceive:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    return-void
.end method

.method private clearCoeditNoNoteLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNoNoteLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_nonote_layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNoNoteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    return-void
.end method

.method private clearInvitationNotifications()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->cancelAllInvitationNotification()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/CoeditInvitationMenuBadgeUpdater;->clearInvitationListHasBadgePref()V

    return-void
.end method

.method private createNewSpace()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_create_notebook:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCreateSpaceDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "add_notebook_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private disconnectLiveSharing()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private executeSyncForSessionConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mInvitationAcceptResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mInvitationResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;

    return-object p0
.end method

.method private goToInvitedNote(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void

    :cond_0
    new-instance v8, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mRequestOldSharedNotebooksResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

    return-object p0
.end method

.method private handleLandingInvitationLinkAction()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.coedit.action.COEDIT_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CoeditMode"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLandingInvitationLinkAction# not matched action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "handleLandingInvitationLinkAction#"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->isFirstTimeToCoeditJoin(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->showFirstJoinDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showProgressCircle()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "social"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->landingInvitationLink(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    return-object p0
.end method

.method private initNoNoteLayout()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->clearCoeditNoNoteLayout()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initNoNoteLayout# orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->coedit_nonote_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_start_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$14;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->updateNoNoteLayout()V

    return-void
.end method

.method private initOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mOrientation:I

    return-void
.end method

.method private isNeedToHideOldSharedNotebooksMenu()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isMDEFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/GcsInvitationMenuBadgeUpdater;->getInvitationListHasBadgePref()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSpaceCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToHideOldSharedNotebooksMenu# isMDENotSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasNoInvitation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", oldSharedSpaceCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CoeditMode"

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->executeSyncForSessionConnected()V

    return-void
.end method

.method private landingInvitationLink(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "landingInvitationLink# groupId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isStandalone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForceDownload : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    move-object v5, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p1, p2}, Lu/f;->n(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "landingInvitationLink#onResult exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->goToInvitedNote(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->goToInvitedNote(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->landingInvitationLink(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->onInvitedNoteSelected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCoeditModeEnd()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->unregisterEventListeners()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->clearCoeditNoNoteLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method private onInvitedNoteSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvitedNoteSelected# uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onInvitedNoteSelected# return - mainListEntry is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void

    :cond_0
    const-string v1, "meet"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCoEditNoteUuid(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p2

    invoke-virtual {p2}, Lf/a;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setModeIndex(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setToolType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method private onOptionsItemSelectedSALogging(I)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_old_shared_notebook:I

    const-string v1, "680"

    if-ne p1, v0, :cond_0

    const-string p1, "7515"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_create_notebook:I

    if-ne p1, v0, :cond_1

    const-string p1, "7508"

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    if-ne p1, v0, :cond_2

    const-string p1, "7513"

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_search:I

    if-ne p1, v0, :cond_3

    const-string p1, "7512"

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_viewby:I

    if-ne p1, v0, :cond_4

    const-string p1, "7514"

    goto :goto_0

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_mark_all_as_read:I

    if-ne p1, v0, :cond_5

    const-string p1, "7518"

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private setGcsMode()V
    .locals 3

    const-string v0, "CoeditMode"

    const-string v1, "setGcsMode"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onFolderSelected(Ljava/lang/String;Z)V

    return-void
.end method

.method private showFirstJoinDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFirstJoinDialog# isStandalone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_shared_note:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p3, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_invitations_join_dialog_message_for_standalone:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_invitations_join_dialog_message_for_space:I

    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;-><init>(Ljava/lang/String;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$15;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$15;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment;->setResultListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditFirstJoinDialogFragment$DialogResultListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "CoeditFirstJoinDialogFragment"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSmartTipForOldSharedNotebooks()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sesl_action_bar_overflow_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CoeditMode"

    const-string v1, "showSmartTipIfNeeded# target view is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterEventListeners()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mEventListener:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mEventListenerStandaloneReceive:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;->unregisterAll()V

    return-void
.end method

.method private updateNoNoteLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_nonote_item_image_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->no_note:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->no_note_sub:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_start_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method


# virtual methods
.method public deleteStandaloneSpace(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS8] deleteStandaloneSpace# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    move-object v8, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v9

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpaceDelete(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;Ljava/lang/String;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getModeIndex()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CoeditMode"

    return-object v0
.end method

.method public handleMeetJoinAction()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.action.MDE_START_NOTES_BY_MEET_URL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CoeditMode"

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMeetJoinAction# not matched action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void

    :cond_2
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMeetJoinAction# groupId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spaceId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->disconnectLiveSharing()V

    return-void

    :cond_3
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showProgressCircle()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "meet"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->landingInvitationLink(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public launchSocialPickerForNewStandaloneNote(I)V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group://Standalone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_note_auto_title:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lu/e;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$12;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setActivityFinishedListener(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->launchSocialPicker(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$13;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setResultCallback(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    return-void
.end method

.method public onBackKeyDown()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getBackFolderHistory()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackKeyDown# nextFolderUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoeditMode"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->onFolderSelected(Ljava/lang/String;)V

    return v1
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCoeditNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->decorateFakeNote(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->isSnapShotUpdateRequired()Z

    move-result v0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setCoeditExtraVisible(ZZ)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMemberCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setCoeditSpaceExtraVisible(Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->registerExternalSnap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onCoeditSessionConnected()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onCoeditSessionConnected()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditSessionConnected:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditSessionConnected:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->handleMeetJoinAction()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->handleLandingInvitationLinkAction()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mOrientation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setCoeditNoNoteVisibility()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mIsCoeditNoNoteVisibility:I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->updateNoNoteLayout()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSmartTipPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->dismiss()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->showSmartTipForOldSharedNotebooks()V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->notelist_coedit_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->launchSocialPickerForNewStandaloneNote(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChanged(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->setNoNotesLayoutVisibility()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setSubTitle(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->onCoeditModeEnd()V

    return-void
.end method

.method public onGroupInvitationReceived()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mInvitationResult:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestInvitationList(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onInvitationAccepted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->isFirstTimeToCoeditJoin(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->showFirstJoinDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showProgressCircle()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mInvitationAcceptResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    invoke-interface {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestInvitationAccept(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)V

    return-void
.end method

.method public onInvitationDeclined(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestInvitationDecline(Ljava/lang/String;)V

    return-void
.end method

.method public onItemLongPressed(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setEditMode(Z)Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemLongPressed(Ljava/lang/String;)Z

    return v0
.end method

.method public onLayout()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onLayout()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mIsCoeditNoNoteVisibility:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->clearInvitationNotifications()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->initOrientation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_title:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setSubTitle(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mEventListener:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mEventListenerStandaloneReceive:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    return-void
.end method

.method public onModeEnd()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onModeEnd()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->onCoeditModeEnd()V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getSpaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "a"

    goto :goto_0

    :cond_0
    const-string p1, "b"

    :goto_0
    const-string v0, "680"

    const-string v1, "7511"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    const-string v2, "onOptionsItemSelected# onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditMode"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->onOptionsItemSelectedSALogging(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_old_shared_notebook:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setGcsMode()V

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setGcsHasMoreBadge(Z)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_create_notebook:I

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->createNewSpace()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setEditMode(Z)Z

    goto :goto_0

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_search:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    goto :goto_0

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_viewby:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showViewByPopupMenu()V

    goto :goto_0

    :cond_5
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_mark_all_as_read:I

    if-ne p1, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "CoeditPref"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v3, "CoeditPrefKeyReadAllTime"

    invoke-virtual {p1, v3, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateAllCoeditNotesAsRead(J)V

    :cond_6
    :goto_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_viewby:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->isNeedToHideOldSharedNotebooksMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_old_shared_notebook:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_1
    const-string v0, "MemoFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "old_shared_notebooks_smart_tip"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSmartTipIfNeeded# needToShowSmartTip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditMode"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->showSmartTipForOldSharedNotebooks()V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->hasGcsMoreBadge()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_old_shared_notebook:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/SeslMenuItem;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUnreadCoeditNoteCount()I

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_mark_all_as_read:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->KEY_SELECTED_GROUP_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedGroupId:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->KEY_SELECTED_SPACE_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "add_notebook_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCreateSpaceDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->clearInvitationNotifications()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->initOrientation()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->KEY_SELECTED_GROUP_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->KEY_SELECTED_SPACE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "add_notebook_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNameDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSpaceDelete()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedGroupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSpaceRemoveResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpaceDelete(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "delete_notebook_dialog"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->replaceDeleteBtnToProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpaceLeave()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedGroupId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->showCoeditMemberManage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedGroupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSpaceRemoveResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpaceLeave(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "leave_notebook_dialog"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->replaceDeleteBtnToProgress(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpaceLongPressed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpaceLongPressed# spaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSelectedSpaceId:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getSpaceTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result p2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mSpaceMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    invoke-direct {p1, v1, v2, p2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->show()V

    return v0
.end method

.method public onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpaceSelected# spaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    const-string v0, "b"

    :goto_0
    const-string v1, "680"

    const-string v2, "7510"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public requestDownload(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->requestDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestSync(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->getSyncRequiredSpaceIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->requestSync(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public setCoeditNoNoteVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNoNoteLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mIsCoeditNoNoteVisibility:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->initNoNoteLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNoNoteLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mCoeditNoNoteLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->clearCoeditNoNoteLayout()V

    :goto_0
    return-void
.end method

.method public setEditMode(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->setEditMode(Z)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result p1

    return p1
.end method

.method public setNoNoteLayoutVisibility(ILjava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->setNoNoteLayoutVisibility(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mIsCoeditNoNoteVisibility:I

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->setCoeditNoNoteVisibility()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSubTitle(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->getModeIndex()I

    move-result v0

    const-string v1, ""

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarSubTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCoeditNoteCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    sget v5, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_notes:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCoeditSpaceCount()I

    move-result v6

    if-gtz v6, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    sget v7, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_spaces:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v0, v7, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-lez v2, :cond_5

    if-gtz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$string;->string_comma:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSubTitle# "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CoeditMode"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "\u200f"

    goto :goto_3

    :cond_6
    const-string v4, "\u200e"

    :goto_3
    invoke-interface {v1, v0, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$dimen;->co_edit_beta_view_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_beta:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v3, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x21

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const-string v3, "\n"

    invoke-interface {v1, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarSubTitle(Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarCoeditBetaView()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mIsNeedToOnLayoutLogging:Z

    if-eqz v0, :cond_8

    const-string v0, "7610"

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;I)V

    const-string v0, "7611"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;I)V

    :cond_8
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->mIsNeedToOnLayoutLogging:Z

    return-void
.end method

.method public startTitleAndDatePolling(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->startTitleAndDatePolling(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
