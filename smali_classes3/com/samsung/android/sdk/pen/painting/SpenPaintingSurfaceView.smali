.class public Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# static fields
.field public static final BACKGROUND_IMAGE_MODE_CENTER:I = 0x0

.field public static final BACKGROUND_IMAGE_MODE_FIT:I = 0x2

.field public static final BACKGROUND_IMAGE_MODE_STRETCH:I = 0x1

.field public static final BACKGROUND_IMAGE_MODE_TILE:I = 0x3

.field public static final CAPTURE_ALL:I = 0x11100111

.field public static final CAPTURE_BACKGROUND_COLOR:I = 0x10000000

.field public static final CAPTURE_BACKGROUND_IMAGE:I = 0x1000000

.field public static final CAPTURE_FOREGROUND_ALL:I = 0x111

.field private static final CAPTURE_IMAGE:I = 0x100

.field public static final CAPTURE_PAPER:I = 0x100000

.field private static final CAPTURE_STROKE:I = 0x1

.field private static final CAPTURE_TEXTBOX:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SpenPaintingView"


# instance fields
.field private mHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

.field private mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;)Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SpenPaintingView"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->initializeSelf(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    new-instance v1, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-direct {v1, p1, p0, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;-><init>(Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->registerResourceView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelStroke()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->cancelStroke()V

    return-void
.end method

.method public captureCurrentView(Z)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->captureCurrentView(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public captureLayer(FI)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->captureLayer(FI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public capturePage(FI)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->capturePage(FI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->unregisterResourceView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->close()V

    return-void
.end method

.method public commitStroke()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->commitStroke()V

    return-void
.end method

.method public getBlankColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getBlankColor()I

    move-result v0

    return v0
.end method

.method public getCanvasHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasHeight()I

    move-result v0

    return v0
.end method

.method public getCanvasWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasWidth()I

    move-result v0

    return v0
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getDelta()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getEraserSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getEraserSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFillColorInfo()Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getFillColorInfo()Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGestureController()Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getGestureController()Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getMaxZoomScale()F

    move-result v0

    return v0
.end method

.method public getMinZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getMinZoomScale()F

    move-result v0

    return v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToolTypeAction(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getToolTypeAction(I)I

    move-result p1

    return p1
.end method

.method public getValidRect(IIII)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getValidRect(IIII)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getZoomScale()F

    move-result v0

    return v0
.end method

.method public isPaperEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->isPaperEnabled()Z

    move-result v0

    return v0
.end method

.method public isToolTipEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->isToolTipEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->isZoomable()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->onAttachedToWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->onLayout(ZIIII)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mSPenDrawLoopSurface:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;

    if-eqz v0, :cond_1

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopSurface;->setScreenSize(II)V

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onScreenStateChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public setBlankColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setBlankColor(I)V

    return-void
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    return-void
.end method

.method public setColoringForegroundEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setColoringForegroundEnabled(Z)V

    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V

    return-void
.end method

.method public setDelta(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setDelta(FF)V

    return-void
.end method

.method public setEraserChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setEraserChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;)V

    return-void
.end method

.method public setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    return-void
.end method

.method public setFillColorInfo(Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setFillColorInfo(Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V

    return-void
.end method

.method public setForceStretchView(ZII)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setForceStretchView(ZII)Z

    move-result p1

    return p1
.end method

.method public setFrontBufferRenderingEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setFrontBufferRenderingEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setLayerBitmap(Landroid/graphics/Bitmap;IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setLayerBitmap(Landroid/graphics/Bitmap;IZ)Z

    move-result p1

    return p1
.end method

.method public setLayerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IIZ)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setLayerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IIZ)Z

    move-result p1

    return p1
.end method

.method public setMargin(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setMargin(FFFF)V

    return-void
.end method

.method public setMaxZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setMaxZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setMinZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setMinZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setMouseWheelZoomEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setMouseWheelZoomEnabled(Z)V

    return-void
.end method

.method public declared-synchronized setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setPaperEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPaperEnabled(Z)V

    return-void
.end method

.method public setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    return-void
.end method

.method public setPredictionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPredictionEnabled(Z)V

    return-void
.end method

.method public setSketchImage(Landroid/graphics/Bitmap;II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setSketchImage(Landroid/graphics/Bitmap;II)Z

    move-result p1

    return p1
.end method

.method public setToolTipEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setToolTipEnabled(Z)V

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setToolTypeAction(II)V

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setTouchMargin(IIII)V

    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    return-void
.end method

.method public setZoomScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setZoomScale(FFF)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setZoomable(Z)V

    return-void
.end method

.method public startActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->startActionMode()V

    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->stopActionMode()V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->update()V

    return-void
.end method

.method public updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V

    return-void
.end method

.method public updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->mViewImpl:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V

    return-void
.end method
