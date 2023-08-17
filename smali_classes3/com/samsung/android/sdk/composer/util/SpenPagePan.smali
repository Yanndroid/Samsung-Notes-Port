.class public Lcom/samsung/android/sdk/composer/util/SpenPagePan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public pageIndex:I

.field public pan:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertContentPanToPagePan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Landroid/graphics/RectF;)Lcom/samsung/android/sdk/composer/util/SpenPagePan;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/util/SpenPagePan;-><init>()V

    new-instance v2, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-direct {v2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;-><init>()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexByXY(FF)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    :cond_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexListByRect(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->close()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->close()V

    iget v0, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p0

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pan:Landroid/graphics/PointF;

    iget p1, p0, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static convertContentPanToPagePan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;Landroid/graphics/RectF;)Lcom/samsung/android/sdk/composer/util/SpenPagePan;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/util/SpenPagePan;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexByXY(FF)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexListByRect(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    :cond_3
    iget p1, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p0

    new-instance p1, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pan:Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static convertPagePanToContentPan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/util/SpenPagePan;)Landroid/graphics/PointF;
    .locals 2

    if-eqz p0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pan:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p0, p1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pan:Landroid/graphics/PointF;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
