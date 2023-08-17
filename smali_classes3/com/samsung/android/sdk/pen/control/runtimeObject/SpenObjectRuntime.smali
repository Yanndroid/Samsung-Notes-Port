.class public Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;
    }
.end annotation


# static fields
.field private static mGlobalObjectRuntimeStart:Z


# instance fields
.field private final mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

.field private mThisObjectRuntimeStart:Z

.field private mUpdateListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'objectRuntimeObject\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mUpdateListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    return-object p0
.end method

.method public static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mGlobalObjectRuntimeStart:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mThisObjectRuntimeStart:Z

    return p1
.end method


# virtual methods
.method public getObjectRuntimeObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;->getType()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;)Z
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mUpdateListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;-><init>(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;->setListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public start(Ljava/lang/Object;Landroid/graphics/RectF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/view/ViewGroup;)V
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p6, :cond_1

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mGlobalObjectRuntimeStart:Z

    if-eqz v0, :cond_0

    const-string p1, "SpenObjectRuntime"

    const-string p2, "SpenObjectRuntime was already started"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mGlobalObjectRuntimeStart:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mThisObjectRuntimeStart:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;->start(Ljava/lang/Object;Landroid/graphics/RectF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/view/ViewGroup;)V

    return-void

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument is null. ObjectBase = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Rect = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ViewGroup = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " startFramePosition = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public stop(Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mGlobalObjectRuntimeStart:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mThisObjectRuntimeStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mGlobalObjectRuntimeStart:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mThisObjectRuntimeStart:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->mObjectRuntimeObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;->stop(Z)V

    return-void
.end method
