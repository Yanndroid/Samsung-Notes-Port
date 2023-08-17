.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;


# static fields
.field private static final ACTIVITY_STATE_PAUSED:I = 0x1

.field private static final ACTIVITY_STATE_RESUMED:I = 0x2

.field private static final ACTIVITY_STATE_STOPPED:I = 0x0

.field private static final FAST_SCROLLER_ENABLED:I = 0x46

.field private static final TAG:Ljava/lang/String; = "NotesView"


# instance fields
.field private final mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

.field private mActivityState:I

.field private final mClearScrollToPositionRunnable:Ljava/lang/Runnable;

.field private final mFabMenuListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

.field private final mFabMenuView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

.field private mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mIsScrollToTop:Z

.field private mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

.field private final mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;

.field private final mNotesListPostLaunch:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

.field private final mNotesListPostResume:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;

.field private final mNotesListPostStart:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;

.field private final mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

.field private mScrollDelay:I

.field private mScrollToPositionRunnable:Ljava/lang/Runnable;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mSwipeRefreshListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$Contract;

.field private final mSwipeRefreshView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

.field private mUpdateListStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Landroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mIsScrollToTop:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollDelay:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActivityState:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mUpdateListStateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mClearScrollToPositionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFabMenuListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSwipeRefreshListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$Contract;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->noteslist_recyclerview:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostStartToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;-><init>(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;)V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostLaunch:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostResumeToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;-><init>(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;)V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostResume:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostStartToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;-><init>(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;)V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostStart:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->createActionMenuController()Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;-><init>()V

    invoke-virtual {v5, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->setAbsFragment(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->setNotesView(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->setNotesRecyclerView(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DialogCreator;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DialogCreator;-><init>()V

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->setDialogCreator(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->initPresenter(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;-><init>()V

    invoke-virtual {v6, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->setActionMenuController(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->setPresenter(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->setNotesRecyclerView(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->setNotesView(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->setFragmentContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLayoutManager(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-direct {v2, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView$Contract;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFabMenuView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-direct {p2, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$Contract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSwipeRefreshView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setImproveEntryLogic()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->addPostLaunchLogic()V

    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onNewInstanceState()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setChangeListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    return-object p0
.end method

.method private addPostLaunchLogic()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mClearScrollToPositionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFabMenuView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mIsScrollToTop:Z

    return p0
.end method

.method private hasActivityAction(Landroid/os/Bundle;)Z
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.app.notes.ACTION_VIEW_ALL_NOTES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "folderUuid"

    const/4 v5, 0x1

    const-string v6, "mode"

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    move v1, v5

    goto :goto_3

    :cond_1
    const-string v3, "com.samsung.android.app.notes.ACTION_VIEW_TRASH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "android.intent.action.VIEW"

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->openTrashByOtherApps()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v3, "action_view_co_edit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->setCoeditOpenedByNotification()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "spaceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xe

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "groupId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_group_id"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_space_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v1, 0xc

    goto :goto_1

    :cond_4
    const-string v3, "com.samsung.android.app.notes.sync.ui.MDE_START_NOTES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->goToGcsMode(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasActivityAction# modeIndex : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotesView"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSwipeRefreshView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mIsScrollToTop:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollDelay:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setCollapseToolbarByScroll(I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFastScroller(I)V

    return-void
.end method

.method private onCoeditSpaceSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onFolderSelected(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFolderPathLayoutVisibility(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setNoteFabVisibleWithAnimation()V

    return-void
.end method

.method private onNewInstanceState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setSyncModeAndFilter(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->saveArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setMode(I)Z

    return-void
.end method

.method private releaseDeletedFolder()V
    .locals 3

    const-string v0, "NotesView"

    const-string v1, "releaseDeletedFolder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onFolderSelected(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFolderPathLayoutVisibility(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setNoteFabVisibleWithAnimation()V

    return-void
.end method

.method private releaseEmptyFolderByDrawer(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "NotesView"

    const-string v1, "releaseEmptyFolderByDrawer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->nonNullDocumentCountMap()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const-string v1, "old_converted_notes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getDocumentCount(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onFolderSelected(Ljava/lang/String;)V

    return v4

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getDocumentCount(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getDocumentCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p1, v1

    if-gtz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onFolderSelected(Ljava/lang/String;)V

    return v4

    :cond_4
    return v2
.end method

.method private setChangeListener()V
    .locals 2

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setBadgeChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private setCollapseToolbarByScroll(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLinearLayout(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->isLastItemNotDisplaying(I)Z

    move-result p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToPosition setExpanded : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotesView"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->appbar_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_2
    return-void
.end method

.method private setFastScroller(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x46

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isStaggeredGridLayout(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setImproveEntryLogic()V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;ILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private setSyncModeAndFilter(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->hasActivityAction(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getLastSelectedFolder()Ljava/lang/String;

    move-result-object v3

    const-string v4, "folderUuid"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSyncModeAndFilter# modeIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", folderUuid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NotesView"

    invoke-static {v7, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isExecuteType(I)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSpaceMode(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    goto :goto_0

    :cond_5
    const/16 v1, 0xe

    goto :goto_0

    :cond_6
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xd

    goto :goto_0

    :cond_7
    const/16 v1, 0xc

    goto :goto_0

    :cond_8
    const-string v5, "tag:///"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x12

    goto :goto_0

    :cond_9
    const/16 v1, 0x11

    goto :goto_0

    :cond_a
    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-ne v2, v1, :cond_c

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    :cond_c
    move v1, v2

    goto :goto_0

    :cond_d
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x2

    :cond_e
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSyncModeAndFilter# updated modeIndex : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_1
    return-void
.end method


# virtual methods
.method public changeNoteView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->changeNoteView()V

    return-void
.end method

.method public createActionMenuController()Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/TabletActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/TabletActionMenuController;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;)V

    return-object v0
.end method

.method public dragAndDropFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->dragAndDropFinished(Ljava/lang/String;)V

    return-void
.end method

.method public filteredInvalidateOptionsMenu()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->isProgressOn()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->getCurrentOptionsMenuStatus()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->getLastOptionsMenuStatus()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getGcsImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/GcsImpl;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getModeIndex()I

    move-result v0

    const/16 v1, 0x17

    if-eq v1, v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;-><init>()V

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/GcsImpl;

    return-object v0
.end method

.method public getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    return-object v0
.end method

.method public getModeIndex()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getModeIndex()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "NotesView"

    const-string v1, "getModeIndex# Mode is not define"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getSearchImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;-><init>()V

    return-object v0
.end method

.method public getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getModeIndex()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;-><init>()V

    return-object v0
.end method

.method public goToGcsMode(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "NotesView"

    const-string v1, "goToGcsMode#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isMDEFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "goToGcsMode# isMDEFeatureEnabled false"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    const-string v1, "folderUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "spaceId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "mode"

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "groupId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_group_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_space_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public importDemoSamples()V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$10;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;[Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isUnpackDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/DemoUtils;->loadUnpackFile(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isShopDemoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/DemoUtils;->loadLDUFile(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initFolderForBixby()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setMode(I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    const-string v3, "folderUuid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onFolderSelected(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFolderPathLayoutVisibility(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setNoteFabVisibleWithAnimation()V

    return-void
.end method

.method public onActivityResultAfterVerify(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onActivityResultAfterVerify(IILandroid/content/Intent;)V

    return-void
.end method

.method public onActivityResultForSaveExport(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->getPathFromResult(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResultForSaveExport# dir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getSaveExportNoteList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showSaveExportRenameDialog(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->executeSaveAsTask(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onActivityResultFromComposer(Landroid/content/Intent;Z)V
    .locals 2

    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onFolderSelected(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditFilterType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    const-string v1, "mde_coedit_stand_alone"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onFolderSelected(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "mde_group_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "mde_space_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onCoeditSpaceSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onFolderSelected(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBackKeyDown()Z

    move-result v0

    return v0
.end method

.method public onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataChanged# count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotesView"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChanged(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFastScroller(I)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActivityState:I

    const-wide/16 v0, 0x12c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostLaunch:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->reserveExecution()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostLaunch:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->executeOnPreDraw(Landroid/view/View;J)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->filteredInvalidateOptionsMenu()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollDelay:I

    int-to-long v2, v2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mUpdateListStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mUpdateListStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDestroy()V

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/DrawerBadgeIcon;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->removeBadgeChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mUpdateListStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mUpdateListStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFolderSelected# folderUuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentFolderUuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modeIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotesView"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setMode(I)Z

    goto/16 :goto_1

    :cond_2
    const-string v2, "tag:///"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x11

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "onFolderSelected#isSocialErrorRaised# folderUuid : "

    if-eqz v2, :cond_5

    invoke-static {}, Ln/a;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v0, 0xc

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Ln/a;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const/16 v0, 0x17

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v0, 0x16

    goto :goto_0

    :cond_8
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickMode(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setMode(I)Z

    goto :goto_1

    :cond_9
    if-ne v1, v4, :cond_a

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCreateNewNoteEnabledFolder(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCreateNewNoteEnabledFolder(Ljava/lang/String;)Z

    move-result v0

    if-eq v2, v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isNeedFooter(ILjava/lang/String;)Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->updateRecyclerViewPaddingBottom(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onFolderSelected(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFolderPathLayoutVisibility(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setNoteFabVisibleWithAnimation()V

    :cond_b
    :goto_2
    return-void
.end method

.method public onImportPdf(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onImportPdf(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onNewNote(Ljava/lang/String;I)V

    return-void
.end method

.method public onNoteSelectedWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onNoteSelectedWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActivityState:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onPaused()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostResume:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;->inactivate()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "NotesView"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setSyncModeAndFilter(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setMode(I)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onDataChanged(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onRestoreProgressCircle()Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActivityState:I

    const-string v0, "NotesView Resume(MainList)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostResume:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostResume;->activate(Landroid/view/View;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFabMenuView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->onListScrollStateChanged()V

    return-void
.end method

.method public onScrolled(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFabMenuView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->onListScrolled(I)V

    return-void
.end method

.method public onShowBottomProgressCircle(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setBottomProgressCircleId(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->checkBottomProgressCircle()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->show(Lcom/google/android/material/navigation/NavigationBarItemView;)Z

    :cond_0
    return-void
.end method

.method public onShowProgressCircle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->onShowProgressCircle()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActivityState:I

    const-string v0, "NotesView onStart(MainList)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostLaunch:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->activate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostStart:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;->activate(Landroid/view/View;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActivityState:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostLaunch:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->inactivate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesListPostStart:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;->inactivate()V

    return-void
.end method

.method public onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onViewChangeRestoreInstanceState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewChangeSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onViewChangeSaveInstanceState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->onViewChangeSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public releaseEmptyFolder()V
    .locals 3

    const-string v0, "NotesView"

    const-string v1, "releaseEmptyFolder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onFolderSelected(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setNoteFabVisibleWithAnimation()V

    return-void
.end method

.method public setCheckedDimNotes()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setCheckedDimNotes(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public setFolderPathLayoutVisibility(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isNonExistFolderPathLayout(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "NotesView"

    const-string v1, "setFolderPathLayoutVisibility# Visible"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->folderpath_layout_container:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_folderpath_layout_container:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->setFolderHomeButtonVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$11;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->setIFolderPathLayoutListener(Lcom/samsung/android/support/senl/nt/app/common/widget/IFolderPathLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->updateCurrentPath(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    return-void
.end method

.method public setIsScrollToTop(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mIsScrollToTop:Z

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mScrollDelay:I

    return-void
.end method

.method public setMode(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mNotesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode# modeIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prevMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setModeIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setPrevModeIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onModeEnd()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->getMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->updateDataObserverToCurrentMode(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/ModeFactory;->getMode(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->initDataObserver()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->onModeChanged(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public setNoteFabVisibleWithAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFabMenuView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_note_fab:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->setNoteFabVisibility(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    return-void
.end method

.method public setSwipeRefreshLayoutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mSwipeRefreshView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->setSwipeRefreshLayoutEnabled(Z)V

    return-void
.end method

.method public updateNoteViewByDrawerObserver()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoteViewByDrawerObserver# folderUuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getModeIndex()I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSubFolderExist(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->isIgnoreFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "updateNoteViewByDrawerObserver# isScrolling : setPostNotifyDataSetChanged"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setPostNotifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onDataChangedByFolder(Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setFolderPathLayoutVisibility(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->releaseDeletedFolder()V

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCreateNewNoteEnabledFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->releaseEmptyFolderByDrawer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mMode:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->updateTitle()V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateSelectedNoteCount()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getSelectableDataCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedNoteCount(ZIZ)V

    return-void
.end method
