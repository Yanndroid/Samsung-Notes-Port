.class public Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001B1\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0011\u001a\u00020\u0005H\u0016J\u0008\u0010\u0012\u001a\u00020\u0005H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "currentZoom",
        "",
        "pointF",
        "Landroid/graphics/PointF;",
        "(Landroid/graphics/Bitmap;IIFLandroid/graphics/PointF;)V",
        "mCurrentZoomRatio",
        "mDocHeight",
        "mDocWidth",
        "mForegroundImage",
        "mPan",
        "getDocHeight",
        "getDocWidth",
        "getForegroundImage",
        "getPan",
        "getZoomRatio",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mCurrentZoomRatio:F

.field private mDocHeight:I

.field private mDocWidth:I

.field private mForegroundImage:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPan:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFLandroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mForegroundImage:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mDocWidth:I

    iput p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mDocHeight:I

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_0
    iput p4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mCurrentZoomRatio:F

    iput-object p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mPan:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getDocHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mDocHeight:I

    return v0
.end method

.method public getDocWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mDocWidth:I

    return v0
.end method

.method public getForegroundImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mForegroundImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mPan:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;->mCurrentZoomRatio:F

    return v0
.end method
