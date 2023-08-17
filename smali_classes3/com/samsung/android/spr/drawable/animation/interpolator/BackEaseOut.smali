.class public Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;
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

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;->overshot:F

    return-void
.end method

.method private out(FF)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    add-float v2, p2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/BackEaseOut;->out(FF)F

    move-result p1

    return p1
.end method
