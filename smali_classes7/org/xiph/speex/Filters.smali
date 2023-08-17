.class public Lorg/xiph/speex/Filters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private last_pitch:I

.field private last_pitch_gain:[F

.field private smooth_gain:F

.field private xx:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/xiph/speex/Filters;->last_pitch_gain:[F

    const/16 v0, 0x400

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/xiph/speex/Filters;->xx:[F

    return-void
.end method

.method public static final bw_lpc(F[F[FI)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p3, 0x1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    mul-float/2addr v2, v0

    aput v2, p2, v1

    mul-float/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final filter_mem2([FI[F[FII[FI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, p1, v1

    aget v3, p0, v2

    aget v4, p2, v0

    mul-float/2addr v4, v3

    add-int/lit8 v5, p7, 0x0

    aget v5, p6, v5

    add-float/2addr v4, v5

    aput v4, p0, v2

    aget v2, p0, v2

    move v4, v0

    :goto_1
    add-int/lit8 v5, p5, -0x1

    if-ge v4, v5, :cond_0

    add-int v5, p7, v4

    add-int/lit8 v6, v5, 0x1

    aget v6, p6, v6

    add-int/lit8 v4, v4, 0x1

    aget v7, p2, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aget v7, p3, v4

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    aput v6, p6, v5

    goto :goto_1

    :cond_0
    add-int v4, p7, p5

    add-int/lit8 v4, v4, -0x1

    aget v5, p2, p5

    mul-float/2addr v5, v3

    aget v3, p3, p5

    mul-float/2addr v3, v2

    sub-float/2addr v5, v3

    aput v5, p6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final filter_mem2([FI[F[F[FIII[FI)V
    .locals 9

    const/4 v0, 0x0

    move v1, p6

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int v3, p1, v2

    aget v3, p0, v3

    add-int v4, p5, v2

    aget v5, p2, v0

    mul-float/2addr v5, v3

    aget v6, p8, v0

    add-float/2addr v5, v6

    aput v5, p4, v4

    aget v4, p4, v4

    move v5, v0

    :goto_1
    add-int/lit8 v6, p7, -0x1

    if-ge v5, v6, :cond_0

    add-int v6, p9, v5

    add-int/lit8 v7, v6, 0x1

    aget v7, p8, v7

    add-int/lit8 v5, v5, 0x1

    aget v8, p2, v5

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aget v8, p3, v5

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, p8, v6

    goto :goto_1

    :cond_0
    add-int v5, p9, p7

    add-int/lit8 v5, v5, -0x1

    aget v6, p2, p7

    mul-float/2addr v6, v3

    aget v3, p3, p7

    mul-float/2addr v3, v4

    sub-float/2addr v6, v3

    aput v6, p8, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final fir_mem2([FI[F[FIII[F)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    add-int v2, p1, v1

    aget v2, p0, v2

    add-int v3, p4, v1

    aget v4, p2, v0

    mul-float/2addr v4, v2

    aget v5, p7, v0

    add-float/2addr v4, v5

    aput v4, p3, v3

    move v3, v0

    :goto_1
    add-int/lit8 v4, p6, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget v5, p7, v4

    aget v6, p2, v4

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, p7, v3

    move v3, v4

    goto :goto_1

    :cond_0
    aget v3, p2, p6

    mul-float/2addr v3, v2

    aput v3, p7, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final iir_mem2([FI[F[FIII[F)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    add-int v2, p4, v1

    add-int v3, p1, v1

    aget v3, p0, v3

    aget v4, p7, v0

    add-float/2addr v3, v4

    aput v3, p3, v2

    move v3, v0

    :goto_1
    add-int/lit8 v4, p6, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget v5, p7, v4

    aget v6, p2, v4

    aget v7, p3, v2

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, p7, v3

    move v3, v4

    goto :goto_1

    :cond_0
    aget v3, p2, p6

    neg-float v3, v3

    aget v2, p3, v2

    mul-float/2addr v3, v2

    aput v3, p7, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final qmf_decomp([F[F[F[FII[F)V
    .locals 16

    move/from16 v0, p4

    move/from16 v1, p5

    new-array v2, v1, [F

    add-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [F

    add-int/lit8 v4, v1, -0x1

    shr-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_0

    sub-int v8, v1, v7

    add-int/lit8 v8, v8, -0x1

    aget v9, p1, v7

    aput v9, v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_1

    sub-int v8, v1, v7

    add-int/lit8 v8, v8, -0x2

    aget v8, p6, v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_2
    if-ge v7, v0, :cond_2

    add-int v8, v7, v1

    add-int/lit8 v8, v8, -0x1

    aget v9, p0, v7

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v1, v6

    move v7, v1

    :goto_3
    if-ge v1, v0, :cond_4

    const/4 v8, 0x0

    aput v8, p2, v7

    aput v8, p3, v7

    move v8, v6

    :goto_4
    if-ge v8, v5, :cond_3

    aget v9, p2, v7

    aget v10, v2, v8

    add-int v11, v1, v8

    aget v12, v3, v11

    add-int v13, v4, v1

    sub-int v14, v13, v8

    aget v15, v3, v14

    add-float/2addr v12, v15

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    aput v9, p2, v7

    aget v9, p3, v7

    aget v10, v2, v8

    aget v11, v3, v11

    aget v12, v3, v14

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    aput v9, p3, v7

    add-int/lit8 v8, v8, 0x1

    aget v9, p2, v7

    aget v10, v2, v8

    add-int v11, v1, v8

    aget v12, v3, v11

    sub-int/2addr v13, v8

    aget v14, v3, v13

    add-float/2addr v12, v14

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    aput v9, p2, v7

    aget v9, p3, v7

    aget v10, v2, v8

    aget v11, v3, v11

    aget v12, v3, v13

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, p3, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    if-ge v6, v4, :cond_5

    sub-int v1, v0, v6

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    aput v1, p6, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static final residue_percep_zero([FI[F[F[F[FII)V
    .locals 12

    move/from16 v10, p7

    new-array v11, v10, [F

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v11

    invoke-static/range {v0 .. v9}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    const/4 v1, 0x0

    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object v7, v11

    invoke-static/range {v0 .. v7}, Lorg/xiph/speex/Filters;->fir_mem2([FI[F[FIII[F)V

    return-void
.end method

.method public static final syn_percep_zero([FI[F[F[F[FII)V
    .locals 12

    move/from16 v10, p7

    new-array v11, v10, [F

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v11

    invoke-static/range {v0 .. v9}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    const/4 v1, 0x0

    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object v7, v11

    invoke-static/range {v0 .. v7}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    return-void
.end method


# virtual methods
.method public comb_filter([FI[FIII[FF)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v4, p2

    const/4 v5, 0x0

    :goto_0
    add-int v6, p2, v1

    if-ge v4, v6, :cond_0

    aget v6, p1, v4

    aget v7, p1, v4

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    aget v6, p7, v4

    const/4 v7, 0x1

    aget v8, p7, v7

    add-float/2addr v6, v8

    const/4 v8, 0x2

    aget v9, p7, v8

    add-float/2addr v6, v9

    iget-object v9, v0, Lorg/xiph/speex/Filters;->last_pitch_gain:[F

    aget v10, v9, v4

    add-float/2addr v6, v10

    aget v10, v9, v7

    add-float/2addr v6, v10

    aget v9, v9, v8

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v6, v9

    const v10, 0x3fa66666    # 1.3f

    cmpl-float v11, v6, v10

    if-lez v11, :cond_1

    div-float/2addr v10, v6

    mul-float v10, v10, p8

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    cmpg-float v11, v6, v9

    if-gez v11, :cond_2

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v6, v11

    mul-float/2addr v10, v6

    :cond_2
    int-to-float v6, v1

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v6, v11, v6

    move/from16 v12, p2

    move v13, v4

    const/4 v14, 0x0

    :goto_2
    if-ge v13, v1, :cond_3

    add-float/2addr v14, v6

    add-int v15, p4, v13

    aget v16, p1, v12

    mul-float v17, v10, v14

    aget v18, p7, v4

    sub-int v19, v12, v2

    add-int/lit8 v20, v19, 0x1

    aget v20, p1, v20

    mul-float v18, v18, v20

    aget v20, p7, v7

    aget v21, p1, v19

    mul-float v20, v20, v21

    add-float v18, v18, v20

    aget v20, p7, v8

    add-int/lit8 v19, v19, -0x1

    aget v19, p1, v19

    mul-float v20, v20, v19

    add-float v18, v18, v20

    mul-float v17, v17, v18

    add-float v16, v16, v17

    sub-float v17, v11, v14

    mul-float v17, v17, v10

    iget-object v3, v0, Lorg/xiph/speex/Filters;->last_pitch_gain:[F

    aget v19, v3, v4

    iget v11, v0, Lorg/xiph/speex/Filters;->last_pitch:I

    sub-int v20, v12, v11

    add-int/lit8 v20, v20, 0x1

    aget v20, p1, v20

    mul-float v19, v19, v20

    aget v20, v3, v7

    sub-int v21, v12, v11

    aget v21, p1, v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aget v3, v3, v8

    sub-int v11, v12, v11

    sub-int/2addr v11, v7

    aget v11, p1, v11

    mul-float/2addr v3, v11

    add-float v19, v19, v3

    mul-float v17, v17, v19

    add-float v16, v16, v17

    aput v16, p3, v15

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v7

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lorg/xiph/speex/Filters;->last_pitch_gain:[F

    aget v6, p7, v4

    aput v6, v3, v4

    aget v4, p7, v7

    aput v4, v3, v7

    aget v4, p7, v8

    aput v4, v3, v8

    iput v2, v0, Lorg/xiph/speex/Filters;->last_pitch:I

    move/from16 v2, p4

    const/4 v3, 0x0

    :goto_3
    add-int v4, p4, v1

    if-ge v2, v4, :cond_4

    aget v4, p3, v2

    aget v6, p3, v2

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v1

    div-float/2addr v5, v3

    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v2, v1, v9

    if-gez v2, :cond_5

    goto :goto_4

    :cond_5
    move v9, v1

    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v9, v1

    if-lez v2, :cond_6

    move v11, v1

    goto :goto_5

    :cond_6
    move v11, v9

    :goto_5
    move/from16 v1, p4

    :goto_6
    if-ge v1, v4, :cond_7

    const v2, 0x3f75c28f    # 0.96f

    iget v3, v0, Lorg/xiph/speex/Filters;->smooth_gain:F

    mul-float/2addr v3, v2

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v2, v11

    add-float/2addr v3, v2

    iput v3, v0, Lorg/xiph/speex/Filters;->smooth_gain:F

    aget v2, p3, v1

    mul-float/2addr v2, v3

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public fir_mem_up([F[F[FII[F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    div-int/lit8 v5, v1, 0x2

    if-ge v4, v5, :cond_0

    iget-object v6, v0, Lorg/xiph/speex/Filters;->xx:[F

    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v4

    aget v5, p1, v5

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_1

    iget-object v5, v0, Lorg/xiph/speex/Filters;->xx:[F

    add-int v6, v1, v4

    add-int/lit8 v7, v4, 0x1

    aget v7, p6, v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_3

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/xiph/speex/Filters;->xx:[F

    add-int/lit8 v8, v1, -0x4

    sub-int/2addr v8, v4

    aget v7, v7, v8

    move v11, v3

    move v8, v6

    move v9, v8

    move v10, v7

    move v7, v9

    :goto_3
    if-ge v11, v2, :cond_2

    aget v12, p2, v11

    add-int/lit8 v13, v11, 0x1

    aget v13, p2, v13

    iget-object v14, v0, Lorg/xiph/speex/Filters;->xx:[F

    add-int/lit8 v15, v1, -0x2

    add-int/2addr v15, v11

    sub-int/2addr v15, v4

    aget v15, v14, v15

    mul-float v16, v12, v15

    add-float v6, v6, v16

    mul-float v16, v13, v15

    add-float v7, v7, v16

    mul-float/2addr v12, v10

    add-float/2addr v8, v12

    mul-float/2addr v13, v10

    add-float/2addr v9, v13

    add-int/lit8 v10, v11, 0x2

    aget v10, p2, v10

    add-int/lit8 v12, v11, 0x3

    aget v12, p2, v12

    add-int v13, v1, v11

    sub-int/2addr v13, v4

    aget v13, v14, v13

    mul-float v14, v10, v13

    add-float/2addr v6, v14

    mul-float v14, v12, v13

    add-float/2addr v7, v14

    mul-float/2addr v10, v15

    add-float/2addr v8, v10

    mul-float/2addr v12, v15

    add-float/2addr v9, v12

    add-int/lit8 v11, v11, 0x4

    move v10, v13

    goto :goto_3

    :cond_2
    aput v6, p3, v4

    add-int/lit8 v6, v4, 0x1

    aput v7, p3, v6

    add-int/lit8 v6, v4, 0x2

    aput v8, p3, v6

    add-int/lit8 v6, v4, 0x3

    aput v9, p3, v6

    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v3, v5, :cond_4

    add-int/lit8 v1, v3, 0x1

    iget-object v2, v0, Lorg/xiph/speex/Filters;->xx:[F

    aget v2, v2, v3

    aput v2, p6, v1

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_4
    return-void
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/Filters;->last_pitch:I

    iget-object v1, p0, Lorg/xiph/speex/Filters;->last_pitch_gain:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    aput v3, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/xiph/speex/Filters;->smooth_gain:F

    return-void
.end method
