.class Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PAN_SCROLL_STEP:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "SpenPaintingViewImpl"

.field private static final ZOOM_RATIO_STEP:F = 0.05f


# instance fields
.field private final mAllowTouchRect:Landroid/graphics/Rect;

.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mContext:Landroid/content/Context;

.field private mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

.field private mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

.field private mCurEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mCurFillColorInfo:Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

.field private mCurPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mDepthBitmap:Landroid/graphics/Bitmap;

.field private mDepthDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private final mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

.field private mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

.field private mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

.field private mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

.field private final mGestureController:Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

.field private mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

.field private mIsDisAllowTouch:Z

.field private mIsFbrSupportedFeature:Z

.field private mIsPaper:Z

.field private mIsPredictionEnabled:Z

.field private mMouseWheelZoomEnabled:Z

.field private mNativeContext:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

.field private mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

.field private mPaperBitmap:Landroid/graphics/Bitmap;

.field private mPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

.field private mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

.field private mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

.field private final mStretchRatio:Landroid/graphics/PointF;

.field private mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

.field private final mTouchMargin:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;

.field private mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

.field private nativePainting:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenHeight:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsDisAllowTouch:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchMargin:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mMouseWheelZoomEnabled:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsFbrSupportedFeature:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPredictionEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPaper:Z

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mStretchRatio:Landroid/graphics/PointF;

    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurFillColorInfo:Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->constructNativePainting()V

    new-instance p2, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_getViewCore(J)J

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;-><init>(Landroid/content/Context;J)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    new-instance p2, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_getGestureController(J)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    new-instance p1, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-wide p2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->getNativeContextMenu()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setContextMenu(JJ)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setFrontBufferRenderingEnabled(Z)Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPredictionEnabled(Z)V

    return-void
.end method

.method private static native Native_cancelStroke(J)V
.end method

.method private static native Native_captureCurrentView(JLandroid/graphics/Bitmap;Z)Z
.end method

.method private static native Native_captureLayer(JLandroid/graphics/Bitmap;I)Z
.end method

.method private static native Native_capturePage(JLandroid/graphics/Bitmap;I)Z
.end method

.method private static native Native_captureRect(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;)Z
.end method

.method private static native Native_commitStroke(J)V
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getBlankColor(J)I
.end method

.method private static native Native_getGestureController(J)J
.end method

.method private static native Native_getValidRect(JIIII)Landroid/graphics/RectF;
.end method

.method private static native Native_getViewCore(J)J
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;JLcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;)J
.end method

