.class public Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;
    }
.end annotation


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

.field private mIsDrawLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mIsDrawLine:Z

    return-void
.end method


# virtual methods
.method public createRectifyArea()Landroid/graphics/Bitmap;
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v8, v2

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_5

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;->getNumOfAngle()I

    move-result v1

    new-array v9, v1, [Landroid/graphics/PointF;

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

    invoke-interface {v2, v11}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;->getVertexFromIndex(I)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getRealPositionFromRatio(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object v2

    aput-object v2, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    float-to-int v0, v0

    float-to-int v2, v8

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$color;->detect_highlight_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectify_area_line_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v2, v10

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v9, v2

    add-int/lit8 v13, v2, 0x1

    rem-int v2, v13, v1

    aget-object v2, v9, v2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v8

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v13

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v12}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0x80

    invoke-static {v3, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    aget-object v4, v9, v10

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    if-gt v12, v1, :cond_4

    rem-int v4, v12, v1

    aget-object v4, v9, v4

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mIsDrawLine:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->createRectifyArea()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;->onLayout()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;->onMeasured(FF)V

    :cond_0
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;

    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->mIsDrawLine:Z

    return-void
.end method
