.class public Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private nativeDrawLoop:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->init()V

    return-void
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getMsgQueue(J)J
.end method

.method private static native Native_getRendererType(J)I
.end method

.method private static native Native_init()J
.end method

.method private static native Native_onDraw(J)V
.end method

.method private static native Native_setScreenSize(JII)V
.end method

.method private static native Native_surfaceChanged(JLandroid/view/Surface;II)Z
.end method

.method private static native Native_surfaceCreated(JLandroid/view/Surface;)Z
.end method

.method private static native Native_surfaceDestroyed(J)V
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_construct(JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_onDraw(J)V

    :cond_0
    return-void
.end method

.method public getMsgQueueHandle()J
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_getMsgQueue(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getRendererType()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_getRendererType(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onLayout(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public setScreenSize(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_setScreenSize(JII)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1, p3, p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_surfaceChanged(JLandroid/view/Surface;II)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_surfaceCreated(JLandroid/view/Surface;)Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->nativeDrawLoop:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->Native_surfaceDestroyed(J)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
