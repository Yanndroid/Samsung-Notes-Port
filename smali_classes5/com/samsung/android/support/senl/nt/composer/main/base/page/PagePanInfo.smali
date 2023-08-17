.class public Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContentPanX:F

.field private mContentPanY:F

.field private mPageIndex:I

.field private mPagePanX:F

.field private mPagePanY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanX:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPageIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanX:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanY:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ILandroid/graphics/PointF;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanX:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanY:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPageIndex:I

    iget p1, p3, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanX:F

    iget p1, p3, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanY:F

    return-void
.end method

.method public static convertToPagePan(Landroid/graphics/PointF;Lcom/samsung/android/sdk/composer/util/SpenPagePan;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    iget v1, p1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    iget-object p1, p1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pan:Landroid/graphics/PointF;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;-><init>(Landroid/graphics/PointF;ILandroid/graphics/PointF;)V

    return-object v0
.end method

.method public static convertToSpenPagePan(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;)Lcom/samsung/android/sdk/composer/util/SpenPagePan;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/composer/util/SpenPagePan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/util/SpenPagePan;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getPageIndex()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->getPan()Landroid/graphics/PointF;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pan:Landroid/graphics/PointF;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanX:F

    iget v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanY:F

    iget v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPageIndex:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPageIndex:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanX:F

    iget v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanY:F

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanY:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getContentPanX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanX:F

    return v0
.end method

.method public getContentPanY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanY:F

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPageIndex:I

    return v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanX:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentPan.x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " contentPan.y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mContentPanY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPan.x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mPan.y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->mPagePanY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
