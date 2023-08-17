.class public Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDelta:Landroid/graphics/PointF;

.field private mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

.field private mHandlerSize:F

.field private final mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

.field private mInterpolation:F

.field private mLastTouch:Landroid/graphics/PointF;

.field private mPrevVertexes:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RectifyEditPresenter"

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    return-void
.end method

.method private varargs applyOffsetToPositions(FF[Landroid/graphics/PointF;)V
    .locals 3
    .param p3    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {v2, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs canMoveHorizontal([Landroid/graphics/PointF;)Z
    .locals 4
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->isYPosInBound(F)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private varargs canMoveVertical([Landroid/graphics/PointF;)Z
    .locals 4
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->isXPosInBound(F)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private getStartPosIfParallel(ILandroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length v0, p4

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    add-int/lit8 p2, p1, -0x1

    add-int/2addr p2, v0

    rem-int/2addr p2, v0

    aget-object v2, p4, p2

    aget-object v3, p4, p1

    aget-object v4, p4, p1

    add-int/lit8 v5, p1, 0x1

    rem-int/2addr v5, v0

    aget-object v0, p4, v5

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p2, p4, p2

    aget-object v0, p4, v5

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getGradient(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    aget-object p1, p4, p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p4, v1, Landroid/graphics/PointF;->x:F

    iget v0, p3, Landroid/graphics/PointF;->x:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_0

    iget p4, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr p1, p4

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    add-float/2addr p1, p4

    :goto_0
    neg-float p2, p2

    div-float p4, p1, p2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr p4, p3

    div-float/2addr v0, p2

    sub-float/2addr p4, v0

    invoke-virtual {v1, p1, p4}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    return-object v1
.end method

.method private initPrevVertexes()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getVertexList()[Landroid/graphics/PointF;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mPrevVertexes:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mPrevVertexes:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v5, v0, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isConvexShape([Landroid/graphics/PointF;)Z
    .locals 6
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x2

    rem-int/2addr v3, v0

    aget-object v3, p1, v3

    add-int/lit8 v4, v2, 0x1

    rem-int v5, v4, v0

    aget-object v5, p1, v5

    aget-object v2, p1, v2

    invoke-static {v3, v5, v2}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isLineConvexShape(I[Landroid/graphics/PointF;)Z
    .locals 6
    .param p2    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p2

    aget-object v1, p2, p1

    add-int/lit8 v2, p1, 0x1

    rem-int/2addr v2, v0

    aget-object v2, p2, v2

    add-int/lit8 v3, p1, 0x2

    rem-int/2addr v3, v0

    aget-object v3, p2, v3

    add-int/lit8 p1, p1, 0x3

    rem-int/2addr p1, v0

    aget-object p1, p2, p1

    invoke-static {v1, v2, v3, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x2

    rem-int/2addr v3, v0

    aget-object v3, p2, v3

    add-int/lit8 v4, v2, 0x1

    rem-int v5, v4, v0

    aget-object v5, p2, v5

    aget-object v2, p2, v2

    invoke-static {v3, v5, v2}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isLineOverlapped([Landroid/graphics/PointF;F)Z
    .locals 7
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    aget-object v5, p1, v2

    aget-object v6, p1, v4

    invoke-static {v5, v6, p2}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isHandlerAreaIsOverlapped(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isTouchedInsideOfRectifyArea(Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z
    .locals 5
    .param p2    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    rem-int v4, v3, v0

    aget-object v4, p2, v4

    aget-object v2, p2, v2

    invoke-static {v4, p1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isXPosInBound(F)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gt v0, p1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isYPosInBound(F)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getY()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gt v0, p1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private saveRectifiedImageToFile(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "RectifyEditPresenter"

    if-nez p1, :cond_0

    const-string p1, "saveRectifiedImageToFile# failed - imageBitmap is null"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->execute(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "saveRectifiedImageToFile# failed - The path is empty"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0x64

    invoke-static {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRectifiedImageToFile# fail to delete savedFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "saveRectifiedImageToFile# fail to make jpg"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, p1

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRectifiedImageToFile# failed - getParentFile is null. path:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    :goto_4
    return-object v0
.end method

.method private setHandlerConvexShape(ILandroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V
    .locals 5
    .param p4    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p4

    add-int/lit8 v1, p1, 0x2

    rem-int/2addr v1, v0

    aget-object v2, p4, v1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v3, v0

    aget-object v4, p4, v3

    invoke-static {v2, v4, p3}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v1, p4, v1

    aget-object v2, p4, v3

    invoke-static {p2, p3, v1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_0
    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    aget-object v2, p4, v1

    add-int/lit8 p1, p1, -0x2

    add-int/2addr p1, v0

    rem-int/2addr p1, v0

    aget-object v0, p4, p1

    invoke-static {p3, v2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p4, v1

    aget-object p1, p4, p1

    invoke-static {p2, p3, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_1
    aget-object p1, p4, v3

    aget-object v0, p4, v1

    invoke-static {p1, p3, v0}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isCounterClockwise(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    aget-object p1, p4, v3

    aget-object p4, p4, v1

    invoke-static {p2, p3, p1, p4}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getCrossingPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    return-void
.end method

.method private setHandlerNotOverlapped(ILandroid/graphics/PointF;[Landroid/graphics/PointF;F)V
    .locals 3
    .param p3    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p3, v1

    invoke-static {p2, v2, p4}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isHandlerAreaIsOverlapped(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p3, v1

    invoke-static {p2, v2, p4}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getNotOverlappedPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setHandlerPositionedInBounds(Landroid/graphics/PointF;)V
    .locals 6
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getY()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v4, v0

    if-gez v5, :cond_0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v1, v4

    if-gtz v0, :cond_1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    cmpg-float v0, v3, v0

    if-gtz v0, :cond_3

    iput v3, p1, Landroid/graphics/PointF;->y:F

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs canMoveAllPosition([Landroid/graphics/PointF;)Z
    .locals 3

    const-string v0, "RectifyEditPresenter"

    const-string v1, "canMoveAllPosition# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->applyOffsetToPositions(FF[Landroid/graphics/PointF;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->canMoveVertical([Landroid/graphics/PointF;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->canMoveHorizontal([Landroid/graphics/PointF;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    :goto_0
    iput v2, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->applyOffsetToPositions(FF[Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public canMoveLine(I[Landroid/graphics/PointF;)Z
    .locals 4
    .param p2    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    aget-object v1, p2, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    add-int/lit8 v1, p1, 0x1

    array-length v3, p2

    rem-int/2addr v1, v3

    aget-object v1, p2, v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->canMoveAllPosition([Landroid/graphics/PointF;)Z

    move-result v0

    const-string v1, "RectifyEditPresenter"

    if-nez v0, :cond_0

    const-string p1, "canMoveLine# can not move any directions"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mHandlerSize:F

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->isLineOverlapped([Landroid/graphics/PointF;F)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "canMoveLine# isLineOverlapped"

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->isLineConvexShape(I[Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public canMovePosition(ILandroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z
    .locals 2
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v0}, Landroid/graphics/PointF;->offset(FF)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getStartPosIfParallel(ILandroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setHandlerConvexShape(ILandroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mHandlerSize:F

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setHandlerNotOverlapped(ILandroid/graphics/PointF;[Landroid/graphics/PointF;F)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setHandlerPositionedInBounds(Landroid/graphics/PointF;)V

    aput-object p3, p4, p1

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->isConvexShape([Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public deInitScanLibrary()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->deInitialize()V

    return-void
.end method

.method public declared-synchronized getDocScanData()Lcom/samsung/android/support/senl/docscan/model/DocScanData;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumOfAngle()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v0

    return v0
.end method

.method public getRatioFromRealPosition(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getX()F

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getY()F

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getWidth()F

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getHeight()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getRatioFromRealPosition(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getRealPositionListFromRatio()[Landroid/graphics/PointF;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getVertex(I)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getX()F

    move-result v4

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getY()F

    move-result v5

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getWidth()F

    move-result v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->getHeight()F

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getRealPositionFromRatio(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTouchedObject(Landroid/graphics/PointF;[Landroid/graphics/PointF;)I
    .locals 9
    .param p2    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/PointF;

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    invoke-direct {p0, v0, v0, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->applyOffsetToPositions(FF[Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    move v3, v0

    move v5, v1

    move v4, v2

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v6

    const/4 v7, 0x0

    if-ge v3, v6, :cond_2

    iget v6, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    invoke-static {v3, p1, p2, v6}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isOverlappedWithTouchPos(ILandroid/graphics/PointF;[Landroid/graphics/PointF;F)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, p2, v3

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v6

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_0

    cmpg-float v7, v6, v5

    if-gez v7, :cond_1

    :cond_0
    move v4, v3

    move v5, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_3

    return v4

    :cond_3
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v4

    if-ge v0, v4, :cond_6

    aget-object v4, p2, v0

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v6

    rem-int v6, v5, v6

    aget-object v6, p2, v6

    iget v8, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    invoke-static {p1, v4, v6, v8}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->isOverlappedOnLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v8}, Lcom/samsung/android/support/senl/docscan/rectify/util/RectifyUtil;->getDistance(Landroid/graphics/PointF;Landroid/util/Pair;)F

    move-result v4

    cmpg-float v6, v1, v7

    if-ltz v6, :cond_4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getNumOfAngle()I

    move-result v1

    add-int v3, v0, v1

    move v1, v4

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    if-ltz v3, :cond_7

    return v3

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->isTouchedInsideOfRectifyArea(Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    const/4 p1, -0x2

    return p1
.end method

.method public getVertex(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getVertex(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public initScanLibrary()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->initialize()V

    return-void
.end method

.method public removeSavedCacheFile()V
    .locals 4

    const-string v0, "RectifyEditPresenter"

    :try_start_0
    const-string v1, "removeSavedCacheFile# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSavedCacheFile#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized resetVertexes()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mPrevVertexes:[Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mPrevVertexes:[Landroid/graphics/PointF;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mPrevVertexes:[Landroid/graphics/PointF;

    aget-object v4, v3, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setVertex(ILandroid/graphics/PointF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveRectifiedImageFromCamera()Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "RectifyEditPresenter"

    const-string v1, "saveRectifiedImageFromCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getScanBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->saveRectifiedImageToFile(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v1, "saveRectifiedImageFromCamera# saveRectifiedImageToFile fail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x64

    invoke-static {v1, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRectifiedImageFromCamera# fail to delete editFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRectifiedImageFromCamera# makeJpg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filePath : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setScanBitmap(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public saveRectifiedImageFromList()Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "RectifyEditPresenter"

    const-string v1, "saveRectifiedImageFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRectifiedImageFromList# copyFile failed - IOException. path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getBitmapImageFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->saveRectifiedImageToFile(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public saveRectifiedThumbnail(Landroid/graphics/Bitmap;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectified_image_thumbnail_item_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v1, "RectifyEditPresenter"

    const-string v2, "saveRectifiedThumbnail"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    int-to-float v1, v6

    div-float v1, v0, v1

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getOrientationFromPath(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    return-void
.end method

.method public setDelta(Landroid/graphics/PointF;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mLastTouch:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mLastTouch:Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mLastTouch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDelta:Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mLastTouch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public declared-synchronized setDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->initPrevVertexes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHandlerSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mHandlerSize:F

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageHeight(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->setHeight(F)V

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public setImageWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->setWidth(F)V

    return-void
.end method

.method public setImageX(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->setX(F)V

    return-void
.end method

.method public setImageY(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mImageInfo:Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/model/RectifyImageInfo;->setY(F)V

    return-void
.end method

.method public setInterpolation(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mInterpolation:F

    return-void
.end method

.method public setNumOfAngle(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setNumOfAngle(I)V

    return-void
.end method

.method public setVertex(ILandroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->setVertex(ILandroid/graphics/PointF;)V

    return-void
.end method

.method public declared-synchronized sortVertexList()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->mDocScanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->sortVertexList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
