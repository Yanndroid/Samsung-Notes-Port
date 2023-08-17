.class public Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNoteZoomScroller"


# instance fields
.field private final mNativeNoteZoomScroller:J

.field private mNoteZoomScrollerListener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

.field private mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNoteZoomScrollerListener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_init(JLcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)Z

    return-void
.end method

.method private static native Native_convertContentPointIntoViewPoint(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private static native Native_convertContentRectIntoViewRect(JLandroid/graphics/RectF;)Landroid/graphics/RectF;
.end method

.method private static native Native_convertViewPointIntoContentPoint(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private static native Native_convertViewRectIntoContentRect(JLandroid/graphics/RectF;)Landroid/graphics/RectF;
.end method

.method private static native Native_endContinuousChange(J)Z
.end method

.method private static native Native_getContentHeight(J)F
.end method

.method private static native Native_getContentRectInView(J)Landroid/graphics/RectF;
.end method

.method private static native Native_getContentScale(J)F
.end method

.method private static native Native_getContentWidth(J)F
.end method

.method private static native Native_getDelta(J)Landroid/graphics/PointF;
.end method

.method private static native Native_getMaxZoomScale(J)F
.end method

.method private static native Native_getMinZoomScale(J)F
.end method

.method private static native Native_getPan(J)Landroid/graphics/PointF;
.end method

.method private static native Native_getZoomScale(J)F
.end method

.method private static native Native_goToPage(JI)V
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)Z
.end method

.method private static native Native_scrollToContentRect(JLandroid/graphics/RectF;)V
.end method

.method private static native Native_setPan(JFF)V
.end method

.method private static native Native_setZoomScale(JF)V
.end method

.method private static native Native_setZoomScaleWithPivot(JFFF)V
.end method

.method private static native Native_smoothScrollToFitPage(J)V
.end method

.method private static native Native_startContinuousChange(J)Z
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNoteZoomScrollerListener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    return-object p0
.end method

.method private onScrollLockChanged(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollLockChanged isScrollLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteZoomScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$2;-><init>(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onZoomChanged(FFFFF)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;->onZoom(FFFFF)V

    :cond_0
    return-void
.end method

.method private onZoomLockChanged(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZoomLockChanged isZoomLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteZoomScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;-><init>(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public convertContentPointIntoViewPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_convertContentPointIntoViewPoint(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public convertContentRectIntoViewRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_convertContentRectIntoViewRect(JLandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public convertViewPointIntoContentPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_convertViewPointIntoContentPoint(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public convertViewRectIntoContentRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_convertViewRectIntoContentRect(JLandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public endContinuousChange()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_endContinuousChange(J)Z

    move-result v0

    return v0
.end method

.method public getContentHeight()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getContentHeight(J)F

    move-result v0

    return v0
.end method

.method public getContentRectInView()Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getContentRectInView(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getContentScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getContentScale(J)F

    move-result v0

    return v0
.end method

.method public getContentWidth()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getContentWidth(J)F

    move-result v0

    return v0
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getDelta(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getMaxZoomScale(J)F

    move-result v0

    return v0
.end method

.method public getMinZoomScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getMinZoomScale(J)F

    move-result v0

    return v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getPan(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getZoomScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_getZoomScale(J)F

    move-result v0

    return v0
.end method

.method public scrollToContentRect(Landroid/graphics/RectF;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_scrollToContentRect(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public scrollToPage(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_goToPage(JI)V

    return-void
.end method

.method public setNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNoteZoomScrollerListener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    return-void
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_setPan(JFF)V

    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    return-void
.end method

.method public setZoomScale(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_setZoomScale(JF)V

    return-void
.end method

.method public setZoomScale(FFF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_setZoomScaleWithPivot(JFFF)V

    return-void
.end method

.method public smoothScrollToFitPage()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_smoothScrollToFitPage(J)V

    return-void
.end method

.method public startContinuousChange()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->mNativeNoteZoomScroller:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->Native_startContinuousChange(J)Z

    move-result v0

    return v0
.end method
