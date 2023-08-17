.class public Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "RectifyEditFragment"


# instance fields
.field private final RECTIFY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private mCaller:Ljava/lang/String;

.field private mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

.field private mRectifyRunning:Ljava/lang/Boolean;

.field private mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "RectifyEditFragment"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->RECTIFY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/docscan/model/DocScanData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "RectifyEditFragment"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->RECTIFY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getVertexList()[Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCalibratedVertexList([Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setVertexList([Landroid/graphics/PointF;)V

    const-string v1, "key_doc_scan_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "key_caller"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mCaller:Ljava/lang/String;

    return-object p0
.end method

.method private addDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->addScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    return-void
.end method

.method private callBackPress()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$3;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->addDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->callBackPress()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->onClickMenuButton(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->removeDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->setArgumentsToBackStackRectifyListFragment()V

    return-void
.end method

.method private initRectifyOverlayView()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->rectify_overlay_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->initialize(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getDocScanData()Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewCreated# mCaller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RectifyEditFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mCaller:Ljava/lang/String;

    const-string v3, "CameraFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getScanBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getBitmapImageFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setScanBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getScanBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setImagePath(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setImagePath(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getVertexList()[Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setHandlePosition([Landroid/graphics/PointF;)V

    return-void
.end method

.method private initToolbar()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isNeedBottomButton()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private onCancelClick()V
    .locals 2

    const-string v0, "RectifyEditFragment"

    const-string v1, "onCancelClick# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->callBackPress()V

    return-void
.end method

.method private onClickMenuButton(I)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    const v1, 0x102002c

    if-eq p1, v1, :cond_3

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->action_retake:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->action_done:I

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->onDoneClick()V

    return v0

    :cond_2
    return v3

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->onCancelClick()V

    return v0
.end method

.method private onDoneClick()V
    .locals 2

    const-string v0, "RectifyEditFragment"

    const-string v1, "onDoneClick# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->replaceDoneButtonToProgress()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->saveRectifyResult()V

    return-void
.end method

.method private removeDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->removeScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    return-void
.end method

.method private replaceDoneButtonToProgress()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->isNeedBottomButton()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->action_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->replaceBtnToProgress(Landroid/view/View;)V

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->progress_circle_small_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->action_done:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/docscan/R$layout;->notes_progress_circle_small:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mUIHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveRectifyResult()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->RECTIFY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setArgumentsToBackStackRectifyListFragment()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RectifyListFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getDocScanData()Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v2

    const-string v3, "key_doc_scan_data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateBottomNavigationView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->bottom_navigation_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->isNeedBottomButton()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->updateMenuText(Landroid/view/Menu;)V

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->updateMenuTextColor(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateMenuText(Landroid/view/Menu;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/docscan/R$id;->action_retake:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$string;->action_retake:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    sget v0, Lcom/samsung/android/support/senl/docscan/R$id;->action_done:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->action_done:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method private updateMenuTextColor(Landroid/view/Menu;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->isShowButtonShapeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ButtonBackgroundUtils;->updateMenuItemTextColor(Landroid/view/MenuItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->onClickMenuButton(I)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->updateBottomNavigationView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    const-string v1, "key_doc_scan_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    const-string v0, "key_caller"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mCaller:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->initScanLibrary()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->isNeedBottomButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/docscan/R$menu;->rectify_edit_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    sget p3, Lcom/samsung/android/support/senl/docscan/R$layout;->rectify_edit_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->deInitScanLibrary()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView# caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRectifyRunning:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectifyEditFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->RECTIFY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->onClickMenuButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mRectifyRunning:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->replaceDoneButtonToProgress()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getDocScanData()Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v0

    const-string v1, "key_doc_scan_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->mCaller:Ljava/lang/String;

    const-string v1, "key_caller"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->initToolbar()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->initRectifyOverlayView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->updateBottomNavigationView()V

    return-void
.end method
