.class public abstract Lorg/xiph/speex/Ltp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inner_prod([FI[FII)F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    move v1, v3

    :goto_0
    if-ge v4, p4, :cond_0

    add-int v5, p1, v4

    aget v6, p0, v5

    add-int v7, p3, v4

    aget v8, p2, v7

    mul-float/2addr v6, v8

    add-float/2addr v0, v6

    add-int/lit8 v6, v5, 0x1

    aget v6, p0, v6

    add-int/lit8 v8, v7, 0x1

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v1, v6

    add-int/lit8 v6, v5, 0x2

    aget v6, p0, v6

    add-int/lit8 v8, v7, 0x2

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v2, v6

    add-int/lit8 v5, v5, 0x3

    aget v5, p0, v5

    add-int/lit8 v7, v7, 0x3

    aget v6, p2, v7

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    return v0
.end method

.method public static open_loop_nbest_pitch([FIIII[I[FI)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p7

    new-array v5, v4, [F

    sub-int v6, v2, p2

    add-int/lit8 v7, v6, 0x1

    new-array v8, v7, [F

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    new-array v7, v7, [F

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, 0x0

    if-ge v10, v4, :cond_0

    const/high16 v12, -0x40800000    # -1.0f

    aput v12, v5, v10

    aput v11, p6, v10

    aput p2, p5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    sub-int v10, v1, p2

    invoke-static {v0, v10, v0, v10, v3}, Lorg/xiph/speex/Ltp;->inner_prod([FI[FII)F

    move-result v10

    aput v10, v6, v9

    invoke-static {v0, v1, v0, v1, v3}, Lorg/xiph/speex/Ltp;->inner_prod([FI[FII)F

    move-result v10

    move/from16 v12, p2

    :goto_1
    const/high16 v13, 0x3f800000    # 1.0f

    if-gt v12, v2, :cond_2

    sub-int v14, v12, p2

    add-int/lit8 v15, v14, 0x1

    aget v14, v6, v14

    sub-int v16, v1, v12

    add-int/lit8 v17, v16, -0x1

    aget v18, v0, v17

    aget v17, v0, v17

    mul-float v18, v18, v17

    add-float v14, v14, v18

    add-int v16, v16, v3

    add-int/lit8 v16, v16, -0x1

    aget v17, v0, v16

    aget v16, v0, v16

    mul-float v17, v17, v16

    sub-float v14, v14, v17

    aput v14, v6, v15

    aget v14, v6, v15

    cmpg-float v14, v14, v13

    if-gez v14, :cond_1

    aput v13, v6, v15

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move/from16 v12, p2

    :goto_2
    if-gt v12, v2, :cond_3

    sub-int v14, v12, p2

    aput v11, v8, v14

    aput v11, v7, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v12, p2

    :goto_3
    if-gt v12, v2, :cond_4

    sub-int v14, v12, p2

    sub-int v15, v1, v12

    invoke-static {v0, v1, v0, v15, v3}, Lorg/xiph/speex/Ltp;->inner_prod([FI[FII)F

    move-result v15

    aput v15, v8, v14

    aget v15, v8, v14

    aget v16, v8, v14

    mul-float v15, v15, v16

    aget v16, v6, v14

    add-float v16, v16, v13

    div-float v15, v15, v16

    aput v15, v7, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    move/from16 v0, p2

    :goto_4
    if-gt v0, v2, :cond_a

    sub-int v1, v0, p2

    aget v3, v7, v1

    add-int/lit8 v12, v4, -0x1

    aget v13, v5, v12

    cmpl-float v3, v3, v13

    if-lez v3, :cond_9

    aget v3, v8, v1

    aget v13, v6, v1

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    div-float/2addr v3, v13

    aget v13, v8, v1

    mul-float/2addr v13, v3

    add-float/2addr v14, v10

    div-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    cmpl-float v14, v13, v3

    if-lez v14, :cond_5

    goto :goto_5

    :cond_5
    move v3, v13

    :goto_5
    cmpg-float v13, v3, v11

    if-gez v13, :cond_6

    move v3, v11

    :cond_6
    move v13, v9

    :goto_6
    if-ge v13, v4, :cond_9

    aget v14, v7, v1

    aget v15, v5, v13

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    :goto_7
    if-le v12, v13, :cond_7

    add-int/lit8 v14, v12, -0x1

    aget v15, v5, v14

    aput v15, v5, v12

    aget v15, p5, v14

    aput v15, p5, v12

    aget v14, p6, v14

    aput v14, p6, v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_7
    aget v1, v7, v1

    aput v1, v5, v13

    aput v0, p5, v13

    aput v3, p6, v13

    goto :goto_8

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_9
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method


# virtual methods
.method public abstract quant([F[FI[F[F[F[FIIIFIILorg/xiph/speex/Bits;[FI[FI)I
.end method

.method public abstract unquant([FIIFI[FLorg/xiph/speex/Bits;IIF)I
.end method
