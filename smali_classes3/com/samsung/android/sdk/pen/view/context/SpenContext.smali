.class public Lcom/samsung/android/sdk/pen/view/context/SpenContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "SpenContext"


# instance fields
.field public mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

.field public mContext:Landroid/content/Context;

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

.field public mHandle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->nativeInit(JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lcom/samsung/android/sdk/pen/view/context/SpenContext$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext$1;-><init>(Lcom/samsung/android/sdk/pen/view/context/SpenContext;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, p1, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->updateRefreshRate()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isSystemDarkMode(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->setSystemDarkMode(Z)V

    :cond_0
    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JJJJIJ)J
.end method

.method private static native Native_setDisplayRefreshRate(JF)V
.end method

.method private static native Native_setImageCacheQuality(JI)V
.end method

.method private static native Native_setSystemDarkMode(JZ)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/view/context/SpenContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->updateRefreshRate()V

    return-void
.end method

.method private updateRefreshRate()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->Native_setDisplayRefreshRate(JF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->nativeFinalize()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    return-void
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    return-wide v0
.end method

.method public nativeFinalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    return-void
.end method

.method public nativeInit(JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
    .locals 12

    move-object v0, p0

    move-object v1, p3

    iget-wide v3, v1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v5

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->getNativeHandle()J

    move-result-wide v7

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->getNativeHandle()J

    move-result-wide v10

    move-wide v1, p1

    move/from16 v9, p5

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->Native_init(JJJJIJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    return-void
.end method

.method public setImageCacheQuality(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->Native_setImageCacheQuality(JI)V

    :cond_0
    return-void
.end method

.method public setSystemDarkMode(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->Native_setSystemDarkMode(JZ)V

    :cond_0
    return-void
.end method
