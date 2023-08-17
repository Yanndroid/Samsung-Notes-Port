.class public Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;
.implements Lcom/samsung/android/spensdk/framework/SpenDrawCallback;


# static fields
.field private static final MIN_HWRENDERER_VERSION:Ljava/lang/String; = "1.0.1"

.field private static final TAG:Ljava/lang/String; = "SpenDrawLoopHWUI"


# instance fields
.field private mDestroy:Z

.field private mParent:Landroid/view/View;

.field private mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

.field private mThreadId:J

.field private nativeDrawLoop:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mThreadId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mDestroy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mParent:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->init()V

    return-void
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getMsgQueue(J)J
.end method

.method private static native Native_getRendererType(J)I
.end method

.method private static native Native_init()J
.end method

.method private static native Native_onDraw(J)V
.end method

.method private static native Native_onDrawHwuiFunctor(JLcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)V
.end method

.method private static native Native_onPause(J)V
.end method

.method private static native Native_onProcessWithNoContext(J)V
.end method

.method private static native Native_onProcessWithoutScreenUpdate(J)V
.end method

.method private static native Native_onResume(J)V
.end method

.method private static native Native_onSync(J)V
.end method

.method private static native Native_setScreenSize(JII)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;)Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    return-object p1
.end method

.method private checkMinVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    const-string v5, " needed "

    const-string v6, "SpenDrawLoopHWUI"

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v4, v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMinVersion: false, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMinVersion: true, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mThreadId:J

    invoke-static {}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->isSupported()Z

    move-result v0

    const-string v1, "SpenDrawLoopHWUI"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Framework SPenRendererAdapter.isSupported(): true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.1"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->checkMinVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "Framework SPenRendererAdapter.isSupported(): false, using HwuiCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;-><init>(Lcom/samsung/android/spensdk/framework/SpenDrawCallback;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;-><init>(Lcom/samsung/android/spensdk/framework/SpenDrawCallback;)V

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_construct(JLcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)Z

    return-void
.end method

.method private invoke(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;->callOnProcess(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private postDestroyRendererAdapter()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI$1;-><init>(Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requestInvalidate(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mParent:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mParent:Landroid/view/View;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mDestroy:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;->callOnProcess(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->postDestroyRendererAdapter()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mParent:Landroid/view/View;

    return-void
.end method

.method public getMsgQueueHandle()J
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_getMsgQueue(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getRendererType()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_getRendererType(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onDrawHwuiFunctor(JLcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onDraw(J)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;->callOnDraw(Landroid/graphics/Canvas;)Z

    :cond_1
    return-void
.end method

.method public onLayout(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onPause(J)V

    :cond_0
    return-void
.end method

.method public onProcessWithNoContext()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mDestroy:Z

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mDestroy:Z

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onProcessWithNoContext(J)V

    :cond_1
    return-void
.end method

.method public onProcessWithoutScreenUpdate()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mDestroy:Z

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mDestroy:Z

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onProcessWithoutScreenUpdate(J)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onResume(J)V

    :cond_0
    return-void
.end method

.method public onSync()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_onSync(J)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->mRendererAdapter:Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->postDestroyRendererAdapter()V

    :cond_0
    return-void
.end method

.method public setScreenSize(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->nativeDrawLoop:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopHWUI;->Native_setScreenSize(JII)V

    :cond_0
    return-void
.end method
