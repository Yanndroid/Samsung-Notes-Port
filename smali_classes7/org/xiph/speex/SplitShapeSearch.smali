.class public Lorg/xiph/speex/SplitShapeSearch;
.super Lorg/xiph/speex/CbSearch;
.source "SourceFile"


# static fields
.field public static final MAX_COMPLEXITY:I = 0xa


# instance fields
.field private E:[F

.field private e:[F

.field private have_sign:I

.field private ind:[I

.field private nb_subvect:I

.field private nind:[[I

.field private nt:[[F

.field private oind:[[I

.field private ot:[[F

.field private r2:[F

.field private shape_bits:I

.field private shape_cb:[I

.field private shape_cb_size:I

.field private signs:[I

.field private subframesize:I

.field private subvect_size:I

.field private t:[F


# direct methods
.method public constructor <init>(III[III)V
    .locals 3

    const-class v0, I

    const-class v1, F

    invoke-direct {p0}, Lorg/xiph/speex/CbSearch;-><init>()V

    iput p1, p0, Lorg/xiph/speex/SplitShapeSearch;->subframesize:I

    iput p2, p0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    iput p3, p0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    iput-object p4, p0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb:[I

    iput p5, p0, Lorg/xiph/speex/SplitShapeSearch;->shape_bits:I

    iput p6, p0, Lorg/xiph/speex/SplitShapeSearch;->have_sign:I

    new-array p2, p3, [I

    iput-object p2, p0, Lorg/xiph/speex/SplitShapeSearch;->ind:[I

    new-array p2, p3, [I

    iput-object p2, p0, Lorg/xiph/speex/SplitShapeSearch;->signs:[I

    const/4 p2, 0x1

    shl-int p4, p2, p5

    iput p4, p0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    const/4 p4, 0x2

    new-array p5, p4, [I

    aput p1, p5, p2

    const/4 p6, 0x0

    const/16 v2, 0xa

    aput v2, p5, p6

    invoke-static {v1, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [[F

    iput-object p5, p0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    new-array p5, p4, [I

    aput p1, p5, p2

    aput v2, p5, p6

    invoke-static {v1, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [[F

    iput-object p5, p0, Lorg/xiph/speex/SplitShapeSearch;->nt:[[F

    new-array p5, p4, [I

    aput p3, p5, p2

    aput v2, p5, p6

    invoke-static {v0, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [[I

    iput-object p5, p0, Lorg/xiph/speex/SplitShapeSearch;->oind:[[I

    new-array p4, p4, [I

    aput p3, p4, p2

    aput v2, p4, p6

    invoke-static {v0, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    iput-object p2, p0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/SplitShapeSearch;->e:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/SplitShapeSearch;->r2:[F

    iget p1, p0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/SplitShapeSearch;->E:[F

    return-void
.end method


# virtual methods
.method public final quant([F[F[F[FII[FI[FLorg/xiph/speex/Bits;I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v9, p6

    const/16 v1, 0xa

    move/from16 v2, p11

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v2, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    iget v3, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    new-array v3, v1, [I

    new-array v4, v1, [F

    new-array v5, v1, [F

    new-array v6, v1, [F

    const/16 v19, 0x0

    move/from16 v7, v19

    :goto_1
    if-ge v7, v1, :cond_2

    move/from16 v8, v19

    :goto_2
    iget v10, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v8, v10, :cond_1

    iget-object v10, v0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    aget-object v10, v10, v7

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->oind:[[I

    aget-object v11, v11, v7

    const/4 v12, -0x1

    aput v12, v11, v8

    aput v12, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move/from16 v7, v19

    :goto_3
    if-ge v7, v1, :cond_4

    move/from16 v8, v19

    :goto_4
    if-ge v8, v9, :cond_3

    iget-object v10, v0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    aget-object v10, v10, v7

    aget v11, p1, v8

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move/from16 v7, v19

    :goto_5
    iget v8, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    const/16 v20, 0x0

    if-ge v7, v8, :cond_8

    iget v8, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    mul-int v10, v7, v8

    mul-int/2addr v8, v7

    move/from16 v11, v19

    :goto_6
    iget v12, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v11, v12, :cond_6

    add-int v12, v10, v11

    aput v20, v2, v12

    move/from16 v13, v19

    :goto_7
    if-gt v13, v11, :cond_5

    aget v14, v2, v12

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fa0000000000000L    # 0.03125

    iget-object v9, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb:[I

    add-int v18, v8, v13

    aget v9, v9, v18

    move/from16 p11, v8

    int-to-double v8, v9

    mul-double v8, v8, v16

    sub-int v16, v11, v13

    move-object/from16 v21, v4

    aget v4, p9, v16

    move-object/from16 v22, v3

    float-to-double v3, v4

    mul-double/2addr v8, v3

    add-double/2addr v14, v8

    double-to-float v3, v14

    aput v3, v2, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, p6

    move/from16 v8, p11

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    goto :goto_7

    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 p11, v8

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, p6

    goto :goto_6

    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    iget-object v3, v0, Lorg/xiph/speex/SplitShapeSearch;->E:[F

    aput v20, v3, v7

    move/from16 v3, v19

    :goto_8
    iget v4, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v3, v4, :cond_7

    iget-object v4, v0, Lorg/xiph/speex/SplitShapeSearch;->E:[F

    aget v8, v4, v7

    add-int v9, v10, v3

    aget v11, v2, v9

    aget v9, v2, v9

    mul-float/2addr v11, v9

    add-float/2addr v8, v11

    aput v8, v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, p6

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    goto :goto_5

    :cond_8
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v3, v19

    :goto_9
    if-ge v3, v1, :cond_9

    aput v20, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    move/from16 v3, v19

    :goto_a
    iget v4, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    const/high16 v7, 0x3d000000    # 0.03125f

    const/high16 v9, -0x40800000    # -1.0f

    if-ge v3, v4, :cond_25

    iget v4, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    mul-int/2addr v4, v3

    move/from16 v10, v19

    :goto_b
    if-ge v10, v1, :cond_a

    aput v9, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_a
    move/from16 v15, v19

    :goto_c
    if-ge v15, v1, :cond_21

    iget v10, v0, Lorg/xiph/speex/SplitShapeSearch;->have_sign:I

    if-eqz v10, :cond_b

    iget-object v10, v0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    aget-object v10, v10, v15

    iget v13, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    iget v14, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    iget-object v12, v0, Lorg/xiph/speex/SplitShapeSearch;->E:[F

    move v11, v4

    move-object/from16 v16, v12

    move-object v12, v2

    move/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v1

    move-object/from16 v17, v22

    move-object/from16 v18, v21

    invoke-static/range {v10 .. v18}, Lorg/xiph/speex/VQ;->nbest_sign([FI[FII[FI[I[F)V

    goto :goto_d

    :cond_b
    move/from16 v23, v15

    iget-object v10, v0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    aget-object v10, v10, v23

    iget v13, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    iget v14, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    iget-object v15, v0, Lorg/xiph/speex/SplitShapeSearch;->E:[F

    move v11, v4

    move-object v12, v2

    move/from16 v16, v1

    move-object/from16 v17, v22

    move-object/from16 v18, v21

    invoke-static/range {v10 .. v18}, Lorg/xiph/speex/VQ;->nbest([FI[FII[FI[I[F)V

    :goto_d
    move/from16 v10, v19

    :goto_e
    if-ge v10, v1, :cond_1f

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    aget-object v11, v11, v23

    move v12, v4

    :goto_f
    iget v13, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    add-int v14, v4, v13

    if-ge v12, v14, :cond_c

    iget-object v13, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    aget v14, v11, v12

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_c
    aget v12, v22, v10

    iget v14, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    if-lt v12, v14, :cond_d

    sub-int/2addr v12, v14

    move v14, v9

    goto :goto_10

    :cond_d
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_10
    mul-int/2addr v12, v13

    cmpl-float v13, v14, v20

    if-lez v13, :cond_e

    move/from16 v13, v19

    :goto_11
    iget v14, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v13, v14, :cond_f

    iget-object v14, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    add-int v15, v4, v13

    aget v16, v14, v15

    add-int v17, v12, v13

    aget v17, v2, v17

    sub-float v16, v16, v17

    aput v16, v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_e
    move/from16 v13, v19

    :goto_12
    iget v14, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v13, v14, :cond_f

    iget-object v14, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    add-int v15, v4, v13

    aget v16, v14, v15

    add-int v17, v12, v13

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_f
    aget v12, v6, v23

    move v13, v4

    :goto_13
    iget v14, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    add-int v15, v4, v14

    if-ge v13, v15, :cond_10

    iget-object v14, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    aget v15, v14, v13

    aget v14, v14, v13

    mul-float/2addr v15, v14

    add-float/2addr v12, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_10
    add-int/lit8 v13, v1, -0x1

    aget v15, v5, v13

    cmpg-float v15, v12, v15

    const-wide/high16 v16, -0x4020000000000000L    # -0.5

    if-ltz v15, :cond_12

    aget v15, v5, v13

    float-to-double v8, v15

    cmpg-double v8, v8, v16

    if-gez v8, :cond_11

    goto :goto_14

    :cond_11
    move/from16 v9, p6

    goto/16 :goto_1f

    :cond_12
    :goto_14
    add-int/2addr v14, v4

    move/from16 v9, p6

    :goto_15
    if-ge v14, v9, :cond_13

    iget-object v8, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    aget v15, v11, v14

    aput v15, v8, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    :cond_13
    move/from16 v8, v19

    :goto_16
    iget v11, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v8, v11, :cond_16

    aget v14, v22, v10

    iget v15, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    if-lt v14, v15, :cond_14

    sub-int/2addr v14, v15

    const/high16 v15, -0x40800000    # -1.0f

    goto :goto_17

    :cond_14
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_17
    mul-float/2addr v15, v7

    iget-object v7, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb:[I

    mul-int/2addr v14, v11

    add-int/2addr v14, v8

    aget v7, v7, v14

    int-to-float v7, v7

    mul-float/2addr v15, v7

    sub-int v7, v11, v8

    add-int/2addr v11, v4

    :goto_18
    if-ge v11, v9, :cond_15

    iget-object v14, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    aget v24, v14, v11

    aget v25, p9, v7

    mul-float v25, v25, v15

    sub-float v24, v24, v25

    aput v24, v14, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_15
    add-int/lit8 v8, v8, 0x1

    const/high16 v7, 0x3d000000    # 0.03125f

    goto :goto_16

    :cond_16
    move/from16 v7, v19

    :goto_19
    if-ge v7, v1, :cond_1e

    aget v8, v5, v7

    cmpg-float v8, v12, v8

    if-ltz v8, :cond_18

    aget v8, v5, v7

    float-to-double v14, v8

    cmpg-double v8, v14, v16

    if-gez v8, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_18
    :goto_1a
    iget v8, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    add-int/2addr v8, v4

    if-le v13, v7, :cond_1b

    :goto_1b
    if-ge v8, v9, :cond_19

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->nt:[[F

    aget-object v14, v11, v13

    add-int/lit8 v15, v13, -0x1

    aget-object v11, v11, v15

    aget v11, v11, v8

    aput v11, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_19
    move/from16 v8, v19

    :goto_1c
    iget v11, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v8, v11, :cond_1a

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    aget-object v14, v11, v13

    add-int/lit8 v15, v13, -0x1

    aget-object v11, v11, v15

    aget v11, v11, v8

    aput v11, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_1a
    add-int/lit8 v8, v13, -0x1

    aget v8, v5, v8

    aput v8, v5, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_1a

    :cond_1b
    :goto_1d
    if-ge v8, v9, :cond_1c

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->nt:[[F

    aget-object v11, v11, v7

    iget-object v13, v0, Lorg/xiph/speex/SplitShapeSearch;->t:[F

    aget v13, v13, v8

    aput v13, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_1c
    move/from16 v8, v19

    :goto_1e
    iget v11, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v8, v11, :cond_1d

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    aget-object v11, v11, v7

    iget-object v13, v0, Lorg/xiph/speex/SplitShapeSearch;->oind:[[I

    aget-object v13, v13, v23

    aget v13, v13, v8

    aput v13, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_1d
    iget-object v8, v0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    aget-object v8, v8, v7

    aget v11, v22, v10

    aput v11, v8, v3

    aput v12, v5, v7

    :cond_1e
    :goto_1f
    add-int/lit8 v10, v10, 0x1

    const/high16 v7, 0x3d000000    # 0.03125f

    const/high16 v9, -0x40800000    # -1.0f

    goto/16 :goto_e

    :cond_1f
    move/from16 v9, p6

    if-nez v3, :cond_20

    goto :goto_20

    :cond_20
    add-int/lit8 v15, v23, 0x1

    const/high16 v7, 0x3d000000    # 0.03125f

    const/high16 v9, -0x40800000    # -1.0f

    goto/16 :goto_c

    :cond_21
    move/from16 v9, p6

    :goto_20
    iget-object v4, v0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    iget-object v7, v0, Lorg/xiph/speex/SplitShapeSearch;->nt:[[F

    iput-object v7, v0, Lorg/xiph/speex/SplitShapeSearch;->ot:[[F

    iput-object v4, v0, Lorg/xiph/speex/SplitShapeSearch;->nt:[[F

    move/from16 v4, v19

    :goto_21
    if-ge v4, v1, :cond_23

    move/from16 v7, v19

    :goto_22
    iget v8, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v7, v8, :cond_22

    iget-object v8, v0, Lorg/xiph/speex/SplitShapeSearch;->oind:[[I

    aget-object v8, v8, v4

    iget-object v10, v0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    aget-object v10, v10, v4

    aget v10, v10, v7

    aput v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_23
    move/from16 v4, v19

    :goto_23
    if-ge v4, v1, :cond_24

    aget v7, v5, v4

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_25
    move/from16 v9, p6

    move/from16 v1, v19

    :goto_24
    iget v2, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v1, v2, :cond_26

    iget-object v2, v0, Lorg/xiph/speex/SplitShapeSearch;->ind:[I

    iget-object v3, v0, Lorg/xiph/speex/SplitShapeSearch;->nind:[[I

    aget-object v3, v3, v19

    aget v3, v3, v1

    aput v3, v2, v1

    aget v2, v2, v1

    iget v3, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_bits:I

    iget v4, v0, Lorg/xiph/speex/SplitShapeSearch;->have_sign:I

    add-int/2addr v3, v4

    move-object/from16 v4, p10

    invoke-virtual {v4, v2, v3}, Lorg/xiph/speex/Bits;->pack(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_26
    move/from16 v1, v19

    :goto_25
    iget v2, v0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v1, v2, :cond_29

    iget-object v2, v0, Lorg/xiph/speex/SplitShapeSearch;->ind:[I

    aget v2, v2, v1

    iget v3, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb_size:I

    if-lt v2, v3, :cond_27

    sub-int/2addr v2, v3

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_26

    :cond_27
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_26
    move/from16 v4, v19

    :goto_27
    iget v5, v0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v4, v5, :cond_28

    iget-object v6, v0, Lorg/xiph/speex/SplitShapeSearch;->e:[F

    mul-int v7, v5, v1

    add-int/2addr v7, v4

    const/high16 v8, 0x3d000000    # 0.03125f

    mul-float v10, v3, v8

    iget-object v11, v0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb:[I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    aget v5, v11, v5

    int-to-float v5, v5

    mul-float/2addr v10, v5

    aput v10, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_28
    const/high16 v8, 0x3d000000    # 0.03125f

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_29
    move/from16 v1, v19

    :goto_28
    if-ge v1, v9, :cond_2a

    add-int v2, p8, v1

    aget v3, p7, v2

    iget-object v4, v0, Lorg/xiph/speex/SplitShapeSearch;->e:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    aput v3, p7, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_2a
    iget-object v1, v0, Lorg/xiph/speex/SplitShapeSearch;->e:[F

    const/4 v2, 0x0

    iget-object v6, v0, Lorg/xiph/speex/SplitShapeSearch;->r2:[F

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lorg/xiph/speex/Filters;->syn_percep_zero([FI[F[F[F[FII)V

    move/from16 v1, v19

    :goto_29
    if-ge v1, v9, :cond_2b

    aget v2, p1, v1

    iget-object v3, v0, Lorg/xiph/speex/SplitShapeSearch;->r2:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_2b
    return-void
.end method

.method public final unquant([FIILorg/xiph/speex/Bits;)V
    .locals 8

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget v1, p0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lorg/xiph/speex/SplitShapeSearch;->have_sign:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xiph/speex/SplitShapeSearch;->signs:[I

    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/xiph/speex/SplitShapeSearch;->signs:[I

    aput p3, v1, v0

    :goto_1
    iget-object v1, p0, Lorg/xiph/speex/SplitShapeSearch;->ind:[I

    iget v2, p0, Lorg/xiph/speex/SplitShapeSearch;->shape_bits:I

    invoke-virtual {p4, v2}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_2
    iget v0, p0, Lorg/xiph/speex/SplitShapeSearch;->nb_subvect:I

    if-ge p4, v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/xiph/speex/SplitShapeSearch;->signs:[I

    aget v1, v1, p4

    if-eqz v1, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    :cond_2
    move v1, p3

    :goto_3
    iget v2, p0, Lorg/xiph/speex/SplitShapeSearch;->subvect_size:I

    if-ge v1, v2, :cond_3

    mul-int v3, v2, p4

    add-int/2addr v3, p2

    add-int/2addr v3, v1

    aget v4, p1, v3

    const/high16 v5, 0x3d000000    # 0.03125f

    mul-float/2addr v5, v0

    iget-object v6, p0, Lorg/xiph/speex/SplitShapeSearch;->shape_cb:[I

    iget-object v7, p0, Lorg/xiph/speex/SplitShapeSearch;->ind:[I

    aget v7, v7, p4

    mul-int/2addr v7, v2

    add-int/2addr v7, v1

    aget v2, v6, v7

    int-to-float v2, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
