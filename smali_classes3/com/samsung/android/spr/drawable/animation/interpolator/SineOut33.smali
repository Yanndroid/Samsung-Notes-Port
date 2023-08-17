.class public Lcom/samsung/android/spr/drawable/animation/interpolator/SineOut33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineOut33;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ec5a1cb    # 0.386f
        0x3f251eb8    # 0.645f
    .end array-data

    :array_1
    .array-data 4
        0x3f251eb8    # 0.645f
        0x3f7645a2    # 0.962f
        0x3f800000    # 1.0f
    .end array-data
.end method

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


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    sget-object v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineOut33;->segments:[[F

    array-length v2, v1

    int-to-float v2, v2

    mul-float v3, v2, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    array-length v4, v1

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    array-length v3, v1

    sub-int/2addr v3, v5

    :cond_0
    int-to-float v4, v3

    div-float v6, v0, v2

    mul-float/2addr v4, v6

    sub-float/2addr p1, v4

    mul-float/2addr p1, v2

    aget-object v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v4, v1, v3

    const/high16 v6, 0x40000000    # 2.0f

    sub-float v7, v0, p1

    mul-float/2addr v7, v6

    aget v5, v1, v5

    aget v6, v1, v3

    sub-float/2addr v5, v6

    mul-float/2addr v7, v5

    const/4 v5, 0x2

    aget v5, v1, v5

    aget v1, v1, v3

    sub-float/2addr v5, v1

    mul-float/2addr v5, p1

    add-float/2addr v7, v5

    mul-float/2addr p1, v7

    add-float/2addr v4, p1

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    return v4
.end method
