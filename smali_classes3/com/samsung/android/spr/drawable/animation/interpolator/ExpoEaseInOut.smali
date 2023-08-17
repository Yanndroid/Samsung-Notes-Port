.class public Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseInOut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inout(F)F
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    cmpg-float v1, p1, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-gez v1, :cond_2

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1

    :cond_2
    const/high16 v1, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/animation/interpolator/ExpoEaseInOut;->inout(F)F

    move-result p1

    return p1
.end method
