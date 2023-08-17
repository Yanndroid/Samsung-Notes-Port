.class public Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalibratedVertexList([Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    iget v6, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v4

    if-gez v7, :cond_2

    iget v7, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_2
    cmpg-float v7, v6, v4

    if-gez v7, :cond_3

    iget v7, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_3
    cmpg-float v7, v4, v5

    if-gez v7, :cond_4

    iget v7, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_4
    cmpg-float v7, v5, v4

    if-gtz v7, :cond_5

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_5

    iget v7, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v8, v5, v7

    if-gtz v8, :cond_5

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_5

    goto :goto_1

    :cond_5
    add-int v7, v2, v1

    add-int/lit8 v7, v7, -0x1

    rem-int/2addr v7, v1

    aget-object v7, p0, v7

    add-int/lit8 v8, v2, 0x1

    rem-int/2addr v8, v1

    aget-object v8, p0, v8

    cmpg-float v9, v4, v5

    if-gez v9, :cond_6

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    :cond_6
    cmpg-float v4, v6, v4

    if-gez v4, :cond_7

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    :cond_7
    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    :cond_8
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    invoke-static {v4, v9, v7, v3}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v9, v3, v8}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    goto/16 :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/graphics/PointF;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/PointF;

    return-object p0
.end method

.method public static getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget p1, p2, Landroid/graphics/PointF;->y:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    sub-float v2, p1, v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float v3, p2, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, p2

    mul-float/2addr p1, p3

    sub-float/2addr v1, p1

    sub-float/2addr p2, p3

    div-float/2addr v1, p2

    add-float/2addr v2, v1

    new-instance p1, Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-direct {p1, p0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_0
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float p3, p0, p1

    sub-float v3, v0, v1

    div-float/2addr p3, v3

    mul-float/2addr p3, v2

    mul-float/2addr p1, v0

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    add-float/2addr p3, p1

    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getGradient(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getGradient(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iget p2, p3, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    sub-float/2addr p2, v0

    sub-float p1, p0, p1

    div-float/2addr p2, p1

    new-instance p1, Landroid/graphics/PointF;

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public static getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v0, p0, p1

    sub-float/2addr p0, p1

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    float-to-double p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getDistance(Landroid/graphics/PointF;Landroid/util/Pair;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/util/Pair<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)F"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    neg-float v0, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float v3, v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float v4, p1, p0

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    mul-float/2addr v2, v1

    mul-float/2addr p0, p1

    add-float/2addr v2, p0

    add-float/2addr v2, v0

    mul-float/2addr v3, v2

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    div-float/2addr v3, v1

    float-to-double p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getGradient(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method public static getNotOverlappedPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 4

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p2

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    invoke-direct {v1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public static getRatioFromRealPosition(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p5

    sub-float/2addr v1, p1

    div-float/2addr v1, p3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p5

    sub-float/2addr p0, p2

    div-float/2addr p0, p4

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getRealPositionFromRatio(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p3, v1

    add-float/2addr p1, p3

    sub-float/2addr p1, p5

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p4, p0

    add-float/2addr p2, p4

    sub-float/2addr p2, p5

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    sub-int/2addr v1, v0

    sub-int/2addr p2, p0

    mul-int/2addr v1, p2

    sub-int/2addr p1, p0

    sub-int/2addr v2, v0

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    if-lez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHandlerAreaIsOverlapped(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    .locals 3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, p2, v0

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public static isOverlappedOnLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    .locals 7

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float v3, v2, v3

    sub-float v3, v1, v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v5, v1

    const/4 v6, 0x0

    if-ltz v1, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v0, v3

    if-ltz v1, :cond_1

    cmpg-float v1, v2, v5

    if-ltz v1, :cond_1

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getDistance(Landroid/graphics/PointF;Landroid/util/Pair;)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_1

    const/4 v6, 0x1

    :cond_1
    :goto_0
    return v6
.end method

.method public static isOverlappedWithTouchPos(ILandroid/graphics/PointF;[Landroid/graphics/PointF;F)Z
    .locals 5

    aget-object v0, p2, p0

    invoke-static {p1, v0, p3}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isHandlerAreaIsOverlapped(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    array-length p3, p2

    add-int/lit8 v1, p3, -0x1

    new-array v2, v1, [Landroid/graphics/PointF;

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    add-int/2addr v4, p0

    add-int/2addr v4, v3

    rem-int/2addr v4, p3

    aget-object v4, p2, v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    add-int/lit8 p2, p0, 0x2

    if-ge p2, v1, :cond_2

    aget-object p2, v2, p0

    add-int/lit8 p0, p0, 0x1

    aget-object p3, v2, p0

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_2
    return v4

    :cond_3
    return v0
.end method

.method public static isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getGradient(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getGradient(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
