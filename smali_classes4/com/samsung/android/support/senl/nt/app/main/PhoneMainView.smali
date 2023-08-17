.class public Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;
.super Lcom/samsung/android/support/senl/nt/app/main/MainView;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

.field private final mDrawerFragmentRunnable:Ljava/lang/Runnable;

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;-><init>()V

    const-string v0, "PhoneMainView"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragmentRunnable:Ljava/lang/Runnable;

    const-string v1, "PhoneMainView# swapLayoutMode"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ILandroid/os/Bundle;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;-><init>()V

    const-string v0, "PhoneMainView"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragmentRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PhoneDrawerFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->createView(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ZILandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method private closeDrawer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->closeDrawer(ZJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public changedGcsEnableStatus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->changedGcsEnableStatus()V

    :cond_0
    return-void
.end method

.method public closeDrawer(ZI)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->closeDrawer(ZJ)Z

    move-result p1

    return p1
.end method

.method public isTabletLayoutMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->closeDrawer()V

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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->updateDrawerDisplayData()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->onFolderDeleteVerifySuccess()V

    :cond_0
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->release()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNewNote(Ljava/lang/String;I)V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->release()V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onViewCreated(ILandroid/os/Bundle;)V
    .locals 5

    const-string v0, "PhoneMainView"

    const-string v1, "onCreate - Start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PhoneMainView onCreate(MainList)"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->main_activity:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragmentRunnable:Ljava/lang/Runnable;

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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setNotesFragment(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->setDrawerFragment(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setBlockTouchEvent()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "onCreate - End"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewLayoutModeEnd()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->setStatusBarAndNavigationBarColor(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onDestroy()V

    return-void
.end method

.method public setDrawerFragment(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "PhoneMainView"

    const-string v1, "setDrawerFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->removeUnsupportedDrawerFragment()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_fragment_bg_color:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->setActivityContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    return-void
.end method

.method public setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDrawerTitleBold(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->setDrawerTitleBold(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDrawerDisplayData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;->mDrawerFragment:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->updateDrawerDisplayData()V

    :cond_0
    return-void
.end method
