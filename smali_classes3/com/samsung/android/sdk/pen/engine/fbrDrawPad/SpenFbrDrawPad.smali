.class public Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;,
        Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;,
        Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;,
        Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;
    }
.end annotation


# static fields
.field public static DefaultMode:I = 0x0

.field public static EwpMode:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenFBRDrawPad"

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFbrPixelCopyListenerForRenderQueue:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

.field private mHolderCallback:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

.field private mIsChromeOS:Z

.field private mNativeDrawPad:J

.field private mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

.field private mRotation:I

.field public mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

.field private mView:Landroid/view/SurfaceView;

.field private mVisibleViewRect:Landroid/graphics/Rect;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZI)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mFbrPixelCopyListenerForRenderQueue:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mIsChromeOS:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->construct(Landroid/content/Context;Landroid/view/View;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mFbrPixelCopyListenerForRenderQueue:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mIsChromeOS:Z

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->construct(Landroid/content/Context;Landroid/view/View;ZI)V

    return-void
.end method

.method private static native Native_construct(JLandroid/content/Context;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;I)Z
.end method

.method private static native Native_doFrame(JJ)V
.end method

.method public static native Native_finalize(J)V
.end method

.method private static native Native_init()J
.end method

.method private static native Native_isSupported()Z
.end method

.method private static native Native_setBackgroundBitmap(JLandroid/graphics/Bitmap;Z)V
.end method

.method private static native Native_setBackgroungColor(JI)V
.end method

.method private static native Native_setDexMode(JZ)V
.end method

.method private static native Native_setHWRefreshRate(JF)V
.end method

.method private static native Native_setHWRotation(JI)V
.end method

.method private static native Native_setScreenOrientation(JIIIFF)V
.end method

.method private static native Native_setTouchUpMode(JI)I
.end method

.method private static native Native_setVisibleScreenRect(JIIII)V
.end method

.method private static native Native_setVisibleViewRect(JIIII)V
.end method

.method private static native Native_surfaceChanged(JLandroid/view/Surface;II)Z
.end method

.method private static native Native_surfaceCreated(JLandroid/view/Surface;)Z
.end method

.method private static native Native_surfaceDestroyed(J)V
.end method

.method public static synthetic access$000(JLandroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setBackgroundBitmap(JLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->setTrustedOverlay()V

    return-void
.end method

.method public static synthetic access$1100(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_surfaceDestroyed(J)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static synthetic access$1300()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getDisplayMetrics()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mRotation:I

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static synthetic access$700(JIIIFF)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setScreenOrientation(JIIIFF)V

    return-void
.end method

.method public static synthetic access$800(JLandroid/view/Surface;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_surfaceChanged(JLandroid/view/Surface;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(JLandroid/view/Surface;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_surfaceCreated(JLandroid/view/Surface;)Z

    move-result p0

    return p0
.end method

.method private construct(Landroid/content/Context;Landroid/view/View;ZI)V
    .locals 7

    const-string v0, "SpenFBRDrawPad"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mIsChromeOS:Z

    instance-of p3, p2, Landroid/view/SurfaceView;

    if-eqz p3, :cond_0

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_init()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    invoke-static {p2, p3, p1, p0, p4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_construct(JLandroid/content/Context;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;I)Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getDisplayMetrics()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mRotation:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v6, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setScreenOrientation(JIIIFF)V

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "PixelCopier"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->TOUCHUP_MODE_CAPTURE_VIEW:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->setTouchUpMode(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;)V

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->isDesktopMode()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setDexMode(JZ)V

    return-void
.end method

.method private getDisplayMetrics()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "SpenFBRDrawPad"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Fail to get window manager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mRotation:I

    goto :goto_1

    :cond_1
    const-string v0, "Fail to get display"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private isDesktopMode()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/spen/libwrapper/DesktopModeManagerWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/DesktopModeManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/DesktopModeManagerWrapper;->isDesktopMode()Z

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupported()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_isSupported()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported by device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenFBRDrawPad"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isUIThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onRequestCapture(Landroid/graphics/Rect;ZZ)Z
    .locals 2

    const-string v0, "SpenFBRDrawPad"

    const-string v1, "onRequestCapture Rect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->TOUCHUP_MODE_CAPTURE_VIEW:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->takeBackground(Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onRequestHide()V
    .locals 2

    const-string v0, "SpenFBRDrawPad"

    const-string v1, "onRequestHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method private onRequestShow()V
    .locals 2

    const-string v0, "SpenFBRDrawPad"

    const-string v1, "onRequestShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->show()V

    return-void
.end method

.method private setTrustedOverlay()V
    .locals 9

    const-string v0, "SpenFBRDrawPad"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    const-class v2, Landroid/view/SurfaceControl$Transaction;

    const-string/jumbo v3, "setTrustedOverlay"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string/jumbo v1, "setTrustedOverlay is working"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "setTrustedOverlay is needed a permision (android.permission.ACCESS_SURFACE_FLINGER)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setVisibleRects(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setVisibleViewRect(JIIII)V

    iget-wide v6, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->right:I

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setVisibleScreenRect(JIIII)V

    return-void
.end method

.method private takeBackground(Landroid/graphics/Rect;ZZ)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$3;->$SwitchMap$com$samsung$android$sdk$pen$engine$fbrDrawPad$SpenFbrDrawPad$TakeBackgroundMode:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "SpenFBRDrawPad"

    const-string/jumbo p2, "takeBackground take background mode not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->takeBackgroundWindow(Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->takeBackgroundViewSurface(Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method private takeBackgroundViewSurface(Landroid/graphics/Rect;ZZ)Z
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeBackgroundViewSurace(), x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isForRenderQueue = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SpenFBRDrawPad"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Point;

    aget v5, v0, v2

    aget v0, v0, v3

    invoke-direct {v1, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->updateRectPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mFbrPixelCopyListenerForRenderQueue:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mIsForRenderQueue:Z

    iget-wide v5, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    iput-wide v5, v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mNativeDrawPad:J

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->isUIThread()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;

    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Landroid/graphics/Rect;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;)V

    invoke-virtual {p0, p2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    iget-object p3, v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p2, p1, p3, v1, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :goto_2
    return v3

    :cond_4
    const-string p1, "Unable to get screenshot. mView surface is unavailable"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private takeBackgroundWindow(Landroid/graphics/Rect;ZZ)Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->updateRectPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mFbrPixelCopyListenerForRenderQueue:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, v2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mIsForRenderQueue:Z

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    iput-wide v3, v2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mNativeDrawPad:J

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->isUIThread()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$2;

    invoke-direct {p2, p0, p1, v2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$2;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Landroid/graphics/Rect;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;)V

    invoke-virtual {p0, p2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    iget-object p3, v2, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$FbrPixelCopyListener;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p2, p1, p3, v2, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_4
    const-string p1, "SpenFBRDrawPad"

    const-string p2, "Unable to get screenshot. Window is unavailable"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private updateRectPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget v1, p2, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_finalize(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mHolderCallback:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    return-void
.end method

.method public doFrame(J)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_doFrame(JJ)V

    :cond_0
    return-void
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    return-wide v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->updateTouchUpMode()V

    return-void
.end method

.method public setHWRefreshRate(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setHWRefreshRate(JF)V

    return-void
.end method

.method public setHWRotation(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setHWRotation(JI)V

    return-void
.end method

.method public setTouchUpMode(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->updateTouchUpMode()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "SpenFBRDrawPad"

    const-string v1, "Show: Failed. Not attached to layout!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    instance-of v1, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setBackgroungColor(JI)V

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v3, v2}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mVisibleViewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->setVisibleRects(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public updateTouchUpMode()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->TOUCHUP_MODE_CAPTURE_VIEW:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    const-string v2, "SpenFBRDrawPad"

    if-ne v0, v1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_2

    const-string v0, "Window is unavailable."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_SURFACE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    const-string v0, "Use View Surface for capturing"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_WINDOW:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    const-string v0, "Use Window for capturing"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->TOUCHUP_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    const-string v0, "TOUCHUP_MODE_CAPTURE_VIEW is not supported, doesn\'t able to capture view"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->TOUCHUP_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    const-string v0, "TOUCHUP_MODE_CAPTURE_VIEW is not supported minimum Android build version is VERSION_CODES.O, will be use TOUCHUP_MODE_NONE"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mNativeDrawPad:J

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->getId()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->Native_setTouchUpMode(JI)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;->getMode(I)Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    if-eq v0, v1, :cond_7

    const-string v0, "Requested and received touch up mode is mismatch!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;->TAKE_BACKGROUND_MODE_NONE:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mPendingTouchUpMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTouchUpMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mCurrentMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TouchUpMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mTakeBackgroundMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->mTakeBackgroundMode:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$TakeBackgroundMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method
