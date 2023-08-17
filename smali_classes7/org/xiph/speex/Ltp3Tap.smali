.class public Lorg/xiph/speex/Ltp3Tap;
.super Lorg/xiph/speex/Ltp;
.source "SourceFile"


# instance fields
.field private e:[[F

.field private gain:[F

.field private gain_bits:I

.field private gain_cdbk:[I

.field private pitch_bits:I


# direct methods
.method public constructor <init>([III)V
    .locals 1

    invoke-direct {p0}, Lorg/xiph/speex/Ltp;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    iput-object p1, p0, Lorg/xiph/speex/Ltp3Tap;->gain_cdbk:[I

    iput p2, p0, Lorg/xiph/speex/Ltp3Tap;->gain_bits:I

    iput p3, p0, Lorg/xiph/speex/Ltp3Tap;->pitch_bits:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const-class p2, F

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x80
    .end array-data
.end method

.method private pitch_gain_search_3tap([F[F[F[F[FIIIILorg/xiph/speex/Bits;[FI[F[I)F
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p9

    const-class v2, F

    const/4 v11, 0x3

    new-array v12, v11, [F

    const/4 v13, 0x2

    new-array v3, v13, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [[F

    iget v3, v0, Lorg/xiph/speex/Ltp3Tap;->gain_bits:I

    const/4 v15, 0x1

    shl-int v9, v15, v3

    new-array v3, v13, [I

    aput v10, v3, v15

    const/4 v8, 0x0

    aput v11, v3, v8

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [[F

    new-array v3, v13, [I

    aput v10, v3, v15

    aput v11, v3, v8

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    move v7, v13

    :goto_0
    const/4 v2, 0x0

    if-ltz v7, :cond_6

    add-int/lit8 v3, p7, 0x1

    sub-int/2addr v3, v7

    move v4, v8

    :goto_1
    if-ge v4, v10, :cond_2

    sub-int v5, v4, v3

    if-gez v5, :cond_0

    iget-object v5, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v5, v5, v7

    add-int v6, p12, v4

    sub-int/2addr v6, v3

    aget v6, p11, v6

    aput v6, v5, v4

    goto :goto_2

    :cond_0
    sub-int v5, v5, p7

    if-gez v5, :cond_1

    iget-object v5, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v5, v5, v7

    add-int v6, p12, v4

    sub-int/2addr v6, v3

    sub-int v6, v6, p7

    aget v6, p11, v6

    aput v6, v5, v4

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v5, v5, v7

    aput v2, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ne v7, v13, :cond_3

    iget-object v2, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x0

    aget-object v17, v16, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v18, v7

    move-object/from16 v7, v17

    move v15, v8

    move/from16 v8, p9

    move/from16 v19, v9

    move/from16 v9, p8

    invoke-static/range {v2 .. v9}, Lorg/xiph/speex/Filters;->syn_percep_zero([FI[F[F[F[FII)V

    goto :goto_5

    :cond_3
    move/from16 v18, v7

    move v15, v8

    move/from16 v19, v9

    :goto_3
    add-int/lit8 v3, v10, -0x1

    if-ge v8, v3, :cond_4

    aget-object v3, v16, v18

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v7, v18, 0x1

    aget-object v5, v16, v7

    aget v5, v5, v8

    aput v5, v3, v4

    move v8, v4

    goto :goto_3

    :cond_4
    aget-object v3, v16, v18

    aput v2, v3, v15

    move v8, v15

    :goto_4
    if-ge v8, v10, :cond_5

    aget-object v2, v16, v18

    aget v3, v2, v8

    iget-object v4, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v4, v4, v18

    aget v4, v4, v15

    aget v5, p13, v8

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v7, v18, -0x1

    move v8, v15

    move/from16 v9, v19

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_6
    move v15, v8

    move/from16 v19, v9

    :goto_6
    if-ge v8, v11, :cond_7

    aget-object v3, v16, v8

    invoke-static {v3, v15, v1, v15, v10}, Lorg/xiph/speex/Ltp;->inner_prod([FI[FII)F

    move-result v3

    aput v3, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    move v8, v15

    :goto_7
    if-ge v8, v11, :cond_9

    move v3, v15

    :goto_8
    if-gt v3, v8, :cond_8

    aget-object v4, v14, v8

    aget-object v5, v14, v3

    aget-object v6, v16, v8

    aget-object v7, v16, v3

    invoke-static {v6, v15, v7, v15, v10}, Lorg/xiph/speex/Ltp;->inner_prod([FI[FII)F

    move-result v6

    aput v6, v5, v8

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    const/16 v3, 0x9

    new-array v3, v3, [F

    aget v4, v12, v13

    aput v4, v3, v15

    const/4 v4, 0x1

    aget v5, v12, v4

    aput v5, v3, v4

    aget v5, v12, v15

    aput v5, v3, v13

    aget-object v5, v14, v4

    aget v5, v5, v13

    aput v5, v3, v11

    aget-object v5, v14, v15

    aget v5, v5, v4

    const/4 v6, 0x4

    aput v5, v3, v6

    aget-object v5, v14, v15

    aget v5, v5, v13

    const/4 v7, 0x5

    aput v5, v3, v7

    aget-object v5, v14, v13

    aget v5, v5, v13

    const/4 v8, 0x6

    aput v5, v3, v8

    aget-object v5, v14, v4

    aget v5, v5, v4

    const/4 v4, 0x7

    aput v5, v3, v4

    aget-object v5, v14, v15

    aget v5, v5, v15

    const/16 v9, 0x8

    aput v5, v3, v9

    move v14, v2

    move v5, v15

    move v12, v5

    :goto_9
    const/high16 v17, 0x3c800000    # 0.015625f

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v9, v19

    if-ge v5, v9, :cond_c

    mul-int/lit8 v19, v5, 0x3

    iget-object v4, v0, Lorg/xiph/speex/Ltp3Tap;->gain_cdbk:[I

    aget v8, v4, v19

    int-to-float v8, v8

    mul-float v8, v8, v17

    add-float v8, v8, v18

    add-int/lit8 v20, v19, 0x1

    aget v7, v4, v20

    int-to-float v7, v7

    mul-float v7, v7, v17

    add-float v7, v7, v18

    add-int/lit8 v19, v19, 0x2

    aget v4, v4, v19

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v4, v4, v18

    aget v17, v3, v15

    mul-float v17, v17, v8

    add-float v17, v17, v2

    const/16 v19, 0x1

    aget v20, v3, v19

    mul-float v20, v20, v7

    add-float v17, v17, v20

    aget v19, v3, v13

    mul-float v19, v19, v4

    add-float v17, v17, v19

    aget v19, v3, v11

    mul-float v19, v19, v8

    mul-float v19, v19, v7

    sub-float v17, v17, v19

    aget v19, v3, v6

    mul-float v19, v19, v4

    mul-float v19, v19, v7

    sub-float v17, v17, v19

    const/16 v19, 0x5

    aget v20, v3, v19

    mul-float v20, v20, v4

    mul-float v20, v20, v8

    sub-float v17, v17, v20

    const/16 v20, 0x6

    aget v21, v3, v20

    mul-float v21, v21, v18

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    sub-float v17, v17, v21

    const/4 v8, 0x7

    aget v21, v3, v8

    mul-float v21, v21, v18

    mul-float v21, v21, v7

    mul-float v21, v21, v7

    sub-float v17, v17, v21

    const/16 v7, 0x8

    aget v21, v3, v7

    mul-float v21, v21, v18

    mul-float v21, v21, v4

    mul-float v21, v21, v4

    sub-float v17, v17, v21

    cmpl-float v4, v17, v14

    if-gtz v4, :cond_a

    if-nez v5, :cond_b

    :cond_a
    move v12, v5

    move/from16 v14, v17

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    move/from16 v8, v20

    move/from16 v22, v9

    move v9, v7

    move/from16 v7, v19

    move/from16 v19, v22

    goto/16 :goto_9

    :cond_c
    iget-object v3, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    iget-object v4, v0, Lorg/xiph/speex/Ltp3Tap;->gain_cdbk:[I

    mul-int/lit8 v5, v12, 0x3

    aget v6, v4, v5

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float v6, v6, v18

    aput v6, v3, v15

    add-int/lit8 v6, v5, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float v6, v6, v18

    const/4 v7, 0x1

    aput v6, v3, v7

    add-int/2addr v5, v13

    aget v4, v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v4, v4, v18

    aput v4, v3, v13

    aput v12, p14, v15

    move v8, v15

    :goto_a
    if-ge v8, v10, :cond_d

    add-int v3, p6, v8

    iget-object v4, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    aget v5, v4, v15

    iget-object v6, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v7, v6, v13

    aget v7, v7, v8

    mul-float/2addr v5, v7

    const/4 v7, 0x1

    aget v9, v4, v7

    aget-object v11, v6, v7

    aget v7, v11, v8

    mul-float/2addr v9, v7

    add-float/2addr v5, v9

    aget v4, v4, v13

    aget-object v6, v6, v15

    aget v6, v6, v8

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    aput v5, p5, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_d
    move v8, v15

    :goto_b
    if-ge v8, v10, :cond_e

    aget v3, v1, v8

    aget v3, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_e
    move v8, v15

    :goto_c
    if-ge v8, v10, :cond_f

    aget v3, v1, v8

    iget-object v4, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    aget v5, v4, v13

    aget-object v6, v16, v15

    aget v6, v6, v8

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    const/4 v5, 0x1

    aget v6, v4, v5

    aget-object v7, v16, v5

    aget v5, v7, v8

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    aget v5, v4, v15

    aget-object v6, v16, v13

    aget v6, v6, v8

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    aget v5, v1, v8

    aget v6, v4, v13

    aget-object v7, v16, v15

    aget v7, v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v4, v6

    aget-object v9, v16, v6

    aget v9, v9, v8

    mul-float/2addr v7, v9

    sub-float/2addr v5, v7

    aget v4, v4, v15

    aget-object v7, v16, v13

    aget v7, v7, v8

    mul-float/2addr v4, v7

    sub-float/2addr v5, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_f
    return v2

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public final quant([F[FI[F[F[F[FIIIFIILorg/xiph/speex/Bits;[FI[FI)I
    .locals 26

    move-object/from16 v15, p0

    move/from16 v14, p9

    move/from16 v3, p10

    move/from16 v13, p13

    move-object/from16 v12, p14

    const/4 v0, 0x1

    new-array v11, v0, [I

    const/16 v1, 0xa

    move/from16 v2, p18

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-array v10, v1, [I

    new-array v6, v1, [F

    const/16 v16, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_9

    if-ge v3, v14, :cond_1

    goto/16 :goto_8

    :cond_1
    new-array v8, v13, [F

    sub-int v2, v3, v14

    add-int/2addr v2, v0

    if-le v1, v2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, p13

    move/from16 p2, v5

    move-object v5, v10

    move/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lorg/xiph/speex/Ltp;->open_loop_nbest_pitch([FIIII[I[FI)V

    const/high16 v0, -0x40800000    # -1.0f

    move/from16 v17, v0

    move v0, v9

    move v5, v0

    move v6, v5

    move/from16 v18, v6

    :goto_2
    if-ge v6, v7, :cond_7

    aget v19, v10, v6

    move v0, v9

    :goto_3
    if-ge v0, v13, :cond_3

    add-int v1, p8, v0

    aput v16, p7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v20, v5

    move-object/from16 v5, p7

    move/from16 v21, v6

    move/from16 v6, p8

    move/from16 v22, v7

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, p12

    move v15, v9

    move/from16 v9, p13

    move-object/from16 v24, v10

    move-object/from16 v10, p14

    move-object/from16 v25, v11

    move-object/from16 v11, p15

    move/from16 v12, p16

    move v15, v13

    move-object/from16 v13, p17

    move-object/from16 v14, v25

    invoke-direct/range {v0 .. v14}, Lorg/xiph/speex/Ltp3Tap;->pitch_gain_search_3tap([F[F[F[F[FIIIILorg/xiph/speex/Bits;[FI[F[I)F

    move-result v0

    cmpg-float v1, v0, v17

    if-ltz v1, :cond_5

    cmpg-float v1, v17, v16

    if-gez v1, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v5, v20

    const/4 v1, 0x0

    goto :goto_6

    :cond_5
    :goto_4
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v15, :cond_6

    add-int v1, p8, v9

    aget v1, p7, v1

    aput v1, v23, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    aget v2, v25, v1

    move/from16 v17, v0

    move v5, v2

    move/from16 v18, v19

    :goto_6
    add-int/lit8 v6, v21, 0x1

    move/from16 v14, p9

    move-object/from16 v12, p14

    move v9, v1

    move v13, v15

    move/from16 v0, v19

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v15, p0

    goto :goto_2

    :cond_7
    move/from16 v20, v5

    move-object/from16 v23, v8

    move v1, v9

    move v15, v13

    sub-int v2, v18, p9

    move v3, v1

    move-object/from16 v1, p0

    iget v4, v1, Lorg/xiph/speex/Ltp3Tap;->pitch_bits:I

    move-object/from16 v5, p14

    invoke-virtual {v5, v2, v4}, Lorg/xiph/speex/Bits;->pack(II)V

    iget v2, v1, Lorg/xiph/speex/Ltp3Tap;->gain_bits:I

    move/from16 v9, v20

    invoke-virtual {v5, v9, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    move v9, v3

    :goto_7
    if-ge v9, v15, :cond_8

    add-int v2, p8, v9

    aget v3, v23, v9

    aput v3, p7, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    return v0

    :cond_9
    :goto_8
    move v3, v9

    move-object v5, v12

    move-object v1, v15

    move v15, v13

    iget v0, v1, Lorg/xiph/speex/Ltp3Tap;->pitch_bits:I

    invoke-virtual {v5, v3, v0}, Lorg/xiph/speex/Bits;->pack(II)V

    iget v0, v1, Lorg/xiph/speex/Ltp3Tap;->gain_bits:I

    invoke-virtual {v5, v3, v0}, Lorg/xiph/speex/Bits;->pack(II)V

    move v9, v3

    :goto_9
    if-ge v9, v15, :cond_a

    add-int v0, p8, v9

    aput v16, p7, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_a
    return p9
.end method

.method public final unquant([FIIFI[FLorg/xiph/speex/Bits;IIF)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p8

    iget v4, v0, Lorg/xiph/speex/Ltp3Tap;->pitch_bits:I

    invoke-virtual {v2, v4}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v4

    add-int v4, v4, p3

    iget v5, v0, Lorg/xiph/speex/Ltp3Tap;->gain_bits:I

    invoke-virtual {v2, v5}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v2

    iget-object v5, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    iget-object v6, v0, Lorg/xiph/speex/Ltp3Tap;->gain_cdbk:[I

    const/4 v7, 0x3

    mul-int/2addr v2, v7

    aget v8, v6, v2

    int-to-float v8, v8

    const/high16 v9, 0x3c800000    # 0.015625f

    mul-float/2addr v8, v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    const/4 v11, 0x0

    aput v8, v5, v11

    add-int/lit8 v8, v2, 0x1

    aget v8, v6, v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    const/4 v12, 0x1

    aput v8, v5, v12

    const/4 v8, 0x2

    add-int/2addr v2, v8

    aget v2, v6, v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    add-float/2addr v2, v10

    aput v2, v5, v8

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    move/from16 v6, p9

    if-le v4, v6, :cond_4

    aget v5, v5, v12

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x4

    if-ge v3, v6, :cond_0

    move/from16 v3, p10

    goto :goto_0

    :cond_0
    const v3, 0x3ecccccd    # 0.4f

    mul-float v3, v3, p10

    :goto_0
    const v6, 0x3f733333    # 0.95f

    cmpl-float v9, v3, v6

    if-lez v9, :cond_1

    move v3, v6

    :cond_1
    iget-object v6, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    aget v9, v6, v11

    cmpl-float v9, v9, v2

    if-lez v9, :cond_2

    aget v9, v6, v11

    add-float/2addr v5, v9

    goto :goto_1

    :cond_2
    aget v9, v6, v11

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    :goto_1
    aget v9, v6, v8

    cmpl-float v9, v9, v2

    if-lez v9, :cond_3

    aget v6, v6, v8

    add-float/2addr v5, v6

    goto :goto_2

    :cond_3
    aget v6, v6, v11

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    :goto_2
    cmpl-float v6, v5, v3

    if-lez v6, :cond_4

    div-float/2addr v3, v5

    move v5, v11

    :goto_3
    if-ge v5, v7, :cond_4

    iget-object v6, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    aget v9, v6, v5

    mul-float/2addr v9, v3

    aput v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    aget v5, v3, v11

    aput v5, p6, v11

    aget v5, v3, v12

    aput v5, p6, v12

    aget v3, v3, v8

    aput v3, p6, v8

    move v3, v11

    :goto_4
    if-ge v3, v7, :cond_a

    add-int/lit8 v5, v4, 0x1

    sub-int/2addr v5, v3

    if-le v1, v5, :cond_5

    move v6, v5

    goto :goto_5

    :cond_5
    move v6, v1

    :goto_5
    add-int v9, v5, v4

    if-le v1, v9, :cond_6

    goto :goto_6

    :cond_6
    move v9, v1

    :goto_6
    move v10, v11

    :goto_7
    if-ge v10, v6, :cond_7

    iget-object v13, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v13, v13, v3

    add-int v14, p2, v10

    sub-int/2addr v14, v5

    aget v14, p1, v14

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    if-ge v6, v9, :cond_8

    iget-object v10, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v10, v10, v3

    add-int v13, p2, v6

    sub-int/2addr v13, v5

    sub-int/2addr v13, v4

    aget v13, p1, v13

    aput v13, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    if-ge v9, v1, :cond_9

    iget-object v5, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v5, v5, v3

    aput v2, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move v2, v11

    :goto_a
    if-ge v2, v1, :cond_b

    add-int v3, p2, v2

    iget-object v5, v0, Lorg/xiph/speex/Ltp3Tap;->gain:[F

    aget v6, v5, v11

    iget-object v7, v0, Lorg/xiph/speex/Ltp3Tap;->e:[[F

    aget-object v9, v7, v8

    aget v9, v9, v2

    mul-float/2addr v6, v9

    aget v9, v5, v12

    aget-object v10, v7, v12

    aget v10, v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v6, v9

    aget v5, v5, v8

    aget-object v7, v7, v11

    aget v7, v7, v2

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    aput v6, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    return v4
.end method
