.class public Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNoteWritingViewMgr"


# instance fields
.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

.field private mContext:Landroid/content/Context;

.field private final mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

.field private mIsFbrSupportedFeature:Z

.field private mIsPredictionEnabled:Z

.field private final mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

.field private final mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

.field private mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

.field private mRemoverListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;

.field private mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

.field private mView:Landroid/view/View;

.field private final mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

.field private final nativeNoteWritingView:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/engine/SpenPenSound;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mIsFbrSupportedFeature:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRemoverListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mIsPredictionEnabled:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mView:Landroid/view/View;

    iput-wide p3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    iput-object p5, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object p6, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    invoke-static {p0, p3, p4}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_init(Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;J)V

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    iget-object p5, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_getViewCore(J)J

    move-result-wide p3

    invoke-direct {p2, p5, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;-><init>(Landroid/content/Context;J)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    return-void
.end method

.method private static native Native_getViewCore(J)J
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;J)V
.end method

.method private static native Native_isHapticSoundNeeded(J)Z
.end method

.method private static native Native_pauseVectorCacheUpdate(J)V
.end method

.method private static native Native_requestReadyForSave(J)V
.end method

.method private static native Native_resumeVectorCacheUpdate(J)V
.end method

.method private static native Native_setChangeStyleSetting(JLcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;II)V
.end method

.method private static native Native_setFbrDrawPad(JJ)V
.end method

.method private static native Native_setIntersectSelection(JZ)V
.end method

.method private static native Native_setMinZoomScale(JF)V
.end method

.method private static native Native_setPredictionType(JI)V
.end method

.method private static native Native_setRemoverSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
.end method

.method private static native Native_setSelectionObjectType(JI)V
.end method

.method private static native Native_setSelectionType(JI)V
.end method

.method private static native Native_setVisibleScreenRect(JIIII)V
.end method

.method private static native Native_setVisibleViewRect(JIIII)V
.end method

.method private finalizeFbrDrawPad()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setFbrDrawPad(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    :cond_2
    return-void
.end method

.method private onColorPicked(IFF)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorPicked color = "

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

    const-string v1, "SpenNoteWritingViewMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    if-eqz v3, :cond_0

    invoke-static {v0, p1, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;->onColorPicked(IFF)V

    :cond_0
    return-void
.end method

.method private onHighlighterRemoverTouchesNormalStroke()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRemoverListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;->onHighlighterRemoverTouchesNormalStroke()V

    :cond_0
    return-void
.end method

.method private onMaxStrokeCountIsOverflowed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMaxStrokeCountIsOverflowed maxStrokeCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteWritingViewMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_unable_to_erase_heavy_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;->show(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method private onStrokeAdded(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrokeAdded color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteWritingViewMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;->onAddStroke(I)V

    :cond_0
    return-void
.end method

.method private onStrokeStyleChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrokeStyleChanged color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteWritingViewMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;->onChangeStyle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->finalizeFbrDrawPad()V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenSize()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenColor()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->isPenCurveEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getAdvancedPenSetting()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    return-object v0
.end method

.method public getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    return-object v0
.end method

.method public getSpenLatencyConfiguration()Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    return-object v0
.end method

.method public getToolTypeAction(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getToolTypeAction(I)I

    move-result p1

    return p1
.end method

.method public isFbrDrawPadEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFbrDrawPadSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isFrontBufferRenderingSupported()Z

    move-result v0

    return v0
.end method

.method public isPredictionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mIsPredictionEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    iget-object v2, v0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mView:Landroid/view/View;

    iget-object v3, v0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getVisibleRects(Landroid/view/View;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Landroid/util/Pair;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v4

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v4

    check-cast v7, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    check-cast v4, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setVisibleViewRect(JIIII)V

    iget-wide v9, v0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    move-object v2, v1

    check-cast v2, Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->top:I

    move-object v2, v1

    check-cast v2, Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->right:I

    check-cast v1, Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setVisibleScreenRect(JIIII)V

    return-void
.end method

.method public pauseVectorCacheUpdate()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_pauseVectorCacheUpdate(J)V

    return-void
.end method

.method public requestReadyForSave()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_requestReadyForSave(J)V

    return-void
.end method

.method public resumeVectorCacheUpdate()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_resumeVectorCacheUpdate(J)V

    return-void
.end method

.method public setChangeStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setChangeStyleSetting(JLcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChangeStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;-><init>()V

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v0, p1, v3}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setChangeStyleSetting(JLcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mColorPickerListener:Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-ne p1, v0, :cond_0

    const-string p1, "SpenNoteWritingViewMgr"

    const-string/jumbo v0, "setDocument : same document"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 p1, 0x1

    return p1
.end method

.method public setFrontBufferRenderingEnabled(Z)Z
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mIsFbrSupportedFeature:Z

    const-string v1, "SpenNoteWritingViewMgr"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setFrontBufferRenderingEnabled false. not supported feature running"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFrontBufferRenderingEnabled = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isFrontBufferRenderingSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isChromeOS()Z

    move-result v5

    sget v6, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->DefaultMode:I

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;-><init>(Landroid/content/Context;ZI)V

    iput-object v3, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    iget-wide v4, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getHandle()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setFbrDrawPad(JJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFrontBufferRenderingEnabled2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->updateHWInfo(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mFbrDrawPad:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    return v2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->finalizeFbrDrawPad()V

    return v0

    :cond_5
    return v2
.end method

.method public setIntersectSelection(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setIntersectSelection(JZ)V

    return-void
.end method

.method public setIsFbrSupportedFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mIsFbrSupportedFeature:Z

    return-void
.end method

.method public setMinZoomScale(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setMinZoomScale(JF)V

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "SpenNoteWritingViewMgr"

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

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v2, :cond_2

    iget-boolean v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isDpSize:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDocument:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v4

    invoke-static {v3, v1, v2, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToPxSize(Ljava/lang/String;III)F

    move-result v1

    :goto_0
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

    :cond_2
    const-string v1, "===== setPenSettingInfo ===>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->getPenSize()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setPenStyle(Ljava/lang/String;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPredictionEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mLatencyConfiguration:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getSupportPrediction()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mIsPredictionEnabled:Z

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setPredictionType(JI)V

    return-void
.end method

.method public setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRecentColorListener:Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;

    return-void
.end method

.method public setRemoverListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mRemoverListener:Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;

    return-void
.end method

.method public setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setRemoverSettingInfo(JLcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mPenSound:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->setRemoverSize(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectionObjectType(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setSelectionObjectType(JI)V

    return-void
.end method

.method public setSelectionType(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->nativeNoteWritingView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->Native_setSelectionType(JI)V

    return-void
.end method

.method public setToastActionListener(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mToastActionListener:Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->mViewCore:Lcom/samsung/android/sdk/pen/engine/SpenViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore;->setToolTypeAction(II)V

    return-void
.end method
