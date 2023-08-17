.class public Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

.field private final mImageViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mImageViewMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    return-void
.end method

.method private getScanDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mImageViewMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;->clearRectifiedImage(I)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->getScanDataCount()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$layout;->rectified_image_pager_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mImageViewMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;->getRectifiedImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;->updateRectifiedImage(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyItemRemoved()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mImageViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyItemUpdated(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->getScanDataCount()I

    move-result v0

    if-ltz p1, :cond_3

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mImageViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;->getRectifiedImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImagePagerAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$ViewPager;->updateRectifiedImage(I)V

    :cond_3
    :goto_0
    return-void
.end method
