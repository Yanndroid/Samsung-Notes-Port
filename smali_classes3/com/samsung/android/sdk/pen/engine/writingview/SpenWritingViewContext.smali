.class public Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;
.super Lcom/samsung/android/sdk/pen/view/context/SpenContext;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenComposerContext"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JJJJIJ)J
.end method

.method private static native Native_setColorTheme(JI)V
.end method


# virtual methods
.method public nativeFinalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    :cond_0
    return-void
.end method

.method public nativeInit(JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

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

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;->Native_init(JJJJIJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    :cond_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewContext;->Native_setColorTheme(JI)V

    :cond_0
    return-void
.end method
