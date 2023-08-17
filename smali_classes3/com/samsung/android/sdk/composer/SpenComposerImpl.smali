.class public Lcom/samsung/android/sdk/composer/SpenComposerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAW_LOOP_TYPE_HWUI:I = 0x0

.field public static final DRAW_LOOP_TYPE_TEXTURE_VIEW:I = 0x1

.field private static final EDGE_ANIMATION_STATE_IDLE:I = 0x0

.field private static final EDGE_ANIMATION_STATE_PLAYING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenComposerImpl"


# instance fields
.field private mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

.field private mAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

.field private mAllowStrokeRemoverTouchRect:Landroid/graphics/Rect;

.field private mAllowTouchRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

.field private mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

.field private mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

.field private mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private mDocInited:Z

.field private mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

.field private mEasyWritingPadManager:Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;

.field private mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

.field private mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

.field private mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

.field private mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

.field private mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

.field private mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

.field private mIsDisAllowTouch:Z

.field private mIsFbrSupportedFeature:Z

.field private mIsHWUIDrawLoop:Z

.field private mIsOnLayout:Z

.field private mIsRequestTouchCancel:Z

.field private mIsShiftPressed:Z

.field private mIsTouchDown:Z

.field private mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

.field private mMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

.field private mNativeHandle:J

.field private mNoteLaserManager:Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

.field private mNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

.field private mNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

.field private mNotePdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

.field private mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

.field private mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

.field private mPrevEdgeAnimationState:I

.field private mSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

.field private mSpenConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mSpenDeltaZoom:Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

.field private mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

.field private mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

.field private mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

.field private mStrokeRemoverTouchMargin:Landroid/graphics/Rect;

.field private mTextureView:Landroid/view/TextureView;

.field private mTouchMargin:Landroid/graphics/Rect;

.field private mTwinView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

.field private mWritingOptionPatternDetector:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

