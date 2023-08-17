.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/PositionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NEXT_LINE_MARGIN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustPositionWithObjectRect(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->composer_insert_object_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float p0, p0

    add-float/2addr p1, p0

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private static adjustPositionWithPdfRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->rect:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, p1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private static getBodyTextRect(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Landroid/graphics/PointF;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iget p2, p0, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method

.method public static getInsertedPosition(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/PositionUtil;->getInsertedPosition(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getInsertedPosition(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IZ)Landroid/graphics/PointF;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/PositionUtil;->getBodyTextRect(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/PositionUtil;->adjustPositionWithPdfRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;)V

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/PositionUtil;->adjustPositionWithObjectRect(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0
.end method
