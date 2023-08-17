.class Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point3"
.end annotation


# static fields
.field private static final PI:D = 3.14159


# instance fields
.field private x:D

.field private y:D

.field private z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->z:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->y:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->x:D

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->setColor(FFF)V

    return-void
.end method


# virtual methods
.method public getDistance(Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;)D
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->x:D

    iget-wide v2, p1, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->y:D

    iget-wide v6, p1, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->y:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->z:D

    iget-wide v6, p1, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->z:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public setColor(FFF)V
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x400921f9f01b866eL    # 3.14159

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->x:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    double-to-float p1, v0

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->y:D

    float-to-double p1, p3

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->z:D

    return-void
.end method