.field private mWritingOptionView:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsOnLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsRequestTouchCancel:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsShiftPressed:Z

    iput v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTouchMargin:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowStrokeRemoverTouchRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mStrokeRemoverTouchMargin:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsDisAllowTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsTouchDown:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDeltaZoom:Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEasyWritingPadManager:Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteLaserManager:Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionPatternDetector:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionView:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsFbrSupportedFeature:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mPrevEdgeAnimationState:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsHWUIDrawLoop:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTwinView:Landroid/view/View;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocInited:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->init(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method

.method private static native Native_cancelSearch(J)V
.end method

.method private static native Native_captureCurrentView(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_clearSearch(J)V
.end method

.method private static native Native_endLazyViewUpdate(J)V
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getAlignmentView(J)J
.end method

.method private static native Native_getConvertToTextView(J)J
.end method

.method private static native Native_getCursorIndexInObjectText(JIIZI)[I
.end method

.method private static native Native_getDeltaZoom(J)J
.end method

.method private static native Native_getGestureController(J)J
.end method

.method private static native Native_getHwrBeautifier(J)J
.end method

.method private static native Native_getLaserView(J)J
.end method

.method private static native Native_getMathManager(J)J
.end method

.method private static native Native_getNodeList(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end method

.method private static native Native_getNoteObjectInserter(J)J
.end method

.method private static native Native_getNotePageLayouter(J)J
.end method

.method private static native Native_getNoteWritingView(J)J
.end method

.method private static native Native_getNoteZoomScroller(J)J
.end method

.method private static native Native_getObjectByNativeID(JI)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private static native Native_getPdfManager(J)J
.end method

.method private static native Native_getSTTView(J)J
.end method

.method private static native Native_getTextManager(J)J
.end method

.method private static native Native_goToPage(JI)V
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/composer/SpenComposerImpl;JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;I)J
.end method

.method private static native Native_isEasyWritingPadEnabled(J)Z
.end method

.method private static native Native_isMathEnabled(J)Z
.end method

.method private static native Native_isNodeInfoFocused(JI)Z
.end method

.method private static native Native_onConfigurationChanged(J)V
.end method

.method private static native Native_onHover(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onKeyEvent(JIIJJIII)Z
.end method

.method private static native Native_onLayout(JZIIII)V
.end method

.method private static native Native_onMouseWheel(JFFFF)Z
.end method

.method private static native Native_onNodeInfoClick(JII)V
.end method

.method private static native Native_onPause(J)V
.end method

.method private static native Native_onResume(J)V
.end method

.method private static native Native_onScaleByScreenSize(JZIIII)V
.end method

.method private static native Native_onTouch(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onTrimMemory(J)V
.end method

.method private static native Native_pauseSearchText(J)Z
.end method

.method private static native Native_requestAlignmentContent(JI)V
.end method

.method private static native Native_requestKeepPageFitToScreenWhenPageFit(J)V
.end method

.method private static native Native_requestResetZoomScaleToDefault(J)V
.end method

.method private static native Native_resumeSearchText(JLjava/lang/String;Z)Z
.end method

.method private static native Native_searchFocusNext(J)I
.end method

.method private static native Native_searchFocusPrev(J)I
.end method

.method private static native Native_searchText(JLjava/lang/String;Z)I
.end method

.method private static native Native_setActionLinkEnabled(JZ)V
.end method

.method private static native Native_setAutoScrollEnabled(JZ)V
.end method

.method private static native Native_setContextMenu(JJ)V
.end method

.method private static native Native_setControlObjectManager(JJ)V
.end method

.method private static native Native_setDocument(JLcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
.end method

.method private static native Native_setEasyWritingPadEnable(JZZ)V
.end method

.method private static native Native_setEdgeAnimationState(JI)V
.end method

.method private static native Native_setFbrDrawPad(JJ)V
.end method

.method private static native Native_setSearchFocus(JI)Z
.end method

.method private static native Native_setTextOnlyEnabled(JZ)V
.end method

.method private static native Native_setVoiceSyncPlayAutoScroll(JZ)V
.end method

.method private static native Native_setVoiceSyncPlayEnabled(JZ)V
.end method

.method private static native Native_setWNoteHelper(JJ)V
.end method

.method private static native Native_setWritingGuideLineEnabled(JZ)V
.end method

.method private static native Native_smoothScrollToFitPage(J)V
.end method

.method private static native Native_startLazyViewUpdate(J)V
.end method

.method private static native Native_stopGestureAnimation(J)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getOwnerPage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(JIIZI)[I
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getCursorIndexInObjectText(JIIZI)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    return-object p0
.end method

.method public static synthetic access$1200(JI)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_isNodeInfoFocused(JI)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionView:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    return-object p0
.end method

.method public static synthetic access$1302(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionView:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    return-wide v0
.end method

.method public static synthetic access$600(J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getNodeList(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDeltaZoom:Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    return-object p0
.end method

.method public static synthetic access$800(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onNodeInfoClick(JII)V

    return-void
.end method

.method public static synthetic access$900(JI)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getObjectByNativeID(JI)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p0

    return-object p0
.end method

.method private finalizeFbrDrawPad()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setFbrDrawPad(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    :cond_2
    return-void
.end method

.method private getOwnerPage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/view/View;II)V
    .locals 9

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->registerResourceView(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsHWUIDrawLoop:Z

    if-eqz p4, :cond_1

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    goto :goto_1

    :cond_1
    new-instance p4, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-direct {p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p4, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, p4, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p4, Landroid/view/TextureView;

    invoke-direct {p4, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    new-instance p4, Landroid/view/View;

    invoke-direct {p4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTwinView:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p4, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast v2, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-virtual {p4, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p4}, Landroid/view/TextureView;->isAvailable()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast p4, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {p4, v2, v3, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    :goto_1
    new-instance p2, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance p2, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    new-instance p2, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->getMsgQueueHandle()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {p4}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->getRendererType()I

    move-result v8

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p1, p4}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    const/16 p4, 0x4bb

    invoke-virtual {p2, p4}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setPenIconStyle(I)V

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->getHandle()J

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    move-object v2, p0

    move v8, p3

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_init(Lcom/samsung/android/sdk/composer/SpenComposerImpl;JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    new-instance p4, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getDeltaZoom(J)J

    move-result-wide p2

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p4, p2, p3, v2}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;-><init>(JLandroid/view/View;)V

    iput-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDeltaZoom:Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    new-instance p2, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getNoteZoomScroller(J)J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    new-instance p2, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getNoteWritingView(J)J

    move-result-wide v5

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v8, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;-><init>(Landroid/content/Context;Landroid/view/View;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    new-instance p3, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;-><init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setTextListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    new-instance p2, Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEasyWritingPadManager:Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getConvertToTextView(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->setNativeHandle(J)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getAlignmentView(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setNativeHandle(J)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getSTTView(J)J

    move-result-wide v2

    invoke-virtual {p2, p3, v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setNativeHandle(Landroid/content/Context;J)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getHwrBeautifier(J)J

    move-result-wide v2

    invoke-virtual {p2, p3, v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;->setNativeHandle(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->isMathEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getMathManager(J)J

    move-result-wide v2

    invoke-virtual {p2, p3, v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->setNativeHandle(Landroid/content/Context;J)V

    :cond_3
    new-instance p2, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getPdfManager(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->setNativeHandle(J)V

    new-instance p2, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {p2}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getNoteObjectInserter(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->setNativeHandle(J)V

    new-instance p2, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-direct {p2}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getNotePageLayouter(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->setNativeHandle(J)V

    new-instance p2, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p3}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->getNativeContextMenu()J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setContextMenu(JJ)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->setListerManager(Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;)V

    new-instance p2, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p3}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getTextManager(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->setNativeHandle(J)V

    new-instance p2, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

    invoke-direct {p2}, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteLaserManager:Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getLaserView(J)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->setNativeHandle(J)V

    new-instance p2, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->getNativeHandle()J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setControlObjectManager(JJ)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    new-instance p3, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;-><init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setControlActionListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;)V

    new-instance p2, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p3}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    new-instance p2, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    new-instance p4, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;

    invoke-direct {p4, p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;-><init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)V

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    iget-wide p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getGestureController(J)J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

    new-instance p3, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;-><init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Landroid/content/Context;)V

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionPatternDetector:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setFrontBufferRenderingEnabled(Z)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setPredictionEnabled(Z)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setFrontBufferRenderingEnabledInEWP(Z)Z

    new-instance p1, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    iget-wide p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getNativeHandle()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setWNoteHelper(JJ)V

    return-void
.end method

.method private isInputMethodShown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->isInputMethodShown(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onActionLinkClicked(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionLinkClicked text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onActionLinkClicked(Ljava/lang/String;I)V

    return-void
.end method

.method private onAddFloatingImageButton(Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onSetHoverIcon(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->onAddFloatingImageButton(Landroid/graphics/RectF;Ljava/lang/String;I)V

    return-void
.end method

.method private onAddFloatingTextView(Landroid/graphics/RectF;Ljava/lang/String;FI)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onSetHoverIcon(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->onAddFloatingTextView(Landroid/graphics/RectF;Ljava/lang/String;FZI)V

    return-void
.end method

.method private onChangeGuideVisible(IZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEasyWritingPadManager:Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;->onChangeGuideVisible(IZI)V

    return-void
.end method

.method private onComposerClicked()V
    .locals 2

    const-string v0, "SpenComposerImpl"

    const-string v1, "onComposerClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onComposerClicked(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onEditModeChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditModeChanged mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onEditModeChanged(I)V

    return-void
.end method

.method private onFlingGesture(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlingGesture isStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->acquire()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->release()V

    :goto_0
    return-void
.end method

.method private onHoverHyperText(Landroid/graphics/RectF;Ljava/lang/String;F)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->onAddFloatingTextView(Landroid/graphics/RectF;Ljava/lang/String;FZI)V

    return-void
.end method

.method private onInitLayoutFinished()V
    .locals 2

    const-string v0, "SpenComposerImpl"

    const-string v1, "onInitLayoutFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onInitLayoutFinished()V

    return-void
.end method

.method private onLastPageChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLastPageChanged totalHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onLastPageChanged(I)V

    return-void
.end method

.method private onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private onPageLayoutChanged(IIZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageLayoutChanged pageLayoutColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageLayoutRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageLayoutFitScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageLayoutVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onPageLayoutChanged(IIZZ)V

    return-void
.end method

.method private onPullGestureAnimationUpdated(FFFZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPullGestureAnimationUpdated, animatedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pan("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), isReleased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onPullGestureAnimationUpdated(FFFZ)V

    return-void
.end method

.method private onSearchTextFinished(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchTextFinished totalCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onSearchTextFinished(I)V

    return-void
.end method

.method private onSearchingText(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchingText totalCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onSearchingText(ILcom/samsung/android/sdk/composer/search/SearchData;)V

    return-void
.end method

.method private onSetFrontBufferRenderingEnable(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsOnLayout:Z

    const-string v1, "SpenComposerImpl"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetFrontBufferRenderingEnable enable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setFrontBufferRenderingEnabled(Z)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setFrontBufferRenderingEnabledInEWP(Z)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetFrontBufferRenderingEnable post enable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl$5;-><init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private onSetHoverIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(I)V

    :cond_0
    return-void
.end method

.method private onShowAlertDialog(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowAlertDialog id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onShowAlertDialog(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method private onShowEdgeEffect(ZZZZFF)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->showEdgeEffect(ZZZZFF)V

    :cond_0
    return-void
.end method

.method private onStrokeShapeConverted()V
    .locals 2

    const-string v0, "SpenComposerImpl"

    const-string v1, "onStrokeShapeConverted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onStrokeShapeConverted()V

    return-void
.end method

.method private onThumbnailChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onThumbnailChanged(I)V

    return-void
.end method

.method private onVibrate(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVibrate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->performHapticFeedback(Landroid/view/View;I)V

    return-void
.end method

.method private updateAllowStrokeRemoverTouchRect()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowStrokeRemoverTouchRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mStrokeRemoverTouchMargin:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowStrokeRemoverTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method

.method private updateAllowTouchRect()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTouchMargin:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_cancelSearch(J)V

    :cond_0
    return-void
.end method

.method public captureCurrentView()Landroid/graphics/Bitmap;
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    const-string v2, "SpenComposerImpl"

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v3, v4, v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_captureCurrentView(JLandroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :catchall_1
    const-string v0, "Failed to create bitmap"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_3
    :goto_1
    const-string v0, "Not yet to create view"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public clearSearch()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_clearSearch(J)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 6

    const-string v0, "SpenComposerImpl"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsHWUIDrawLoop:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTextureView:Landroid/view/TextureView;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->finalizeFbrDrawPad()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setWNoteHelper(JJ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setControlObjectManager(JJ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setControlActionListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->close()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHoverPointerIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->close()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_finalize(J)V

    iput-wide v4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDeltaZoom:Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteLaserManager:Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionPatternDetector:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->unregisterResourceView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public endLazyViewUpdate()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_endLazyViewUpdate(J)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAlignmentManager()Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    return-object v0
.end method

.method public getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    return-object v0
.end method

.method public getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    return-object v0
.end method

.method public getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    return-object v0
.end method

.method public getHwrBeautifierManager()Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    return-object v0
.end method

.method public getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    return-object v0
.end method

.method public getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    return-object v0
.end method

.method public getNoteLaserManager()Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteLaserManager:Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

    return-object v0
.end method

.method public getNoteObjectInserter()Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    return-object v0
.end method

.method public getNotePageLayouter()Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    return-object v0
.end method

.method public getNotePdfManager()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePdfManager:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    return-object v0
.end method

.method public getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    return-object v0
.end method

.method public getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    return-object v0
.end method

.method public getSTTManager()Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    return-object v0
.end method

.method public getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    return-object v0
.end method

.method public getWNoteHelper()Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    return-object v0
.end method

.method public goToPage(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_goToPage(JI)V

    :cond_0
    return-void
.end method

.method public isEasyWritingPadEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_isEasyWritingPadEnabled(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFbrDrawPadEnabledInEWP()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMathEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_isMathEnabled(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->attachToParentView(Landroid/view/ViewParent;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->copy(Lcom/samsung/android/sdk/pen/view/SpenDisplay;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onConfigurationChanged()V

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onConfigurationChanged(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    const-string v0, "SpenComposerImpl"

    const-string v1, "onCreateContextMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onViewDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->onViewDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsHWUIDrawLoop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocInited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast v1, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->setCaptureCurrentViewBmp(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocInited:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChanged gainFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAccDelegateImpl:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] onGenericMotionEvent event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onMouseWheel(JFFFF)Z

    :goto_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFloatingViewManager:Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingViewManager;->onHoverEvent(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onHover(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    :cond_3
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v4, p1

    iget-wide v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    const/4 v12, 0x0

    if-nez v1, :cond_0

    return v12

    :cond_0
    const/16 v1, 0x3b

    const/4 v13, 0x1

    if-eq v4, v1, :cond_1

    const/16 v1, 0x3c

    if-ne v4, v1, :cond_2

    :cond_1
    iput-boolean v13, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsShiftPressed:Z

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-object/from16 v2, p2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v13

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    iget-boolean v3, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsShiftPressed:Z

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x1

    :cond_4
    move v10, v1

    iget-wide v5, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    move-wide v1, v5

    move/from16 v4, p1

    move-wide v5, v7

    move-wide v7, v14

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onKeyEvent(JIIJJIII)Z

    move-result v1

    if-eqz v1, :cond_5

    return v13

    :cond_5
    return v12
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedStart()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getSelectedEnd()I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setSelection(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v4, p1

    iget-wide v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    const/4 v12, 0x0

    if-nez v1, :cond_0

    return v12

    :cond_0
    const/16 v1, 0x3b

    if-eq v4, v1, :cond_1

    const/16 v1, 0x3c

    if-ne v4, v1, :cond_2

    :cond_1
    iput-boolean v12, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsShiftPressed:Z

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-object/from16 v2, p2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    return v13

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    iget-boolean v3, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsShiftPressed:Z

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x1

    :cond_4
    move v10, v1

    iget-wide v5, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    move-wide v1, v5

    move/from16 v4, p1

    move-wide v5, v7

    move-wide v7, v14

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onKeyEvent(JIIJJIII)Z

    move-result v1

    if-eqz v1, :cond_5

    return v13

    :cond_5
    return v12
.end method

.method public onLayout(ZIIII)V
    .locals 13

    move-object v0, p0

    move v8, p1

    const-string v9, "SpenComposerImpl"

    const-string v1, "onLayout begin"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-int v10, p4, p2

    sub-int v11, p5, p3

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    iget v3, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    iget v4, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    move v2, p1

    move v5, v10

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onLayout(ZIIII)V

    iget v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    if-ne v1, v10, :cond_1

    iget v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    if-ne v1, v11, :cond_1

    return-void

    :cond_1
    iput v10, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenWidth:I

    iput v11, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mScreenHeight:I

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v1, v10, v11}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->setScreenSize(II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->updateAllowTouchRect()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->updateAllowStrokeRemoverTouchRect()V

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12, v12}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->setScreenInfo(IIII)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsOnLayout:Z

    iget-wide v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onLayout(JZIIII)V

    iput-boolean v12, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsOnLayout:Z

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->onLayout(ZIIII)V

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionPatternDetector:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

    invoke-virtual {v1, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->setViewSize(II)V

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v1, v10, v11}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setScreenSize(II)V

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onLayout(Z)V

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onLayout(Z)V

    const-string v1, "onLayout end"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onPause(J)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "SpenComposerImpl"

    const-string v1, "onResume. Restore GL resources"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->updateDebugLevel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onResume()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onResume(J)V

    :cond_0
    return-void
.end method

.method public onScaleByScreenSize(ZIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onScaleByScreenSize(JZIIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->getToolTypeAction(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[JavaGesture] Note onTouch begin. action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", toolType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", toolTypeAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SpenComposerImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionView:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    iget-object v7, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v7, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    const-string v7, "ms"

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[JavaGesture] Note onTouchEvent is consumed by PreTouchListener. elapsed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    if-eqz v2, :cond_3

    sget v5, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v2, v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    add-float/2addr v11, v10

    float-to-int v11, v11

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    xor-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsDisAllowTouch:Z

    if-eqz v5, :cond_4

    const-string v5, "[JavaGesture] disallow touch down by touch margin"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsDisAllowTouch:Z

    if-nez v5, :cond_5

    sget v5, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    if-ne v2, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowStrokeRemoverTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    add-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    xor-int/2addr v5, v8

    iput-boolean v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsDisAllowTouch:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[JavaGesture] disallow touch down by StrokeRemover touch margin "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mAllowStrokeRemoverTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsDisAllowTouch:Z

    if-eqz v5, :cond_6

    return v1

    :cond_6
    if-nez v2, :cond_8

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsRequestTouchCancel:Z

    iput-boolean v8, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsTouchDown:Z

    move v5, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    if-ge v5, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[JavaGesture] composer index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , down time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " , eventTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[JavaGesture] composer down time : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", eventTime : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    iget-boolean v9, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsTouchDown:Z

    if-nez v9, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[JavaGesture] Note ignore touch cancel because we didn\'t receive touch down first. elapsed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    iget-boolean v9, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsRequestTouchCancel:Z

    if-eqz v9, :cond_a

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v9, "[JavaGesture] touch canceled by request"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsRequestTouchCancel:Z

    :cond_a
    if-eq v0, v8, :cond_b

    move v9, v8

    goto :goto_2

    :cond_b
    move v9, v1

    :goto_2
    invoke-static {p1, v9}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->onTouchEvent(Landroid/view/MotionEvent;Z)V

    iget-object v9, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mWritingOptionPatternDetector:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v9, 0x7

    if-ne v2, v9, :cond_c

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setEasyWritingPadEnable(Z)V

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onParentTouchEvent(Landroid/view/MotionEvent;)V

    new-instance v9, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v9, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    iget-boolean v10, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsHWUIDrawLoop:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->isAnimationsFinished()Z

    move-result v10

    xor-int/2addr v10, v8

    iget v11, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mPrevEdgeAnimationState:I

    if-eq v10, v11, :cond_d

    iget-wide v11, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v11, v12, v10}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setEdgeAnimationState(JI)V

    iput v10, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mPrevEdgeAnimationState:I

    :cond_d
    iget-wide v10, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v10, v11, v9}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onTouch(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-virtual {v9, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->onTouch(Landroid/view/MotionEvent;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->onTouch(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEdgeEffectManager:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffectManager;->onTouch(Landroid/view/MotionEvent;)V

    if-eq v2, v8, :cond_e

    if-ne v2, v5, :cond_f

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsTouchDown:Z

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] Note onTouch end. ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "), elapsed="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method public onTrimMemory(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->forceClearResources()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_onTrimMemory(J)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onWindowFocusChanged(Z)V

    const-string v0, "SpenComposerImpl"

    if-eqz p1, :cond_0

    const-string p1, "onWindowFocusChanged() - hasWindowFocus : true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->registerPenSoundSolution()V

    goto :goto_0

    :cond_0
    const-string p1, "onWindowFocusChanged() - hasWindowFocus : false"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->unregisterPenSoundSolution()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseSearchText()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_pauseSearchText(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestAlignmentContent(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_requestAlignmentContent(JI)V

    :cond_0
    return-void
.end method

.method public requestCancelTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsRequestTouchCancel:Z

    return-void
.end method

.method public requestKeepPageFitToScreenWhenPageFit()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_requestKeepPageFitToScreenWhenPageFit(J)V

    :cond_0
    return-void
.end method

.method public requestResetZoomScaleToDefault()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_requestResetZoomScaleToDefault(J)V

    :cond_0
    return-void
.end method

.method public resumeSearchText(Ljava/lang/String;Z)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_resumeSearchText(JLjava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public searchFocusNext()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_searchFocusNext(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public searchFocusPrev()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_searchFocusPrev(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public searchText(Ljava/lang/String;Z)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_searchText(JLjava/lang/String;Z)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->clearSearch()V

    :cond_2
    return v1
.end method

.method public setActionLinkEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setActionLinkEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setAutoCleanUpEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mHwrBeautifier:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;->setAutoCleanUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setAutoScrollEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ComposerView] setColorTheme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isSystemDarkMode(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->getColorTheme()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->setDarkModeEnabled(ZZ)V

    :cond_1
    return-void
.end method

.method public setDarkModeEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->setSystemDarkMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->getColorTheme()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->setDarkModeEnabled(ZZ)V

    :cond_1
    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-ne p1, v0, :cond_1

    const-string p1, "SpenComposerImpl"

    const-string/jumbo v0, "setDocument : same document"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->registerPenSoundSolution()V

    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setDocument(JLcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setMinZoomScale(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsHWUIDrawLoop:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTwinView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->setTwinView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocInited:Z

    :cond_3
    return p1
.end method

.method public setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDvfsManager:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V

    return-void
.end method

.method public setEasyWritingPadEnable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mEasyWritingPadManager:Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/writing/SpenEasyWritingPadManager;->isGuideTextEnabled()Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setEasyWritingPadEnable(JZZ)V

    :cond_0
    return-void
.end method

.method public setEditMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->setEditMode(I)V

    :cond_0
    return-void
.end method

.method public setFrontBufferRenderingEnabledInEWP(Z)Z
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsFbrSupportedFeature:Z

    const-string v1, "SpenComposerImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setFrontBufferRenderingEnabledInEWP false. not supported feature running"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFrontBufferRenderingEnabledInEWP = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->getSpenLatencyConfiguration()Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isFrontBufferRenderingSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->getSpenLatencyConfiguration()Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isChromeOS()Z

    move-result v6

    sget v7, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->EwpMode:I

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;-><init>(Landroid/content/Context;ZI)V

    iput-object v4, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-wide v5, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getHandle()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setFbrDrawPad(JJ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->getSpenLatencyConfiguration()Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->updateHWInfo(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    return v2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->finalizeFbrDrawPad()V

    return v0

    :cond_5
    return v2
.end method

.method public setImageCacheQuality(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->setImageCacheQuality(I)V

    :cond_0
    return-void
.end method

.method public setIsFbrSupportedFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mIsFbrSupportedFeature:Z

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mGestureController:Lcom/samsung/android/sdk/pen/engine/SpenGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->setLongPressEnabled(Z)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenComposerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenComposerContext:Lcom/samsung/android/sdk/composer/context/SpenComposerContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->setMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setEditable(Z)V

    :cond_2
    return-void
.end method

.method public setPan(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setPan(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public setSearchFocus(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setSearchFocus(JI)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setStrokeRemoverTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mStrokeRemoverTouchMargin:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mStrokeRemoverTouchMargin:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->updateAllowStrokeRemoverTouchRect()V

    :cond_1
    return-void
.end method

.method public setTextOnlyEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->setNativeHandle(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setTextOnlyEnabled(JZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_getNotePageLayouter(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->setNativeHandle(J)V

    :cond_0
    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTouchMargin:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mTouchMargin:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->updateAllowTouchRect()V

    :cond_1
    return-void
.end method

.method public setVoiceSyncPlayAutoScroll(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setVoiceSyncPlayAutoScroll(JZ)V

    :cond_0
    return-void
.end method

.method public setVoiceSyncPlayEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setVoiceSyncPlayEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setWritingGuideLineEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_setWritingGuideLineEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public smoothScrollToFitPage()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_smoothScrollToFitPage(J)V

    :cond_0
    return-void
.end method

.method public startActionMode()V
    .locals 2

    const-string v0, "SpenComposerImpl"

    const-string/jumbo v1, "startActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->startActionMode()V

    return-void
.end method

.method public startLazyViewUpdate()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_startLazyViewUpdate(J)V

    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 2

    const-string v0, "SpenComposerImpl"

    const-string/jumbo v1, "stopActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mContextMenu:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->hideContextMenu()V

    return-void
.end method

.method public stopGestureAnimation()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->Native_stopGestureAnimation(J)V

    :cond_0
    return-void
.end method

.method public updateScreenOrientation(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->mSpenDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->updateScreenOrientation(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
