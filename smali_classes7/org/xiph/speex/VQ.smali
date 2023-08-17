.class public Lorg/xiph/speex/VQ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final index(F[FI)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    aget v3, p1, v0

    sub-float v3, p0, v3

    mul-float/2addr v3, v3

    if-eqz v0, :cond_0

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    :cond_0
    move v1, v0

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static final index([F[FII)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v5, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p3, :cond_3

    move v7, v0

    move v6, v1

    :goto_1
    if-ge v6, p2, :cond_0

    aget v8, p0, v6

    add-int/lit8 v9, v4, 0x1

    aget v4, p1, v4

    sub-float/2addr v8, v4

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    cmpg-float v6, v7, v5

    if-gez v6, :cond_2

    :cond_1
    move v3, v2

    move v5, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static final nbest([FI[FII[FI[I[F)V
    .locals 11

    move/from16 v0, p6

    const/4 v1, 0x0

    move v2, p4

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_5

    const/high16 v6, 0x3f000000    # 0.5f

    aget v7, p5, v3

    mul-float/2addr v7, v6

    move v6, p3

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_0

    add-int v9, p1, v8

    aget v9, p0, v9

    add-int/lit8 v10, v4, 0x1

    aget v4, p2, v4

    mul-float/2addr v9, v4

    sub-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_1

    :cond_0
    if-lt v3, v0, :cond_1

    add-int/lit8 v8, v0, -0x1

    aget v8, p8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    :cond_1
    add-int/lit8 v8, v0, -0x1

    :goto_2
    const/4 v9, 0x1

    if-lt v8, v9, :cond_3

    if-gt v8, v5, :cond_2

    add-int/lit8 v9, v8, -0x1

    aget v9, p8, v9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_3

    :cond_2
    add-int/lit8 v9, v8, -0x1

    aget v10, p8, v9

    aput v10, p8, v8

    aget v9, p7, v9

    aput v9, p7, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_3
    aput v7, p8, v8

    aput v3, p7, v8

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static final nbest_sign([FI[FII[FI[I[F)V
    .locals 15

    move/from16 v0, p4

    move/from16 v1, p6

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_6

    const/4 v6, 0x0

    move/from16 v7, p3

    move v8, v2

    move v9, v6

    :goto_1
    if-ge v8, v7, :cond_0

    add-int v10, p1, v8

    aget v10, p0, v10

    add-int/lit8 v11, v4, 0x1

    aget v4, p2, v4

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    move v4, v11

    goto :goto_1

    :cond_0
    cmpl-float v6, v9, v6

    const/4 v8, 0x1

    if-lez v6, :cond_1

    neg-float v9, v9

    move v6, v8

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    float-to-double v9, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    aget v13, p5, v3

    float-to-double v13, v13

    mul-double/2addr v13, v11

    add-double/2addr v9, v13

    double-to-float v9, v9

    if-lt v3, v1, :cond_2

    add-int/lit8 v10, v1, -0x1

    aget v10, p8, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5

    :cond_2
    add-int/lit8 v10, v1, -0x1

    :goto_3
    if-lt v10, v8, :cond_4

    if-gt v10, v5, :cond_3

    add-int/lit8 v11, v10, -0x1

    aget v11, p8, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_4

    :cond_3
    add-int/lit8 v11, v10, -0x1

    aget v12, p8, v11

    aput v12, p8, v10

    aget v11, p7, v11

    aput v11, p7, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_4
    aput v9, p8, v10

    aput v3, p7, v10

    add-int/lit8 v5, v5, 0x1

    if-eqz v6, :cond_5

    aget v6, p7, v10

    add-int/2addr v6, v0

    aput v6, p7, v10

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
