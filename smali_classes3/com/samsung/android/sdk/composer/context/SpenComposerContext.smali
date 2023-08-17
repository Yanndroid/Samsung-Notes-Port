.class public Lcom/samsung/android/sdk/composer/context/SpenComposerContext;
.super Lcom/samsung/android/sdk/pen/view/context/SpenContext;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenComposerContext"


# instance fields
.field private mColorTheme:I

.field private mEditMode:I

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mMode:I

    iput p1, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mEditMode:I

    iput p1, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mColorTheme:I

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/composer/context/SpenComposerContext;JJJJIJ)J
.end method

.method private static native Native_setColorTheme(JI)V
.end method

.method private static native Native_setDesktopMode(JZ)V
.end method

.method private static native Native_setEditMode(JI)V
.end method

.method private static native Native_setMode(JI)V
.end method

.method private static native Native_setRefreshRate(JF)V
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->setListener(Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;)V

    return-void
.end method

.method public getColorTheme()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mColorTheme:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mMode:I

    return v0
.end method

.method public nativeFinalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    :cond_0
    return-void
.end method

.method public nativeInit(JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
    .locals 13

    move-object v12, p0

    iget-object v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;-><init>()V

    iput-object v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    move-object/from16 v0, p3

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v3

    iget-object v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mGestureFactory:Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->getNativeHandle()J

    move-result-wide v7

    iget-object v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->getNativeHandle()J

    move-result-wide v10

    move-object v0, p0

    move-wide v5, p1

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->Native_init(Lcom/samsung/android/sdk/composer/context/SpenComposerContext;JJJJIJ)J

    move-result-wide v0

    iput-wide v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    iget-object v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->setDesktopMode(Z)V

    iget-object v0, v12, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isSystemDarkMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->setSystemDarkMode(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->setColorTheme(I)V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->init()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mAnimatorUpdateManager:Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->onViewDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mColorTheme:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->Native_setColorTheme(JI)V

    :cond_0
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->Native_setDesktopMode(JZ)V

    :cond_0
    return-void
.end method

.method public setEditMode(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mEditMode:I

    if-eq v2, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mEditMode:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->Native_setEditMode(JI)V

    :cond_1
    return-void
.end method

.method public setMode(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mMode:I

    if-eq v2, p1, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->mMode:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/context/SpenComposerContext;->Native_setMode(JI)V

    :cond_1
    return-void
.end method
