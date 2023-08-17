.class public Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_STROKE_LENGTH:F = 15.0f

.field private static final TAG:Ljava/lang/String; = "SpenWritingViewImpl"


# instance fields
.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mContext:Landroid/content/Context;

.field private mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

.field private mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

.field private mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mDocument:Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;

.field private mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

.field private mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

.field private mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

.field private mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

.field private mIsPredictionEnabled:Z

.field private mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

.field private mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

.field private mRemoverToastMessage:Landroid/widget/Toast;

.field private mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

.field private mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

.field private mView:Landroid/view/View;

.field private mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

.field private mViewHeight:I

.field private mViewWidth:I

.field private nativeView:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;IZ)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v11, 0x0

    iput-wide v11, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mParentLayout:Landroid/view/ViewGroup;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mIsPredictionEnabled:Z

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDocument:Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContext:Landroid/content/Context;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mRemoverToastMessage:Landroid/widget/Toast;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iput v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewWidth:I

    iput v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewHeight:I

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    const-string v13, "SpenWritingViewImpl"

    const-string v0, "construct"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x8

    if-nez v9, :cond_0

    const-string v0, " : context must not be null"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    iput-object v9, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContext:Landroid/content/Context;

    iput-object v10, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mView:Landroid/view/View;

    move-object/from16 v7, p3

    iput-object v7, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v0, v9}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {v0, v9}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    new-instance v15, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->getMsgQueueHandle()J

    move-result-wide v2

    iget-object v4, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v5, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-interface/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->getRendererType()I

    move-result v6

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V

    iput-object v15, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    const/16 v1, 0x4ba

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setPenIconStyle(I)V

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-direct {v3, v9}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v2, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iget-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->getHandle()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_init(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;JIZ)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    cmp-long v2, v0, v11

    if-nez v2, :cond_1

    const-string v0, " : nativeView must not be null"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_getViewCore(J)J

    move-result-wide v0

    invoke-direct {v2, v9, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;-><init>(Landroid/content/Context;J)V

    iput-object v2, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    iget-wide v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_getGestureController(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;-><init>(J)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, v9}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mRemoverToastMessage:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;-><init>()V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iget-wide v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setControlObjectManager(JJ)V

    new-instance v0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-object v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;-><init>(Landroid/view/View;)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-wide v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->getNativeContextMenu()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setContextMenu(JJ)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {v0, v9}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setFrontBufferRenderingEnabled(Z)Z

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setPredictionEnabled(Z)V

    const v1, 0x1ffff

    invoke-virtual {v8, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setObjectTypeFilter(I)V

    new-instance v1, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-direct {v1, v10}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;-><init>(Landroid/view/View;)V

    iput-object v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    iget-wide v2, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_getTextManager(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setNativeHandle(J)V

    iget-object v1, v8, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setEditable(Z)V

    return-void
.end method

.method private static native Native_captureContent(JLandroid/graphics/Bitmap;Landroid/graphics/Rect;I)Z
.end method

.method private static native Native_captureView(JLandroid/graphics/Bitmap;Landroid/graphics/Rect;I)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getGestureController(J)J
.end method

.method private static native Native_getRemoverSize(J)F
.end method

.method private static native Native_getRemoverType(J)I
.end method

.method private static native Native_getTextManager(J)J
.end method

.method private static native Native_getViewCore(J)J
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;JIZ)J
.end method

.method private static native Native_isHapticSoundNeeded(J)Z
.end method

.method private static native Native_onHover(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onLayout(JZIIII)V
.end method

.method private static native Native_onPause(J)V
.end method

.method private static native Native_onResume(J)V
.end method

.method private static native Native_onTouch(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onTrimMemory(J)V
.end method

.method private static native Native_pauseReplay(J)Z
.end method

.method private static native Native_resumeReplay(J)Z
.end method

.method private static native Native_setBackgroundBitmap(JJLandroid/graphics/Bitmap;III)V
.end method

.method private static native Native_setBackgroundColor(JI)V
.end method

.method private static native Native_setContentBackgroundBitmap(JJLandroid/graphics/Bitmap;IIIZ)V
.end method

.method private static native Native_setContentBackgroundColor(JI)V
.end method

.method private static native Native_setContentTransparentBackgroundImage(JJLandroid/graphics/Bitmap;II)V
.end method

.method private static native Native_setContextMenu(JJ)V
.end method

.method private static native Native_setControlObjectManager(JJ)V
.end method

.method private static native Native_setDocument(JJ)Z
.end method

.method private static native Native_setFbrDrawPad(JJ)V
.end method

.method private static native Native_setHoverScrollEnabled(JZ)V
.end method

.method private static native Native_setHoverScrollOption(JJFI)V
.end method

.method private static native Native_setIntersectSelection(JZ)V
.end method

.method private static native Native_setObjectTypeFilter(JI)V
.end method

.method private static native Native_setPredictionType(JI)V
.end method

.method private static native Native_setRemoverSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
.end method

.method private static native Native_setReplayPosition(JI)Z
.end method

.method private static native Native_setReplaySpeed(JI)Z
.end method

.method private static native Native_setSelectionType(JI)V
.end method

.method private static native Native_setStrokeToShapeEnabled(JZ)V
.end method

.method private static native Native_startReplay(J)Z
.end method

.method private static native Native_stopReplay(J)Z
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    return-object p0
.end method

.method private finalizeFbrDrawPad()V
    .locals 5

    const-string v0, "SpenWritingViewImpl"

    const-string v1, "finalizeFbrDrawPad() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setFbrDrawPad(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    :cond_2
    return-void
.end method

.method private onColorPicked(IFF)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorPicked color = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWritingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz v3, :cond_0

    invoke-static {v0, p1, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onColorPicked(IFF)V

    :cond_0
    return-void
.end method

.method private onMaxStrokeCountIsOverflowed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMaxStrokeCountIsOverflowed maxStrokeCount = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenWritingViewImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPostTouch(Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onTouchView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method private onPreTouch(Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onPreTouchView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method private onStrokeAdded(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrokeAdded color = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWritingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onAddStroke(I)V

    :cond_0
    return-void
.end method

.method private onStrokeStyleChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrokeStyleChanged color = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWritingViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onChangeStyle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureContent(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v2, v3, p2, p1, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_captureContent(JLandroid/graphics/Bitmap;Landroid/graphics/Rect;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return-object p2

    :catchall_0
    const-string p1, "SpenWritingViewImpl"

    const-string p2, "Failed to create bitmap"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, " : fail createBitmap."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public captureView(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v2, v3, p2, p1, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_captureView(JLandroid/graphics/Bitmap;Landroid/graphics/Rect;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return-object p2

    :catchall_0
    const-string p1, "SpenWritingViewImpl"

    const-string p2, "Failed to create bitmap"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, " : fail createBitmap."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public close()V
    .locals 5

    const-string v0, "TAG"

    const-string v1, "WritingViewImpl.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->removeHoveringIcon()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mRemoverToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->close()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->finalizeFbrDrawPad()V

    return-void
.end method

.method public getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    return-object v0
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getDelta()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getMaxZoomScale()F

    move-result v0

    return v0
.end method

.method public getMinZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getMinZoomScale()F

    move-result v0

    return v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenStyle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenSize()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenColor()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->isPenCurveEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getAdvancedPenSetting()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    return-object v0
.end method

.method public getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_getRemoverType(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_getRemoverSize(J)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getToolTypeAction(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getToolTypeAction(I)I

    move-result p1

    return p1
.end method

.method public getZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getZoomScale()F

    move-result v0

    return v0
.end method

.method public isNativeViewValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPredictionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mIsPredictionEnabled:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public isToolTipEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->isZoomable()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow(Landroid/view/ViewGroup;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onAttachedToWindow() nativeView="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenWritingViewImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow(Landroid/view/ViewGroup;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mParentLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_onHover(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewWidth:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewHeight:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayout("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenWritingViewImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewHeight:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->setScreenSize(II)V

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_onLayout(JZIIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_onPause(J)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_onResume(J)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "SPenSDK::WritingView onTouchEvent"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sget v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-eq v0, v2, :cond_2

    sget v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_MOVE:I

    if-eq v0, v2, :cond_2

    sget v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_UP:I

    if-eq v0, v2, :cond_2

    sget v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_CANCEL:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x6

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getToolTypeAction(I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[JavaGesture] Write onTouch begin. action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", toolType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", toolTypeAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SpenWritingViewImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onPreTouch(Landroid/view/MotionEvent;I)V

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    invoke-static {p1, v7}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->onTouchEvent(Landroid/view/MotionEvent;Z)V

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[JavaGesture] Write index : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , down time : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " , eventTime : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] Write down time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v7, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v7, v8, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_onTouch(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->onTouch(Landroid/view/MotionEvent;I)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onPostTouch(Landroid/view/MotionEvent;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] Write onTouch end. ("

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

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public onTrimMemory()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_onTrimMemory(J)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "SpenWritingViewImpl"

    const-string v1, "onWindowFocusChanged() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "onWindowFocusChanged() - hasWindowFocus : true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->registerPenSoundSolution()V

    goto :goto_0

    :cond_0
    const-string p1, "onWindowFocusChanged() - hasWindowFocus : false"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->unregisterPenSoundSolution()V

    :cond_1
    :goto_0
    const-string p1, "onWindowFocusChanged() - End"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseReplay()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_pauseReplay(J)Z

    move-result v0

    return v0
.end method

.method public resumeReplay()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_resumeReplay(J)Z

    move-result v0

    return v0
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;III)V
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->getHandle()J

    move-result-wide v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setBackgroundBitmap(JJLandroid/graphics/Bitmap;III)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setBackgroundColor(JI)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;->setColorTheme(I)V

    return-void
.end method

.method public setContentBackgroundBitmap(Landroid/graphics/Bitmap;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentBackgroundBitmap(Landroid/graphics/Bitmap;IIIZ)V

    return-void
.end method

.method public setContentBackgroundBitmap(Landroid/graphics/Bitmap;IIIZ)V
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->getHandle()J

    move-result-wide v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setContentBackgroundBitmap(JJLandroid/graphics/Bitmap;IIIZ)V

    return-void
.end method

.method public setContentBackgroundColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setContentBackgroundColor(JI)V

    return-void
.end method

.method public setContentRect(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setContentRect(FFFF)V

    return-void
.end method

.method public setContentScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setContentScale(F)V

    return-void
.end method

.method public setContentTransparentBackgroundImage(Landroid/graphics/Bitmap;II)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->getHandle()J

    move-result-wide v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setContentTransparentBackgroundImage(JJLandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenuListener:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V

    :cond_0
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mNativeContext:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->setSystemDarkMode(Z)V

    :cond_0
    return-void
.end method

.method public setDelta(Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setDelta(FF)V

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;)Z
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDocument:Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;

    const/4 v4, 0x1

    const-string v5, "SpenWritingViewImpl"

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "setDocument is same"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p1, "setDocument is closed"

    :goto_0
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->registerPenSoundSolution()V

    :cond_3
    iget-wide v6, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;->getHandle()J

    move-result-wide v2

    :cond_4
    invoke-static {v6, v7, v2, v3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setDocument(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo p1, "setDocument failed"

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDocument:Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;

    return v4
.end method

.method public setEdgeEffectEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFrontBufferRenderingEnabled(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isFrontBufferRenderingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "SpenWritingViewImpl"

    const-string/jumbo v2, "setFrontBufferRenderingEnabled() called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isChromeOS()Z

    move-result v3

    sget v4, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->DefaultMode:I

    invoke-direct {p1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;-><init>(Landroid/content/Context;ZI)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getHandle()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setFbrDrawPad(JJ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->updateHWInfo(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz p1, :cond_3

    move v1, v0

    :cond_3
    return v1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->finalizeFbrDrawPad()V

    return v0

    :cond_5
    return v1
.end method

.method public setHapticSoundEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setEnabled(Z)V

    return-void
.end method

.method public setHoldLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setHoldLongPressEnabled(Z)V

    return-void
.end method

.method public setHoverScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setHoverScrollEnabled(Z)V

    return-void
.end method

.method public setHoverScrollOption(JFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setHoverScrollOption(JFI)V

    return-void
.end method

.method public setIntersectSelection(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setIntersectSelection(JZ)V

    return-void
.end method

.method public setListenerManager(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setLongPressEnabled(Z)V

    return-void
.end method

.method public setMargin(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setMargin(FFFF)V

    return-void
.end method

.method public setMaxZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setMaxZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setMinZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setMinZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setObjectTypeFilter(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setObjectTypeFilter(JI)V

    return-void
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenWritingViewImpl"

    const-string v1, "<<=== setPenSettingInfo ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenSettingInfo name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenSettingInfo size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenSettingInfo sizeLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenSettingInfo color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDocument:Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;

    if-eqz v2, :cond_1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDocument:Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;->getHeight()I

    move-result v4

    invoke-static {v3, v1, v2, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToPxSize(Ljava/lang/String;III)F

    move-result v1

    iput v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenSettingInfo size2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "===== setPenSettingInfo ===>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-boolean v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-boolean v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setPenStyle(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onPenChanged(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_2
    return-void
.end method

.method public setPredictionEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mSpenLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getSupportPrediction()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mIsPredictionEnabled:Z

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setPredictionType(JI)V

    :cond_1
    return-void
.end method

.method public setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setRemoverSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setRemoverSize(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->onRemoverChanged(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setReplayPosition(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setReplayPosition(JI)Z

    move-result p1

    return p1
.end method

.method public setReplaySpeed(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setReplaySpeed(JI)Z

    move-result p1

    return p1
.end method

.method public setScreenOrientation(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->updateScreenOrientation(Landroid/content/Context;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setScrollable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setScrollable(Z)V

    return-void
.end method

.method public setSelectionType(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setSelectionType(JI)V

    return-void
.end method

.method public setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mTextManager:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V

    return-void
.end method

.method public setStretchContentSize(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setStretchMode(ZFF)V

    return-void
.end method

.method public setStrokeToShapeEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_setStrokeToShapeEnabled(JZ)V

    return-void
.end method

.method public setToolTipEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setToolTipEnabled(Z)V

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->setToolTypeAction(II)V

    return-void
.end method

.method public setTouchUpMode(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->setTouchUpMode(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;)V

    :cond_0
    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    return-void
.end method

.method public setZoomScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setZoomScale(FFF)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getDeltaZoom()Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->setZoomable(Z)V

    return-void
.end method

.method public startReplay()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_startReplay(J)Z

    move-result v0

    return v0
.end method

.method public stopReplay()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->nativeView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->Native_stopReplay(J)Z

    move-result v0

    return v0
.end method
