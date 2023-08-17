.class public Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseOut;
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

.method private out(F)F
    .locals 2

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/animation/interpolator/QuadEaseOut;->out(F)F

    move-result p1

    return p1
.end method
