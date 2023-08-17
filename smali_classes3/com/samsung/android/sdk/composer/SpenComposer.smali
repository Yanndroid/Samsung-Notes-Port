.class public Lcom/samsung/android/sdk/composer/SpenComposer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;
    }
.end annotation


# static fields
.field public static final COMPOSER_CREATE_TYPE_ALL:I = 0x1

.field public static final COMPOSER_CREATE_TYPE_WRITING_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenComposer"

.field private static final mDrawLoopType:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

.field private mDocumentLoadingTime:J

.field private mIsDocumentLoaded:Z

.field private mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

.field private mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v1, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/composer/SpenComposer$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mDocumentLoadingTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v1, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/composer/SpenComposer$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mDocumentLoadingTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/composer/SpenComposer$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mDocumentLoadingTime:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance p3, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/composer/SpenComposer$1;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mDocumentLoadingTime:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/composer/SpenComposer;)Lcom/samsung/android/sdk/composer/SpenComposerImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/composer/SpenComposer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const-string v2, "SpenComposer"

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "getActivity - Activity found"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "getActivity - Activity NOT found"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "SpenComposer"

    const-string v3, "[EntryPerformance] init Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->initializeSelf(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p0, p2, v4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    iput-object v3, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-virtual {p2, v3}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-virtual {p2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    new-instance p2, Lcom/samsung/android/sdk/composer/SpenComposer$1;

    invoke-direct {p2, p0, p1, p1}, Lcom/samsung/android/sdk/composer/SpenComposer$1;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;Landroid/content/Context;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[EntryPerformance] init end "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->cancelSearch()V

    return-void
.end method

.method public captureCurrentView()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public clearSearch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->clearSearch()V

    return-void
.end method

.method public close()V
    .locals 3

    const-string v0, "SpenComposer"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mActivity:Landroid/app/Activity;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mLifecycleCallback:Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public endLazyViewUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->endLazyViewUpdate()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAlignmentManager()Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getAlignmentManager()Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    move-result-object v0

    return-object v0
.end method

.method public getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaY()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getDelta()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;

    move-result-object v0

    return-object v0
.end method

.method public getHwrBeautifierManager()Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getHwrBeautifierManager()Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    move-result-object v0

    return-object v0
.end method

.method public getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getListenerManager()Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    return-object v0
.end method

.method public getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    move-result-object v0

    return-object v0
.end method

.method public getNoteLaserManager()Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNoteLaserManager()Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;

    move-result-object v0

    return-object v0
.end method

.method public getNoteObjectInserter()Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNoteObjectInserter()Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    move-result-object v0

    return-object v0
.end method

.method public getNotePageLayouter()Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNotePageLayouter()Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    move-result-object v0

    return-object v0
.end method

.method public getNotePdfManager()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNotePdfManager()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    move-result-object v0

    return-object v0
.end method

.method public getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    return-object v0
.end method

.method public getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    return-object v0
.end method

.method public getPanY()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getSTTManager()Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getSTTManager()Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    move-result-object v0

    return-object v0
.end method

.method public getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    return-object v0
.end method

.method public goToPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->goToPage(I)V

    return-void
.end method

.method public isEasyWritingPadEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->isEasyWritingPadEnabled()Z

    move-result v0

    return v0
.end method

.method public isMathEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->isMathEnabled()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onAttachedToWindow()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onConfigurationChanged()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[EntryPerformance] first onDraw called after setDocument "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mDocumentLoadingTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenComposer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onGenericMotionEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 8

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onLayout(ZIIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onScaleByScreenSize(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onScaleByScreenSize(ZIIII)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onScreenStateChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseSearchText()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->pauseSearchText()Z

    move-result v0

    return v0
.end method

.method public requestAlignmentContent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->requestAlignmentContent(I)V

    return-void
.end method

.method public requestCancelTouch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->requestCancelTouch()V

    return-void
.end method

.method public requestKeepPageFitToScreenWhenPageFit()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->requestKeepPageFitToScreenWhenPageFit()V

    return-void
.end method

.method public requestResetZoomScaleToDefault()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->requestResetZoomScaleToDefault()V

    return-void
.end method

.method public resumeSearchText(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->resumeSearchText(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public searchFocusNext()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->searchFocusNext()I

    move-result v0

    return v0
.end method

.method public searchFocusPrev()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->searchFocusPrev()I

    move-result v0

    return v0
.end method

.method public searchText(Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->searchText(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setActionLinkEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setActionLinkEnabled(Z)V

    return-void
.end method

.method public setAutoCleanUpEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setAutoCleanUpEnabled(Z)V

    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setAutoScrollEnabled(Z)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setColorTheme(I)V

    return-void
.end method

.method public setDarkModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setDarkModeEnabled(Z)V

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EntryPerformance] setDocument java : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenComposer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mIsDocumentLoaded:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mDocumentLoadingTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EntryPerformance] setDocument java end "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V

    return-void
.end method

.method public setEasyWritingPadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setEasyWritingPadEnable(Z)V

    return-void
.end method

.method public setEditMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setEditMode(I)V

    return-void
.end method

.method public setFrontBufferRenderingEnabledInEWP(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setFrontBufferRenderingEnabledInEWP(Z)Z

    move-result p1

    return p1
.end method

.method public setImageCacheQuality(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setImageCacheQuality(I)V

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setLongPressEnabled(Z)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setMode(I)V

    return-void
.end method

.method public setPan(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setPan(FF)V

    return-void
.end method

.method public setSearchFocus(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setSearchFocus(I)Z

    move-result p1

    return p1
.end method

.method public setStrokeRemoverTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setStrokeRemoverTouchMargin(IIII)V

    return-void
.end method

.method public setTextOnlyEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setTextOnlyEnabled(Z)V

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setTouchMargin(IIII)V

    return-void
.end method

.method public setVoiceSyncPlayAutoScroll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setVoiceSyncPlayAutoScroll(Z)V

    return-void
.end method

.method public setVoiceSyncPlayEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setVoiceSyncPlayEnabled(Z)V

    return-void
.end method

.method public setWritingGuideLineEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setWritingGuideLineEnabled(Z)V

    return-void
.end method

.method public smoothScrollToFitPage()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->smoothScrollToFitPage()V

    return-void
.end method

.method public startActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->startActionMode()V

    return-void
.end method

.method public startLazyViewUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->startLazyViewUpdate()V

    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->stopActionMode()V

    return-void
.end method

.method public stopGestureAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer;->mComposerImpl:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->stopGestureAnimation()V

    return-void
.end method
