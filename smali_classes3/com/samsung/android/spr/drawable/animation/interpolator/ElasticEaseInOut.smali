.class public Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iput p2, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;->period:F

    return-void
.end method

.method private inout(FFF)F
    .locals 14

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    cmpl-float v2, p3, v0

    if-nez v2, :cond_2

    const v2, 0x3ee66667    # 0.45000002f

    goto :goto_0

    :cond_2
    move/from16 v2, p3

    :goto_0
    cmpl-float v0, p2, v0

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    float-to-double v5, v2

    div-double/2addr v5, v3

    div-float v0, v1, p2

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v0, v5

    move v5, v0

    move/from16 v0, p2

    goto :goto_2

    :cond_4
    :goto_1
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, v2, v0

    move v5, v0

    move v0, v1

    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p1

    cmpg-float v7, v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-gez v7, :cond_5

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    float-to-double v12, v0

    const/high16 v0, 0x41200000    # 10.0f

    sub-float/2addr v6, v1

    mul-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v12, v0

    sub-float/2addr v6, v5

    float-to-double v0, v6

    mul-double/2addr v0, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v12, v0

    mul-double/2addr v12, v10

    double-to-float v0, v12

    return v0

    :cond_5
    float-to-double v10, v0

    const/high16 v0, -0x3ee00000    # -10.0f

    sub-float/2addr v6, v1

    mul-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v10, v0

    sub-float/2addr v6, v5

    float-to-double v0, v6

    mul-double/2addr v0, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v10, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v0

    double-to-float v0, v10

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;->period:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseInOut;->inout(FFF)F

    move-result p1

    return p1
.end method
