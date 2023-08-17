.class public Lcom/samsung/android/sdk/pen/util/color/SpenColorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToRGB([F)I
    .locals 0

    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method public static HSVToColor(I[F)I
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "Invalid hsv color"

    if-eqz p1, :cond_b

    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_b

    const/4 v1, 0x1

    aget v3, p1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v6, 0x2

    aget v7, p1, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v9, v7, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/high16 v10, 0x39800000

    cmpg-float v10, v3, v10

    if-gtz v10, :cond_1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, v9, 0xff

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p0, v0

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_1
    const/4 v10, 0x0

    aget v11, p1, v10

    cmpg-float v11, v11, v5

    if-ltz v11, :cond_3

    aget v11, p1, v10

    const/high16 v12, 0x43b40000    # 360.0f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_2

    goto :goto_1

    :cond_2
    aget p1, p1, v10

    const/high16 v5, 0x42700000    # 60.0f

    div-float v5, p1, v5

    :cond_3
    :goto_1
    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int p1, v11

    int-to-float v11, p1

    sub-float/2addr v5, v11

    sub-float v11, v4, v3

    mul-float/2addr v11, v7

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-float v12, v3, v5

    sub-float v12, v4, v12

    mul-float/2addr v12, v7

    mul-float/2addr v12, v8

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-float v5, v4, v5

    mul-float/2addr v3, v5

    sub-float/2addr v4, v3

    mul-float/2addr v4, v7

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x6

    if-ge p1, v4, :cond_a

    if-ltz p1, :cond_a

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    move v3, v10

    move v9, v3

    move v11, v9

    goto :goto_3

    :cond_4
    move v3, v12

    goto :goto_3

    :cond_5
    move v13, v9

    move v9, v3

    goto :goto_2

    :cond_6
    move v3, v9

    move v9, v11

    move v11, v12

    goto :goto_3

    :cond_7
    move v13, v11

    move v11, v9

    move v9, v13

    goto :goto_3

    :cond_8
    move v3, v11

    move v11, v9

    move v9, v12

    goto :goto_3

    :cond_9
    move v13, v11

    move v11, v3

    :goto_2
    move v3, v13

    :goto_3
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, v9, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, v11, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, v3, 0xff

    goto :goto_0

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static HSVToColor([F)I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorUtil;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static RGBToHSL(I[F)V
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    return-void
.end method
