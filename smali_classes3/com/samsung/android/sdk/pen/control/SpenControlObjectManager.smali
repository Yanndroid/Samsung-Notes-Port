.class public Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;,
        Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$RotateChangedInfo;,
        Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TIME_DELAY_UPDATE:J

.field private mContext:Landroid/content/Context;

.field private mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

.field private mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

.field private mControlStyleInfo:Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

.field private mHandler:Landroid/os/Handler;

.field private mNativePtr:J

.field private mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

.field private mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

.field private mPastePosition:Landroid/graphics/PointF;

.field private mPlayingObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenControlObjectManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->TIME_DELAY_UPDATE:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPastePosition:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPlayingObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlStyleInfo:Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;-><init>(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_init(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenControlObjectManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->TIME_DELAY_UPDATE:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPastePosition:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPlayingObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlStyleInfo:Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;-><init>(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_init(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mView:Landroid/view/View;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native Native_closeControl(J)V
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getPastePosition(J)Landroid/graphics/PointF;
.end method

.method private static native Native_getSelectedData(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_getSelectedRect(J)Landroid/graphics/RectF;
.end method

.method private static native Native_hasFocus(J)Z
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)J
.end method

.method private static native Native_setControStyleInfo(JLcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;)V
.end method

.method private static native Native_setControlBitmap(JZ)V
.end method

.method private static native Native_setFitWidth(JZ)V
.end method

.method private static native Native_setFocus(JZ)V
.end method

.method private static native Native_setLassoCrop(JZ)V
.end method

.method private static native Native_setRectangleCrop(JZ)V
.end method

.method private static native Native_setShapeSegment(JZ)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    return-object p0
.end method

.method private isFloatingViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;->isFloatingViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onItemButtonClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemButtonClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemButtonClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method private onItemClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method private onItemClickedOfSelected(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onSelectedItemClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onSelectedItemClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method private onItemLongClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemLongClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onItemLongClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method private onItemLongClickedOfSelected(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onSelectedItemLongClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;->onSelectedItemLongClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method private onRotateChanged(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$RotateChangedInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;->onRotateChanged(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$RotateChangedInfo;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const-string v0, "SpenControlObjectManager"

    const-string v1, "SpenControlObjectManager close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_finalize(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPlayingObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-void
.end method

.method public closeControl()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenControlObjectManager"

    const-string v1, "SpenControlObjectManager closeControl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_closeControl(J)V

    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    return-wide v0
.end method

.method public getPastePosition()Landroid/graphics/PointF;
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPastePosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_getPastePosition(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPastePosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getSelectedData()Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_getSelectedRect(J)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenControlObjectManager getSelectedData ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenControlObjectManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_getSelectedData(JLandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object v3
.end method

.method public hasFocus()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_hasFocus(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isObjectRuntimePlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->stopPlayingVideo()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "VideoPath"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenControlObjectManager"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVideo : Video path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "playVideo : File does not exist"

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mView:Landroid/view/View;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPlayingObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    if-nez v4, :cond_4

    new-instance v4, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v4, v0, v3}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;->onRequestMoveIntoScreen(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    invoke-interface {v3, v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;->onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v5, v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->zoomRatio:F

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->startPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->setPosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    new-instance v3, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;-><init>(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->setActionListener(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->start(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "playVideo : Failed to start the video"

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_1
    const-string p1, "playVideo : Context or View is null"

    goto :goto_0

    :cond_8
    :goto_2
    const-string p1, "playVideo : Invalid file path"

    goto :goto_0
.end method

.method public setControlActionListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    return-void
.end method

.method public setControlBitmap(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setControlBitmap(JZ)V

    return-void
.end method

.method public setControlStyleInfo(Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlStyleInfo:Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;-><init>(Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlStyleInfo:Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setControStyleInfo(JLcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFitWidth(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setFitWidth(JZ)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setFocus(JZ)V

    return-void
.end method

.method public setImageEditable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setRectangleCrop(JZ)V

    return-void
.end method

.method public setLassoCrop(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setLassoCrop(JZ)V

    return-void
.end method

.method public setObjectListener(Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlObjectListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;

    return-void
.end method

.method public setPaintingControlListener(Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPaintingControlListener:Lcom/samsung/android/sdk/pen/control/SpenPaintingControlListener;

    return-void
.end method

.method public setPastePosition(Landroid/graphics/PointF;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenControlObjectManager setPastePosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenControlObjectManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPastePosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setRectangleCrop(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setRectangleCrop(JZ)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->isObjectRuntimePlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setShapeSegment(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->Native_setShapeSegment(JZ)V

    return-void
.end method

.method public stopPlayingVideo()V
    .locals 2

    const-string v0, "SpenControlObjectManager"

    const-string v1, "playVideo : Stop playing video!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->stop()V

    :cond_1
    return-void
.end method

.method public updateObjectRuntimePos()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    if-eqz v0, :cond_1

    const-string v0, "SpenControlObjectManager"

    const-string v1, "SpenControlObjectManager updateObjectRuntimePos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mControlActionListener:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mPlayingObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;->onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v3, v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->zoomRatio:F

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->startPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->setPosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->mObjectRuntimeVideo:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->updateRect()V

    :cond_1
    return-void
.end method
