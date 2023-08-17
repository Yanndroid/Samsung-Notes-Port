.class public Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorUpdateManager"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->Native_init(Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    return-void
.end method

.method private static native Native_doAnimationFrame(J)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;)J
.end method

.method private doAnimationFrame()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->Native_doAnimationFrame(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onPostFrameCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->postFrameCallback()V

    return-void
.end method

.method private postFrameCallback()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public doFrame(J)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->doAnimationFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->postFrameCallback()V

    const-string p1, "AnimatorUpdateManager"

    const-string p2, "doFrame"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenAnimatorUpdateManager;->mNativeHandle:J

    return-wide v0
.end method

.method public onViewDetachedFromWindow()V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
