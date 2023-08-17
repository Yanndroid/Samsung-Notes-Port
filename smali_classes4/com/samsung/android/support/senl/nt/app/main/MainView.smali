.class public abstract Lcom/samsung/android/support/senl/nt/app/main/MainView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mBlockViewFinishRunnable:Ljava/lang/Runnable;

.field public mHasSavedInstanceState:Z

.field private mLaunchManager:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

.field public mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

.field public mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MainView"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mHasSavedInstanceState:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/MainView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/MainView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mBlockViewFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isMoveToBackCalledWhenBackPressed()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchSettingsActivity()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x4000

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.app.notes.sync.ui.MS_SIGNOUT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.app.notes.sync.ui.MS_SETTINGS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setCoeditInfo(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNoteSelected - groupId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spaceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainView"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_space_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_group_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_owner_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "writer_name"

    const-string v1, "test"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getMdeOwnerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v0

    invoke-virtual {v0}, Lv/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv/f;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    const-string v0, "account_type"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lock_account_guid"

    const-string v0, "FROM_SHARED_NOTES_GUID"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract changedGcsEnableStatus()V
.end method

.method public abstract closeDrawer(ZI)Z
.end method

.method public createView(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ZILandroid/os/Bundle;)V
    .locals 0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mHasSavedInstanceState:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager$IMainView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mLaunchManager:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onViewCreated(ILandroid/os/Bundle;)V

    return-void
.end method

.method public isRunningAnimator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isTabletLayoutMode()Z
.end method

.method public launchEditorByIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "execution_composer_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v2

    const/16 v3, 0x6c

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/MainView;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;ILjava/lang/Runnable;)V

    return-void
.end method

.method public needViewChange()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->isTabletLayoutMode()Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onActivityResultFromLockManager(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onActivityResultAfterVerify(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "MainView"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveCurrentFolderExpandState()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->isMoveToBackCalledWhenBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->startSALogging()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveCurrentFolderExpandState()V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->releaseNoteListActivity()V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->S()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->startSALogging()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mLaunchManager:Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/AppLaunchManager;->release()V

    :cond_1
    return-void
.end method

.method public onExecuteItemSelected(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExecuteItemSelected viewType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExecuteItemSelected# unexpected ViewType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->launchSettingsActivity()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/main/folder/FolderListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0xc000

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public abstract onFolderDeleteVerifySuccess()V
.end method

.method public onFolderSelected(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "MainView"

    const-string v1, "onFolderSelected# folderUuid is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onFolderSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public abstract onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V
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
.end method

.method public onImportPdf(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImportPdf# folderUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tool_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/CollectionHelper;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "pdf_open_uri"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "Settings"

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    const-string p3, "settings_preferred_note_style"

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "page_type"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :cond_0
    const-string p2, "category_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    const/4 p2, 0x7

    invoke-virtual {p1, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public abstract onModeChanged(I)V
.end method

.method public onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewCoeditNote# groupId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inviteUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mde_space_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mde_group_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object p1

    invoke-virtual {p1}, Lv/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mde_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "writer_name"

    const-string p2, "test"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "account_type"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "tool_type"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string p4, "settings_preferred_note_style"

    invoke-virtual {p1, p4, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "page_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    const-string p2, "category_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mde_coedit_invite_url"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    const/4 p2, 0x7

    invoke-virtual {p1, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewNote - folderUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tool_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "Settings"

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    const-string v1, "settings_preferred_note_style"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "page_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "category_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    const/4 p2, 0x7

    invoke-virtual {p1, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->getIntentForNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getLockType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setCoeditInfo(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Landroid/content/Intent;)V

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0x68

    const/16 v6, 0x6e

    const/16 v7, 0x385

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v1, v3, v9

    invoke-virtual {p1, v7, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    move v4, v7

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "component_name"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v1, v3, v9

    invoke-virtual {p1, v5, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyLockedNoteWithMultiAccount(ILandroid/content/Intent;[Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v1, v3, v9

    invoke-virtual {p1, v6, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getRequestCode()I

    move-result p1

    if-ne p1, v8, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, v0, v8}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v8

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, v0, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNoteSelected# requestCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lockType : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainView"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotesDataMove(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onNotesDataMove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract onViewCreated(ILandroid/os/Bundle;)V
.end method

.method public abstract onViewLayoutModeEnd()V
.end method

.method public removeUnsupportedDrawerFragment()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mHasSavedInstanceState:Z

    const-string v1, "MainView"

    if-nez v0, :cond_0

    const-string v0, "removeUnsupportedDrawerFragment# do not need if view is not recreated"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->isTabletLayoutMode()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TabeltDrawerFragment"

    goto :goto_0

    :cond_1
    const-string v2, "PhoneDrawerFragment"

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "removeUnsupportedDrawerFragment# Can not find Fragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public setBlockTouchEvent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->main_view_block:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/MainView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/MainView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public abstract setDrawerFragment(Landroid/os/Bundle;)V
.end method

.method public abstract setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDrawerTitleBold(Ljava/lang/String;)V
.end method

.method public setNotesFragment(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v2, "mode"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "caller"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->notes_fragment_container:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method public setToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 3

    const-string v0, "MainView"

    const-string v1, "setToolbar()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-object v0
.end method

.method public swapLayoutMode(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    const-string v1, "MainView"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "swapLayoutMode# onConfigurationChanged"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mNotesFragment:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onViewChangeSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onViewLayoutModeEnd()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "swapLayoutMode# mNotesFragment not found"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDocumentCountMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->updateDocumentCountMap(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public abstract updateDrawerDisplayData()V
.end method
