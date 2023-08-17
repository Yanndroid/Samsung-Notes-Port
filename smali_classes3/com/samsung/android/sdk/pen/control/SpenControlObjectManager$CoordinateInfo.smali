.class public Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordinateInfo"
.end annotation


# instance fields
.field public pan:Landroid/graphics/PointF;

.field public startPos:Landroid/graphics/PointF;

.field public zoomRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->pan:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->startPos:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->pan:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->zoomRatio:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->startPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
