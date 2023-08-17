.class public Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.objectruntime.preload.Video"

.field private static final TAG:Ljava/lang/String; = "WritingObjectRuntimeVideo"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

.field private mContext:Landroid/content/Context;

.field private mObjectRect:Landroid/graphics/RectF;

.field private mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

.field private mObjectRuntimeManager:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

.field public mObjectRuntimelistener:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

.field private mPan:Landroid/graphics/PointF;

.field private mStartPos:Landroid/graphics/PointF;

.field private mView:Landroid/view/ViewGroup;

.field private mZoomRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mPan:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mStartPos:Landroid/graphics/PointF;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;-><init>(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimelistener:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mView:Landroid/view/ViewGroup;

    new-instance p2, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimeManager:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mActionListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    return-object p0
.end method

.method private getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mPan:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mZoomRatio:F

    mul-float/2addr v1, v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mStartPos:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v2

    mul-float/2addr p1, v4

    add-float/2addr p1, v5

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimeManager:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->stop(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimeManager:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;->unload(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimeManager:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isPlay()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mActionListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mPan:Landroid/graphics/PointF;

    iput p2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mZoomRatio:F

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mStartPos:Landroid/graphics/PointF;

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 9

    const-string v0, "WritingObjectRuntimeVideo"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimeManager:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    const-string v3, "com.samsung.android.sdk.pen.objectruntime.preload.Video"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;->createObjectRuntime(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntimelistener:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->setListener(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mPan:Landroid/graphics/PointF;

    iget v6, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mZoomRatio:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mStartPos:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mView:Landroid/view/ViewGroup;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->start(Ljava/lang/Object;Landroid/graphics/RectF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mActionListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onCloseControl()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mActionListener:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onUpdate()V

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "ObjectRuntimeInfo is not loaded."

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p1, "Failed to access the ObjectRuntimeInfo field or method."

    goto :goto_0

    :catch_2
    const-string p1, "Failed to access the ObjectRuntimeInfo constructor."

    goto :goto_0

    :catch_3
    const-string p1, "ObjectRuntimeInfo class not found. : com.samsung.android.sdk.pen.objectruntime.preload.Video"

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->stop(Z)V

    return-void
.end method

.method public updateRect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRuntime:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->mObjectRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->getRelativeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->setRect(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method
