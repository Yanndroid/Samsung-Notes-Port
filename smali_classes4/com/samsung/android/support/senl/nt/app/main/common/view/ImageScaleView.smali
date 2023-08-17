.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private mImageRatio:F

.field private mMaxHeight:I

.field private mOriginWidth:I

.field private mParentParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mImageRatio:F

    return-void
.end method


# virtual methods
.method public initGravity()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mParentParams:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mImageRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mImageRatio:F

    mul-float v2, v0, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mOriginWidth:I

    if-gtz v3, :cond_0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mOriginWidth:I

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mOriginWidth:I

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-int v1, v3

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mMaxHeight:I

    if-le v1, v3, :cond_1

    int-to-float v1, v3

    int-to-float p2, p2

    div-float/2addr v1, p2

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMinimumHeight()I

    move-result p2

    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMinimumHeight()I

    move-result v2

    :cond_2
    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mParentParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mParentParams:Landroid/widget/FrameLayout$LayoutParams;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mParentParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sub-int v0, p3, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mMaxHeight:I

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ImageScaleView;->mImageRatio:F

    return-void
.end method
