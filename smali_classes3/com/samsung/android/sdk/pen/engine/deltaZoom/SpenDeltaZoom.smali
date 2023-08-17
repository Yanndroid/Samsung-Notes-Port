.class public Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom$ScrollAlignmentMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenDeltaZoom"


# instance fields
.field private mDeltaZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;

.field private mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

.field public nativeDeltaZoom:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mDeltaZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_construct(JLcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativeDeltaZoom is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;)Z
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

.method private static native Native_getDeltaRange(J)Landroid/graphics/RectF;
.end method

.method private static native Native_getMaxZoomScale(J)F
.end method

.method private static native Native_getMinZoomScale(J)F
.end method

.method private static native Native_getPan(J)Landroid/graphics/PointF;
.end method

.method private static native Native_getScaleX(J)F
.end method

.method private static native Native_getScaleY(J)F
.end method

.method private static native Native_getViewHeight(J)I
.end method

.method private static native Native_getViewRectOfContentInView(J)Landroid/graphics/RectF;
.end method

.method private static native Native_getViewWidth(J)I
.end method

.method private static native Native_getZoomScale(J)F
.end method

.method private static native Native_isScrollable(J)Z
.end method

.method private static native Native_isZoomable(J)Z
.end method

.method private static native Native_scroll(JFF)V
.end method

.method private static native Native_scrollToContentRect(JLandroid/graphics/RectF;I)V
.end method

.method private static native Native_setContentRect(JFFFF)V
.end method

.method private static native Native_setContentScale(JF)V
.end method

.method private static native Native_setDelta(JFF)V
.end method

.method private static native Native_setMargin(JFFFF)V
.end method

.method private static native Native_setMaxZoomScale(JF)Z
.end method

.method private static native Native_setMinZoomScale(JF)Z
.end method

.method private static native Native_setPan(JFF)V
.end method

.method private static native Native_setScrollable(JZ)V
.end method

.method private static native Native_setStretchMode(JZFF)V
.end method

.method private static native Native_setViewSize(JII)V
.end method

.method private static native Native_setZoomScale(JFFF)V
.end method

.method private static native Native_setZoomable(JZ)V
.end method

.method private static native Native_zoom(JFFF)V
.end method

.method private onContentRectUpdated(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mDeltaZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;->onContentRectUpdated(FFFF)V

    :cond_0
    return-void
.end method

.method private onDeltaZoomUpdated(FFFFF)V
    .locals 6

    neg-float p4, p4

    div-float/2addr p4, p1

    neg-float p5, p5

    div-float/2addr p5, p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    if-eqz v0, :cond_0

    move v1, p4

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;->onZoom(FFFFF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mDeltaZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;

    if-eqz v0, :cond_1

    move v1, p4

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;->onZoom(FFFFF)V

    :cond_1
    return-void
.end method

.method private onViewSizeUpdated(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mDeltaZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;->onViewSizeUpdated(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    return-void
.end method

.method public getContentHeight()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getContentHeight(J)F

    move-result v0

    return v0
.end method

.method public getContentRectInView()Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getContentRectInView(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getContentScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getContentScale(J)F

    move-result v0

    return v0
.end method

.method public getContentWidth()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getContentWidth(J)F

    move-result v0

    return v0
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getDelta(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaRange()Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getDeltaRange(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getMaxZoomScale(J)F

    move-result v0

    return v0
.end method

.method public getMinZoomScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getMinZoomScale(J)F

    move-result v0

    return v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getPan(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getScaleX()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getScaleY(J)F

    move-result v0

    return v0
.end method

.method public getViewHeight()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getViewHeight(J)I

    move-result v0

    return v0
.end method

.method public getViewRectOfContentInView()Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getViewRectOfContentInView(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getViewWidth(J)I

    move-result v0

    return v0
.end method

.method public getZoomScale()F
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_getZoomScale(J)F

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_isScrollable(J)Z

    move-result v0

    return v0
.end method

.method public isZoomable()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_isZoomable(J)Z

    move-result v0

    return v0
.end method

.method public scroll(FF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_scroll(JFF)V

    return-void
.end method

.method public scrollToContentRect(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom$ScrollAlignmentMode;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom$ScrollAlignmentMode;->getIntValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_scrollToContentRect(JLandroid/graphics/RectF;I)V

    return-void
.end method

.method public setContentRect(FFFF)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setContentRect(JFFFF)V

    return-void
.end method

.method public setContentScale(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setContentScale(JF)V

    return-void
.end method

.method public setDelta(FF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setDelta(JFF)V

    return-void
.end method

.method public setDeltaZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mDeltaZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoomListener;

    return-void
.end method

.method public setMargin(FFFF)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setMargin(JFFFF)V

    return-void
.end method

.method public setMaxZoomScale(F)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setMaxZoomScale(JF)Z

    move-result p1

    return p1
.end method

.method public setMinZoomScale(F)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setMinZoomScale(JF)Z

    move-result p1

    return p1
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setPan(JFF)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setScrollable(JZ)V

    return-void
.end method

.method public setStretchMode(ZFF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setStretchMode(JZFF)V

    return-void
.end method

.method public setViewSize(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setViewSize(JII)V

    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->mZoomListener:Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;

    return-void
.end method

.method public setZoomScale(FFF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setZoomScale(JFFF)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_setZoomable(JZ)V

    return-void
.end method

.method public zoom(FFF)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->nativeDeltaZoom:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->Native_zoom(JFFF)V

    return-void
.end method
