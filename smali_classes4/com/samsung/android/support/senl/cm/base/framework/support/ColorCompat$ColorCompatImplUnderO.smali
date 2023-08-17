.class Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplUnderO;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorCompatImplUnderO"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/support/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/support/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplUnderO;-><init>()V

    return-void
.end method


# virtual methods
.method public HSVToColor([F)I
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Invalid hsv color"

    if-eqz v0, :cond_a

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a

    const/4 v2, 0x1

    aget v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v7, 0x2

    aget v8, v0, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v10, v8, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/high16 v11, 0x39800000

    cmpg-float v11, v4, v11

    const/high16 v12, -0x1000000

    if-gtz v11, :cond_0

    and-int/lit16 v0, v10, 0xff

    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, v12

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v11, 0x0

    aget v13, v0, v11

    cmpg-float v13, v13, v6

    if-ltz v13, :cond_2

    aget v13, v0, v11

    const/high16 v14, 0x43b40000    # 360.0f

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    goto :goto_0

    :cond_1
    aget v0, v0, v11

    const/high16 v6, 0x42700000    # 60.0f

    div-float v6, v0, v6

    :cond_2
    :goto_0
    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v0, v13

    const/4 v13, 0x6

    if-ge v0, v13, :cond_9

    if-ltz v0, :cond_9

    int-to-float v1, v0

    sub-float/2addr v6, v1

    sub-float v1, v5, v4

    mul-float/2addr v1, v8

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v13, v4, v6

    sub-float v13, v5, v13

    mul-float/2addr v13, v8

    mul-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    sub-float v6, v5, v6

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    mul-float/2addr v5, v8

    mul-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    move v1, v11

    move v4, v1

    move v10, v4

    goto :goto_2

    :cond_3
    move v4, v13

    goto :goto_2

    :cond_4
    move v15, v10

    move v10, v4

    move v4, v15

    goto :goto_2

    :cond_5
    move v4, v10

    move v10, v1

    move v1, v13

    goto :goto_2

    :cond_6
    move v15, v10

    move v10, v1

    goto :goto_1

    :cond_7
    move v4, v1

    move v1, v10

    move v10, v13

    goto :goto_2

    :cond_8
    move v15, v4

    move v4, v1

    :goto_1
    move v1, v15

    :goto_2
    and-int/lit16 v0, v10, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v4, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
