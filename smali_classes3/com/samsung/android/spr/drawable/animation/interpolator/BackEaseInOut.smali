.class public Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;->overshot:F

    return-void
.end method

.method private inout(FF)F
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const-wide v3, 0x3ff8666666666666L    # 1.525

    const/high16 v5, 0x3f000000    # 0.5f

    if-gez v2, :cond_1

    mul-float v0, p1, p1

    float-to-double v6, p2

    mul-double/2addr v6, v3

    double-to-float p2, v6

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    return v0

    :cond_1
    sub-float/2addr p1, v0

    mul-float v2, p1, p1

    float-to-double v6, p2

    mul-double/2addr v6, v3

    double-to-float p2, v6

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    mul-float/2addr v2, v5

    return v2
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseInOut;->inout(FF)F

    move-result p1

    return p1
.end method
