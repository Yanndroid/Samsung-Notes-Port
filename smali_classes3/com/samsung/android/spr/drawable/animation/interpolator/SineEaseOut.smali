.class public Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseOut;
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
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineEaseOut;->out(F)F

    move-result p1

    return p1
.end method
