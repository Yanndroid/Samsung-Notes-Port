.class public Lorg/xiph/speex/Lpc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autocorr([F[FII)V
    .locals 4

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p3, :cond_0

    aget v2, p0, v1

    sub-int v3, v1, v0

    aget v3, p0, v3

    mul-float/2addr v2, v3

    add-float/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aput p2, p1, v0

    move p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static wld([F[F[FI)F
    .locals 10

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p1, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :goto_0
    if-ge v0, p3, :cond_0

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_5

    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v3

    neg-float v4, v4

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_2

    aget v6, p0, v5

    sub-int v7, v2, v5

    aget v7, p1, v7

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    div-float/2addr v4, v1

    aput v4, p2, v2

    aput v4, p0, v2

    move v5, v0

    :goto_3
    div-int/lit8 v6, v2, 0x2

    if-ge v5, v6, :cond_3

    aget v6, p0, v5

    aget v7, p0, v5

    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v5

    aget v9, p0, v8

    mul-float/2addr v9, v4

    add-float/2addr v7, v9

    aput v7, p0, v5

    aget v7, p0, v8

    mul-float/2addr v6, v4

    add-float/2addr v7, v6

    aput v7, p0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    aget v2, p0, v5

    aget v6, p0, v5

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    aput v2, p0, v5

    :cond_4
    float-to-double v1, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-float/2addr v4, v4

    float-to-double v7, v4

    sub-double/2addr v5, v7

    mul-double/2addr v1, v5

    double-to-float v1, v1

    move v2, v3

    goto :goto_1

    :cond_5
    return v1
.end method
