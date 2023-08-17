.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$NoteEditable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

.field private final mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

.field private final mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

.field private final mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "AbsAppCompatActivity"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->createToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager;->createToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;->createToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    return-void
.end method


# virtual methods
.method public changedGcsEnableStatus()V
    .locals 0

    return-void
.end method

.method public closeDrawer(ZI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dragAndDropFinished(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPostLaunchToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mPostLaunchToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    return-object v0
.end method

.method public getPostResumeToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mPostResumeToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostResumeManager$Token;

    return-object v0
.end method

.method public getPostStartToken()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mPostStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    return-object v0
.end method

.method public initFolderDataMap()V
    .locals 0

    return-void
.end method

.method public isRunningAnimator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public launchActivity(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
    .locals 1
    .param p2    # Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launchActivity# "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsAppCompatActivity"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    :goto_0
    return-void
.end method

.method public launchPopOverActivity(Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
    .locals 2
    .param p3    # Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isAbleToSetAnchor(Landroid/content/Context;)Z

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchPopOverActivity# isAbleToPopOver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsAppCompatActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p3, 0x20

    :try_start_0
    invoke-static {p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "launchActivity# "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult# REQUEST_LAUNCH_POPOVER resultCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsAppCompatActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;->onActivityResult(ILandroid/content/Intent;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResult:Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;

    :cond_0
    return-void
.end method

.method public onBackPressed(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;->onBackKeyDown()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsAppCompatActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->canNotUseNoteList()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->updating_note_try_again_later:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    return-void
.end method

.method public onExecuteItemSelected(I)V
    .locals 0

    return-void
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 0

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public onImportPdf(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p3, Lcom/samsung/android/support/senl/nt/app/common/listener/OnCustomKeyListener;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OnCustomKeyListener;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AbsAppCompatActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p3, Lcom/samsung/android/support/senl/nt/app/common/listener/OnCustomKeyListener;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OnCustomKeyListener;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AbsAppCompatActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 0

    return-void
.end method

.method public onNotesDataMove(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resultVerifyLockNote(Landroid/content/Intent;)V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public updateDocumentCountMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateNoteViewByDrawerObserver()V
    .locals 0

    return-void
.end method

.method public verifyForDelete()V
    .locals 0

    return-void
.end method
