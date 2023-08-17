.class public Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenDrawLoopTexture"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private mFrameTimeNanos:J

.field private mInitialBg:Landroid/graphics/drawable/Drawable;

.field private mSurface:Landroid/view/Surface;

.field private mTimeStamp:J

.field private mTwinView:Landroid/view/View;

.field private nativeDrawLoop:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mSurface:Landroid/view/Surface;

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTimeStamp:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mFrameTimeNanos:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->init()V

    return-void
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getMsgQueue(J)J
.end method

.method private static native Native_getRendererType(J)I
.end method

.method private static native Native_init()J
.end method

.method private static native Native_isScrolling(J)Z
.end method

.method private static native Native_onDraw(JZ)V
.end method

.method private static native Native_onDrawToScreen(JZ)V
.end method

.method private static native Native_onPause(J)V
.end method

.method private static native Native_onResume(J)V
.end method

.method private static native Native_setScreenSize(JII)V
.end method

.method private static native Native_surfaceChanged(JLandroid/view/Surface;II)Z
.end method

.method private static native Native_surfaceCreated(JLandroid/view/Surface;)Z
.end method

.method private static native Native_surfaceDestroyed(J)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    return-wide v0
.end method

.method public static synthetic access$100(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_isScrolling(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onDrawToScreen(JZ)V

    return-void
.end method

.method public static synthetic access$300(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onDraw(JZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mInitialBg:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mInitialBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenDrawLoopTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_construct(JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)Z

    return-void
.end method

.method private surfaceChanged(Landroid/view/Surface;III)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceChanged(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenDrawLoopTexture"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-static {v0, v1, p1, p3, p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_surfaceChanged(JLandroid/view/Surface;II)Z

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->setScreenSize(II)V

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onDraw(JZ)V

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onDrawToScreen(JZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenDrawLoopTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mInitialBg:Landroid/graphics/drawable/Drawable;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mFrameTimeNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$1;-><init>(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mFrameTimeNanos:J

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture$2;-><init>(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMsgQueueHandle()J
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_getMsgQueue(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getRendererType()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_getRendererType(J)I

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
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onDraw(JZ)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onDrawToScreen(JZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onPause(J)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_onResume(J)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-string v0, "SpenDrawLoopTexture"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->surfaceCreated(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->surfaceChanged(Landroid/view/Surface;III)V

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->setScreenSize(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->surfaceDestroyed(Landroid/view/Surface;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-string p1, "SpenDrawLoopTexture"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-string p1, "SpenDrawLoopTexture"

    const-string v0, "onSurfaceTextureSizeChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->surfaceChanged(Landroid/view/Surface;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public setCaptureCurrentViewBmp(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setScreenSize(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_setScreenSize(JII)V

    :cond_0
    return-void
.end method

.method public setTwinView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mTwinView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->mInitialBg:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surfaceCreated(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenDrawLoopTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_surfaceCreated(JLandroid/view/Surface;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceDestroyed(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenDrawLoopTexture"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->nativeDrawLoop:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->Native_surfaceDestroyed(J)V

    return-void
.end method
