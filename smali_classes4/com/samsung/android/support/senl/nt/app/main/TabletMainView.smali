.class public Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;
.super Lcom/samsung/android/support/senl/nt/app/main/MainView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabletMainView"


# instance fields
.field private mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

.field private final mDrawerFragmentRunnable:Ljava/lang/Runnable;

.field private mInterceptTouchLayout:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragmentRunnable:Ljava/lang/Runnable;

    const-string v0, "TabletMainView"

    const-string v1, "TabletMainView# swapLayoutMode"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ILandroid/os/Bundle;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragmentRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TabeltDrawerFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->createView(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ZILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mInterceptTouchLayout:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mInterceptTouchLayout:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;

    return-void
.end method


# virtual methods
.method public changedGcsEnableStatus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->changedGcsEnableStatus()V

    :cond_0
    return-void
.end method

.method public closeDrawer(ZI)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawer()Z

    move-result p1

    return p1
.end method

.method public isRunningAnimator()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->isRunningAnimator()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTabletLayoutMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUnreadMdeNoteCount()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setGcsUnReadCount(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUnreadCoeditNoteCount()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setCoeditUnReadCount(I)V

    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateDrawerDisplayData()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->onFolderDeleteVerifySuccess()V

    return-void
.end method

.method public onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onModeChanged(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->hasLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setNotesModeIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mInterceptTouchLayout:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->setMainViewMode(I)V

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->release()V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNewNote(Ljava/lang/String;I)V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->release()V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onViewCreated(ILandroid/os/Bundle;)V
    .locals 5

    const-string v0, "TabletMainView"

    const-string v1, "onCreate - Start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TabletMainView onCreate(MainList)"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->tablet_main_activity:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragmentRunnable:Ljava/lang/Runnable;

    const/16 v4, 0x66

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mBlockViewFinishRunnable:Ljava/lang/Runnable;

    const/16 v4, 0x67

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;ILjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->setToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setNotesFragment(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->setDrawerFragment(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_fragment_bg_color:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getColor(I)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/app/Activity;IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setBlockTouchEvent()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->tablet_drawer_top_corner:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->tablet_drawer_top_left_corner:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->tablet_drawer_bottom_corner:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->tablet_drawer_bottom_left_corner:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "onCreate - End"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewLayoutModeEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onDestroy()V

    return-void
.end method

.method public setDrawerFragment(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TabletMainView"

    const-string v1, "setDrawerFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->removeUnsupportedDrawerFragment()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setActivityContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public setDrawerTitleBold(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setFolderUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerTitleBold(Ljava/lang/String;)V

    return-void
.end method

.method public setToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->appbar_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-object v0
.end method

.method public updateDrawerDisplayData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateDrawerDisplayData()V

    :cond_0
    return-void
.end method
