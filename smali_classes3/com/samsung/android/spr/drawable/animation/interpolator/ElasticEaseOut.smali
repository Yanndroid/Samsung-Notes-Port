.class public Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;
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

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;->amplitude:F

    iput p2, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;->period:F

    return-void
.end method

.method private out(FFF)F
    .locals 10

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

    const p3, 0x3e99999a    # 0.3f

    :cond_2
    cmpl-float v0, p2, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v4, p3

    div-double/2addr v4, v2

    div-float/2addr v1, p2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    double-to-float v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p2, 0x40800000    # 4.0f

    div-float v0, p3, p2

    move p2, v1

    :goto_1
    float-to-double v4, p2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 p2, -0x3ee00000    # -10.0f

    mul-float/2addr p2, p1

    float-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float/2addr p1, v0

    float-to-double p1, p1

    mul-double/2addr p1, v2

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v4, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, p1

    double-to-float p1, v4

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;->amplitude:F

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;->period:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/ElasticEaseOut;->out(FFF)F

    move-result p1

    return p1
.end method
