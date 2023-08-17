.class public Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;
.implements Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;


# static fields
.field private static final REQUEST_CAMERA_PERMISSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DocumentScanActivity"


# instance fields
.field private mHasSavedInstance:Z

.field private final mPostActionWhenDenied:Ljava/lang/Runnable;

.field private final mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1;-><init>(Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mPostActionWhenDenied:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    return-void
.end method

.method private checkNotSupportedWindow()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->dismissCheckAddToNoteDialog()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$string;->cannot_use_feature_in_multi_window:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    const-string v0, "MultiWindow not supported"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->finishWithSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private deleteCacheFiles()V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/docscan/task/FileDeleteTask;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/task/FileDeleteTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INTENT_SDOC_UUID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getScanCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private deleteSavedCacheDir()V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/docscan/task/FileDeleteTask;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/task/FileDeleteTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INTENT_PATH_TO_SAVE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private dismissCheckAddToNoteDialog()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->dismissCheckAddToNoteDialog()V

    :cond_0
    return-void
.end method

.method private isNeedToShowCheckAddToNoteDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->isScanDataEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private restoreFragment()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setContract(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;)V

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    if-eqz v0, :cond_2

    check-cast v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->setContract(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;)V

    :cond_2
    :goto_1
    const-string v0, "DocumentScanActivity"

    const-string v1, "restoreFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setContractToBackStackFragment()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const-string v2, "DocumentScanActivity"

    if-gtz v1, :cond_0

    const-string v0, "setContractToBackStackFragment# no backStack"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContractToBackStackFragment# fragmentTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setContract(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;)V

    goto :goto_0

    :cond_1
    const-string v2, "RectifyListFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->setContract(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showCheckAddToNoteDialog()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->showCheckAddToNoteDialog()V

    :cond_0
    return-void
.end method

.method private startCameraFragment()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INTENT_PATH_TO_SAVE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INTENT_SDOC_UUID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;-><init>(Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/docscan/R$id;->preview_container:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->setContract(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;)V

    const-string v0, "DocumentScanActivity"

    const-string v1, "startCameraFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finishWithFailed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishWithFailed# cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentScanActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->deleteCacheFiles()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->deleteSavedCacheDir()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishWithSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishWithSuccess# cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentScanActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->deleteCacheFiles()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_PATH_TO_SAVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "DocumentScanActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->isNeedToShowCheckAddToNoteDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->showCheckAddToNoteDialog()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->setContractToBackStackFragment()V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/samsung/android/support/senl/docscan/R$layout;->document_scan_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->checkNotSupportedWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_PATH_TO_SAVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "onCreate failed"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->finishWithFailed(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_SDOC_UUID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "onCreate failed, docUuid is null"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->finishWithFailed(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mHasSavedInstance:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->load(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mHasSavedInstance:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->restoreFragment()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->deleteCacheFiles()V

    :goto_1
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged# isInMultiWindowMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentScanActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->checkNotSupportedWindow()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {p0, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mHasSavedInstance:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->restoreFragment()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->startCameraFragment()V

    goto :goto_0

    :cond_1
    const-string p1, "Permission requestCode error"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->finishWithFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mPostActionWhenDenied:Ljava/lang/Runnable;

    invoke-static {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mHasSavedInstance:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->restoreFragment()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->startCameraFragment()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->save(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onTopResumedActivityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    const-string v0, "DocumentScanActivity"

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->restartCameraTimer()V

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public showRectifyEditView(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RectifyEditFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-direct {v2, p1, v3, p2}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;-><init>(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$id;->preview_container:I

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    const-string p1, "DocumentScanActivity"

    const-string p2, "showRectifyEditView"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showRectifyListView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->isScanDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RectifyListFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;-><init>(Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/docscan/R$id;->preview_container:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    invoke-virtual {v2, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->setContract(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;)V

    const-string v0, "DocumentScanActivity"

    const-string v1, "showRectifyListView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
