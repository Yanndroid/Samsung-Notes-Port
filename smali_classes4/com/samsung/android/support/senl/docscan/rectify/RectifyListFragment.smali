.class public Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;
.implements Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;
.implements Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;
    }
.end annotation


# static fields
.field private static final OFFSET_PAGE_LIMIT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "RectifyListFragment"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;

.field private mPagerAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

.field private mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

.field private mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

.field private mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    new-instance p1, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setScanDataModel(Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->updateRecyclerViewForThumbnail(II)V

    return-void
.end method

.method private initLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->initToolbar()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->initViewPager()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->initRecyclerView()V

    return-void
.end method

.method private initRecyclerView()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->rectified_image_view_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$3;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initViewPager()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->rectified_image_view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private removeDocScanData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->removeDocScanData(I)V

    return-void
.end method

.method private showRectifyEditView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getDocScanData(I)Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v1

    const-string v2, "RectifyListFragment"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;->showRectifyEditView(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDocScanData()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_doc_scan_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->updateDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->loadThumbnailImage()V

    return-void
.end method

.method private updateRecyclerViewForThumbnail(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    if-eq p1, p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private updateRecyclerViewLayout()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectified_image_thumbnail_item_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getCurrentPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setCurrentPosition(IZZ)V

    return-void
.end method


# virtual methods
.method public clearRectifiedImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->clearRectifiedImage(I)V

    :cond_0
    return-void
.end method

.method public finishFragment()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->onBackPressed()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRectifiedImage(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getRectifiedImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getThumbnailImage(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getThumbnailImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public notifyCurrentPositionChanged(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0, p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;II)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyPageRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->notifyItemRemoved()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyPageUpdated(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->notifyItemUpdated(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyThumbnailDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyThumbnailRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public notifyThumbnailUpdated(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mRecyclerViewAdapter:Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->updateRecyclerViewLayout()V

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

    sget v0, Lcom/samsung/android/support/senl/docscan/R$menu;->rectify_list_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

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

    sget p3, Lcom/samsung/android/support/senl/docscan/R$layout;->rectify_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setCurrentPosition(IZ)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->onBackPressed()V

    return v2

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->action_rectify:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->showRectifyEditView()V

    return v2

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->action_remove:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->removeDocScanData()V

    return v2

    :cond_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->updateRecyclerViewLayout()V

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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->initLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->updateDocScanData()V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$Contract;

    return-void
.end method

.method public updateRectifiedImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->updateRectifiedImage(IZ)V

    :cond_0
    return-void
.end method
