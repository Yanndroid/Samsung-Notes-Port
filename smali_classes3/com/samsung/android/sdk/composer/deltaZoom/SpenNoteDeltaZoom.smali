.class public Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;
.super Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNoteDeltaZoom"


# instance fields
.field private mNoteDeltaZoomListener:Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(JLandroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;-><init>(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mNoteDeltaZoomListener:Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_construct(JLcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;)Z

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mView:Landroid/view/View;

    return-void
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;)Z
.end method

.method private static native Native_isZoomable(J)Z
.end method

.method private static native Native_scrollToContentRect(JLandroid/graphics/RectF;I)V
.end method

.method private static native Native_setPan(JFF)V
.end method

.method private static native Native_setZoomScale(JFFF)V
.end method

.method private static native Native_setZoomable(JZ)V
.end method

.method private static native Native_zoom(JFFF)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;)Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mNoteDeltaZoomListener:Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;

    return-object p0
.end method

.method private onMovementLockedChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMovementLockedChanged isMovementLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteDeltaZoom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom$1;-><init>(Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mNoteDeltaZoomListener:Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;->onMovementLockedChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onZoomableChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZoomableChanged isZoomable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteDeltaZoom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mNoteDeltaZoomListener:Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;->onZoomableChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mView:Landroid/view/View;

    return-void
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
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_isZoomable(J)Z

    move-result v0

    return v0
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

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_scrollToContentRect(JLandroid/graphics/RectF;I)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->mNoteDeltaZoomListener:Lcom/samsung/android/sdk/composer/listener/SpenNoteDeltaZoomListener;

    return-void
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

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_setPan(JFF)V

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
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_setZoomScale(JFFF)V

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
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_setZoomable(JZ)V

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
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->Native_zoom(JFFF)V

    return-void
.end method