.method private static native Native_onHover(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onLayout(JZIIII)V
.end method

.method private static native Native_onTouch(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_setBlankColor(JI)V
.end method

.method private static native Native_setColoringForegroundEnabled(JZ)V
.end method

.method private static native Native_setContextMenu(JJ)V
.end method

.method private static native Native_setFbrDrawPad(JJ)V
.end method

.method private static native Native_setFillColorInfo(JLcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V
.end method

.method private static native Native_setForceStretchView(JZII)Z
.end method

.method private static native Native_setLayerBitmap(JLandroid/graphics/Bitmap;IZ)Z
.end method

.method private static native Native_setLayerBitmap(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;IIZ)Z
.end method

.method private static native Native_setPaintingDoc(JLcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z
.end method

.method private static native Native_setPaperDepthMap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_setPredictionType(JI)V
.end method

.method private static native Native_setScreenOrientation(JI)V
.end method

.method private static native Native_setSketchImage(JLandroid/graphics/Bitmap;II)Z
.end method

.method private static native Native_update(J)V
.end method

.method private static native Native_updateRedo(J[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;I)Z
.end method

.method private static native Native_updateUndo(J[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;I)Z
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    return-object p0
.end method

.method private addFBRView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;->setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->printSettingPenInfoLog(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method

.method private applyPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->printSettingPenInfoLog(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->initPenSoundInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;->onChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method

.method private constructNativePainting()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->getMsgQueueHandle()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->getRendererType()I

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    const/16 v1, 0x4ba

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setPenIconStyle(I)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->getHandle()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_init(Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;JLcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, " : nativePainting must not be null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createFbrDrawPad()V
    .locals 5

    const-string v0, "SpenPaintingViewImpl"

    const-string v1, "createFbrDrawPad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isChromeOS()Z

    move-result v3

    sget v4, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->DefaultMode:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;-><init>(Landroid/content/Context;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getHandle()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setFbrDrawPad(JJ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->updateHWInfo(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    return-void
.end method

.method private finalizeFbrDrawPad()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setFbrDrawPad(JJ)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    return-void
.end method

.method private initPenSoundInfo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenParticleDensity()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenSize()F

    move-result v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setPenStyle(Ljava/lang/String;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private isTouchableArea(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private onColorPickerChanged(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorPickerChanged color"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaintingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {v0, p3, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;->onColorPicked(IFF)V

    return-void
.end method

.method private onShowEdgeEffect(ZZZZFF)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->showEdgeEffect(ZZZZFF)V

    return-void
.end method

.method private printSettingPenInfoLog(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 4

    const-string v0, "SpenPaintingViewImpl"

    const-string v1, "[SpenPaintingViewImpl] ================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo sizeLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo secondaryColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo isCurvable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo isEraserEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo particleDensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo particleSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpenPaintingViewImpl] SettingPenInfo isFixedWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAllowTouchRect()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenHeight:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchMargin:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelStroke()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_cancelStroke(J)V

    return-void
.end method

.method public captureCurrentView(Z)Landroid/graphics/Bitmap;
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "SpenPaintingViewImpl"

    if-nez v0, :cond_0

    const-string p1, "Native canvas is null!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenWidth:I

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenHeight:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v3, v4, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_captureCurrentView(JLandroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "Failed to create bitmap"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string v0, " : fail createBitmap."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const-string p1, "Not yet to create view"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    const-string v0, " : ScreenWidth or ScreenHeight is zero."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-object v1
.end method

.method public captureLayer(FI)Landroid/graphics/Bitmap;
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v4, v5, v3, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_captureLayer(JLandroid/graphics/Bitmap;I)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float v0, v2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    invoke-static {v3, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, "SpenPaintingViewImpl"

    const-string p2, "Failed to create bitmap"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, " : fail createBitmap."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public capturePage(FI)Landroid/graphics/Bitmap;
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v4, v5, v3, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_capturePage(JLandroid/graphics/Bitmap;I)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float v0, v2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    invoke-static {v3, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, "SpenPaintingViewImpl"

    const-string p2, "Failed to create bitmap"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, " : fail createBitmap."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v2, v3, v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_captureRect(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return-object v0

    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create bitmap w = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPaintingViewImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string v0, " : fail createBitmap."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public close()V
    .locals 6

    const-string v0, "SpenPaintingViewImpl"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->finalizeFbrDrawPad()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_finalize(J)V

    iput-wide v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->removeHoveringIcon()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->close()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDepthBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDepthDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public commitStroke()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_commitStroke(J)V

    return-void
.end method

.method public getBlankColor()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_getBlankColor(J)I

    move-result v0

    return v0
.end method

.method public getCanvasHeight()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getCanvasWidth()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getWidth()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getDelta()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getEraserSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    return-object v0
.end method

.method public getFillColorInfo()Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurFillColorInfo:Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    return-object v0
.end method

.method public getGestureController()Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getMaxZoomScale()F

    move-result v0

    return v0
.end method

.method public getMinZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getMinZoomScale()F

    move-result v0

    return v0
.end method

.method public declared-synchronized getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    return-object v0
.end method

.method public getToolTypeAction(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getToolTypeAction(I)I

    move-result p1

    return p1
.end method

.method public getValidRect(IIII)Landroid/graphics/RectF;
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_getValidRect(JIIII)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getZoomScale()F

    move-result v0

    return v0
.end method

.method public isFbrDrawPadEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaperEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPaper:Z

    return v0
.end method

.method public isPredictionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPredictionEnabled:Z

    return v0
.end method

.method public isToolTipEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->isZoomable()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->attachToParentView(Landroid/view/ViewParent;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->addFBRView()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const-string v3, "SpenPaintingViewImpl"

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SCROLL:Zoom Out = "

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SCROLL:Zoom In = "

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mMouseWheelZoomEnabled:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getZoomScale()F

    move-result v2

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v2, v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setZoomScale(FFF)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getPan()Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    mul-float/2addr p1, v5

    sub-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setPan(Landroid/graphics/PointF;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_onHover(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenHeight:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->updateAllowTouchRect()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    iget v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenWidth:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mScreenHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->setScreenInfo(IIII)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->setScreenSize(II)V

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_onLayout(JZIIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sget v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-eq v0, v2, :cond_2

    sget v3, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-eq v0, v3, :cond_2

    sget v3, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_UP:I

    if-eq v0, v3, :cond_2

    sget v3, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_CANCEL:I

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x6

    :goto_1
    const/4 v4, 0x1

    const-string v5, "SpenPaintingViewImpl"

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v6

    xor-int/2addr v6, v4

    iput-boolean v6, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsDisAllowTouch:Z

    if-eqz v6, :cond_4

    const-string v6, "[JavaGesture] disallow touch down"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsDisAllowTouch:Z

    if-eqz v6, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getToolTypeAction(I)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[JavaGesture] Paint onTouch begin. action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", toolType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", toolTypeAction="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->onTouchEvent(Landroid/view/MotionEvent;Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->invalidate(IIII)V

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "P001"

    invoke-static {v2, v9, v3}, Lcom/samsung/android/sdk/pen/util/SpenLogInjector;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] Paint Performance onPreTouchViewTimeInMillis has consumed action="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", elapsed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    if-nez v0, :cond_9

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v1, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] Paint index : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , down time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , eventTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] Paint down time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_onTouch(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->onTouch(Landroid/view/MotionEvent;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] Paint onTouch end. ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "), elapsed="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_b
    :goto_3
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenPaintingViewImpl"

    if-eqz p1, :cond_1

    const-string p1, "onWindowFocusChanged() - hasWindowFocus : true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->registerPenSoundSolution()V

    goto :goto_0

    :cond_1
    const-string p1, "onWindowFocusChanged() - hasWindowFocus : false"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->unregisterPenSoundSolution()V

    :goto_0
    return-void
.end method

.method public setBlankColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setBlankColor(JI)V

    return-void
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    return-void
.end method

.method public setColoringForegroundEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setColoringForegroundEnabled(JZ)V

    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl$1;-><init>(Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V

    return-void
.end method

.method public setDelta(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setDelta(FF)V

    return-void
.end method

.method public setDoubleTapZoomEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setDoubleTapZoomEnabled(Z)V

    return-void
.end method

.method public setEraserChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mEraserChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenEraserChangeListener;

    return-void
.end method

.method public setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEraserSettingInfo size2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaintingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurEraserInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->applyEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFillColorInfo(Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurFillColorInfo:Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurFillColorInfo:Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setFillColorInfo(JLcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setForceStretchView(ZII)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mStretchRatio:Landroid/graphics/PointF;

    int-to-float v3, p2

    div-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->getCanvasHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mStretchRatio:Landroid/graphics/PointF;

    int-to-float v2, p3

    div-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setForceStretchView(JZII)Z

    move-result p1

    return p1
.end method

.method public setFrontBufferRenderingEnabled(Z)Z
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsFbrSupportedFeature:Z

    const-string v1, "SpenPaintingViewImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setFrontBufferRenderingEnabled false. not supported feature running"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isChromeOS()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "setFrontBufferRenderingEnabled false. Temporarily disabled for Chrome OS"

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    return v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFrontBufferRenderingEnabled = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", (mFbrDrawPad == null) = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFBRSupported = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isFrontBufferRenderingSupported()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->finalizeFbrDrawPad()V

    return v4

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isFrontBufferRenderingSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->createFbrDrawPad()V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz p1, :cond_6

    move v2, v4

    :cond_6
    return v2
.end method

.method public setHoverScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setHoverScrollEnabled(Z)V

    return-void
.end method

.method public setHoverScrollOption(JFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setHoverScrollOption(JFI)V

    return-void
.end method

.method public setIsFbrSupportedFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsFbrSupportedFeature:Z

    return-void
.end method

.method public setLayerBitmap(Landroid/graphics/Bitmap;IZ)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setLayerBitmap(JLandroid/graphics/Bitmap;IZ)Z

    move-result p1

    return p1
.end method

.method public setLayerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IIZ)Z
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setLayerBitmap(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;IIZ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setMargin(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setMargin(FFFF)V

    return-void
.end method

.method public setMaxZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setMaxZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setMinZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setMinZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setMouseWheelZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mMouseWheelZoomEnabled:Z

    return-void
.end method

.method public declared-synchronized setPaintingDoc(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SpenPaintingViewImpl"

    const-string p2, "Native canvas is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "SpenPaintingViewImpl"

    const-string/jumbo v2, "setPaintingDoc is closed"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v2, v3, v0, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setPaintingDoc(JLcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string p1, "SpenPaintingViewImpl"

    const-string/jumbo p2, "setPaintingDoc is same"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/spen/R$drawable;->paper_kent_depthmap:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDepthDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDepthBitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v4, v5, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setPaperDepthMap(JLandroid/graphics/Bitmap;)Z

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-static {v4, v5, p1, p2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setPaintingDoc(JLcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "SpenPaintingViewImpl"

    const-string/jumbo p2, "setPaintingDoc failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_3
    :try_start_4
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPaper:Z

    if-eqz p1, :cond_4

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$drawable;->paper_kent:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setColoringForegroundEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPaperBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x3

    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setSketchImage(Landroid/graphics/Bitmap;II)Z

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->registerPenSoundSolution()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenStyle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->initPenSoundInfo(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setPaperEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPaper:Z

    return-void
.end method

.method public setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPenChangeListener:Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenSettingInfo size2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaintingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mCurPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->applyPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mPreTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method

.method public setPredictionEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getSupportPrediction()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mIsPredictionEnabled:Z

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setPredictionType(JI)V

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->updateScreenOrientation(Landroid/content/Context;)V

    const-string v0, "SpenPaintingViewImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged, orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setScreenOrientation(JI)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSketchImage(Landroid/graphics/Bitmap;II)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_setSketchImage(JLandroid/graphics/Bitmap;II)Z

    move-result p1

    return p1
.end method

.method public setToolTipEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setToolTipEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPaintingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setToolTipEnabled(Z)V

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->setToolTypeAction(II)V

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchListener:Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchMargin:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mTouchMargin:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->updateAllowTouchRect()V

    :cond_0
    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    return-void
.end method

.method public setZoomScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setZoomScale(FFF)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setZoomable(Z)V

    return-void
.end method

.method public startActionMode()V
    .locals 2

    const-string v0, "SpenPaintingViewImpl"

    const-string/jumbo v1, "startActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->startActionMode()V

    return-void
.end method

.method public stopActionMode()V
    .locals 2

    const-string v0, "SpenPaintingViewImpl"

    const-string/jumbo v1, "stopActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu()V

    return-void
.end method

.method public update()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_update(J)V

    return-void
.end method

.method public updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_updateRedo(J[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;I)Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenPaintingViewImpl"

    const-string v0, "The parameter \'userDataList\' cannot be null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->nativePainting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->Native_updateUndo(J[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;I)Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenPaintingViewImpl"

    const-string v0, "The parameter \'userDataList\' cannot be null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
