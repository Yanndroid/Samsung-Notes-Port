.class public Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

.field private mHwuiHandler:Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;

.field private mNativeHwuiFunctor:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/spensdk/framework/SpenDrawCallback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mNativeHwuiFunctor:J

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mHwuiHandler:Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;

    const-string v0, "SPenHwuiCompat"

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->loadLibrary(Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->Native_CreateNativeFunctor(Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mNativeHwuiFunctor:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler;->create(J)Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mHwuiHandler:Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;

    return-void
.end method

.method private static native Native_CreateNativeFunctor(Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;)J
.end method

.method private static native Native_DestroyNativeFunctor(J)V
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler;->isHWUISupported()Z

    move-result v0

    return v0
.end method

.method private static loadLibrary(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return v0
.end method

.method private onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method private onProcessWithNoContext()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onProcessWithoutScreenUpdate()V

    :cond_0
    return-void
.end method

.method private onProcessWithoutScreenUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onProcessWithoutScreenUpdate()V

    :cond_0
    return-void
.end method

.method private onSync()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onSync()V

    :cond_0
    return-void
.end method


# virtual methods
.method public callOnDraw(Landroid/graphics/Canvas;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mHwuiHandler:Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;->setGLDrawCallback(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public callOnProcess(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mHwuiHandler:Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/hwuicompat/util/SpenHwuiHandler$SPenHwuiHandlerInterface;->invoke(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->mNativeHwuiFunctor:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/hwuicompat/SPenRendererAdapter;->Native_DestroyNativeFunctor(J)V

    :cond_0
    return-void
.end method
