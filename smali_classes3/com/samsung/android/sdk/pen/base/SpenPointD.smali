.class public Lcom/samsung/android/sdk/pen/base/SpenPointD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    iput-wide p3, p0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/base/SpenPointD;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    iget-wide v0, p1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    return-void
.end method


# virtual methods
.method public set(Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    return-void
.end method
