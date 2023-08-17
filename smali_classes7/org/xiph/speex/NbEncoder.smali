.class public Lorg/xiph/speex/NbEncoder;
.super Lorg/xiph/speex/NbCodec;
.source "SourceFile"

# interfaces
.implements Lorg/xiph/speex/Encoder;


# static fields
.field public static final NB_QUALITY_MAP:[I


# instance fields
.field public abr_count:F

.field public abr_drift:F

.field public abr_drift2:F

.field public abr_enabled:I

.field private autocorr:[F

.field private bounded_pitch:I

.field private buf2:[F

.field private bw_lpc1:[F

.field private bw_lpc2:[F

.field public complexity:I

.field private dtx_count:I

.field private exc2Buf:[F

.field private exc2Idx:I

.field private innov2:[F

.field private interp_lpc:[F

.field private interp_lsp:[F

.field private lagWindow:[F

.field private lsp:[F

.field private mem_exc:[F

.field private mem_sw:[F

.field private mem_sw_whole:[F

.field private old_lsp:[F

.field private pitch:[I

.field private pre_mem2:F

.field private rc:[F

.field public relative_quality:F

.field public sampling_rate:I

.field public submodeSelect:I

.field private swBuf:[F

.field private swIdx:I

.field public vad_enabled:I

.field private vbr:Lorg/xiph/speex/Vbr;

.field public vbr_enabled:I

.field public vbr_quality:F

.field private window:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xiph/speex/NbEncoder;->NB_QUALITY_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x8
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/NbCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/xiph/speex/Bits;[F)I
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v3, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v3, v2

    const/4 v12, 0x0

    invoke-static {v1, v2, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    iget v3, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    sub-int/2addr v2, v3

    aget v3, v14, v12

    iget v4, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v11, 0x1

    move v1, v11

    :goto_0
    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_0

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v2, v14, v1

    iget v5, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    add-int/lit8 v6, v1, -0x1

    aget v6, v14, v6

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    aget v1, v14, v1

    iput v1, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v3, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v3, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v12

    :goto_1
    iget v2, v0, Lorg/xiph/speex/NbCodec;->windowSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->buf2:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->window:[F

    aget v4, v4, v1

    mul-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->buf2:[F

    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->autocorr:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    add-int/2addr v4, v11

    invoke-static {v1, v3, v4, v2}, Lorg/xiph/speex/Lpc;->autocorr([F[FII)V

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->autocorr:[F

    aget v2, v1, v12

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    aput v2, v1, v12

    aget v2, v1, v12

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpc_floor:F

    mul-float/2addr v2, v4

    aput v2, v1, v12

    move v1, v12

    :goto_2
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_2

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->autocorr:[F

    aget v4, v2, v1

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->lagWindow:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->autocorr:[F

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->rc:[F

    invoke-static {v1, v4, v5, v2}, Lorg/xiph/speex/Lpc;->wld([F[F[FI)F

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v1, v12, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v1, v12

    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    const v5, 0x3e4ccccd    # 0.2f

    const/16 v10, 0xf

    invoke-static {v1, v2, v4, v10, v5}, Lorg/xiph/speex/Lsp;->lpc2lsp([FI[FIF)I

    move-result v1

    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    const v4, 0x3d4ccccd    # 0.05f

    if-ne v1, v2, :cond_3

    move v1, v12

    :goto_3
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v5, v2, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v5, v0, Lorg/xiph/speex/NbEncoder;->complexity:I

    if-le v5, v11, :cond_4

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    const/16 v6, 0xb

    invoke-static {v1, v2, v5, v6, v4}, Lorg/xiph/speex/Lsp;->lpc2lsp([FI[FIF)I

    move-result v1

    :cond_4
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ne v1, v2, :cond_5

    move v1, v12

    :goto_4
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v5, v2, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v12

    :goto_5
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    aget v5, v5, v1

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v12

    const/4 v2, 0x0

    :goto_6
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v5, :cond_7

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    aget v6, v5, v1

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v8, v7, v1

    sub-float/2addr v6, v8

    aget v5, v5, v1

    aget v7, v7, v1

    sub-float/2addr v5, v7

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    iget v1, v0, Lorg/xiph/speex/NbCodec;->first:I

    if-eqz v1, :cond_8

    move v1, v12

    :goto_7
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v5, :cond_9

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v6, v6, v1

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move v1, v12

    :goto_8
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v5, :cond_9

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    const/high16 v6, 0x3ec00000    # 0.375f

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    aget v7, v7, v1

    mul-float/2addr v7, v6

    const/high16 v6, 0x3f200000    # 0.625f

    iget-object v8, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v8, v8, v1

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    const v13, 0x3b03126f    # 0.002f

    invoke-static {v1, v5, v13}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    move v1, v12

    :goto_9
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v5, :cond_a

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    aget v6, v5, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    invoke-virtual {v1, v6, v7, v5}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v6, v1, v5

    const/4 v8, -0x1

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_c

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    if-nez v6, :cond_c

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vad_enabled:I

    if-nez v6, :cond_c

    aget-object v6, v1, v5

    iget v6, v6, Lorg/xiph/speex/SubMode;->forced_pitch_gain:I

    if-nez v6, :cond_c

    aget-object v1, v1, v5

    iget v1, v1, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    if-eq v1, v8, :cond_b

    goto :goto_a

    :cond_b
    move v1, v12

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_c
    :goto_a
    const/4 v1, 0x6

    new-array v5, v1, [I

    new-array v6, v1, [F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->gamma1:F

    iget-object v13, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget v8, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v7, v13, v10, v8}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget v7, v0, Lorg/xiph/speex/NbCodec;->gamma2:F

    iget-object v8, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget v13, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v7, v8, v10, v13}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v8, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v13, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget-object v11, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget v3, v0, Lorg/xiph/speex/NbEncoder;->swIdx:I

    iget v4, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v9, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->mem_sw_whole:[F

    const/16 v32, 0x0

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v13

    move-object/from16 v27, v11

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v9

    move-object/from16 v31, v1

    invoke-static/range {v23 .. v32}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget v3, v0, Lorg/xiph/speex/NbEncoder;->swIdx:I

    iget v4, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    iget v7, v0, Lorg/xiph/speex/NbCodec;->max_pitch:I

    iget v8, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    const/16 v30, 0x6

    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    invoke-static/range {v23 .. v30}, Lorg/xiph/speex/Ltp;->open_loop_nbest_pitch([FIIII[I[FI)V

    aget v1, v5, v12

    aget v3, v6, v12

    const/4 v4, 0x1

    const/4 v7, 0x6

    :goto_b
    if-ge v4, v7, :cond_f

    aget v8, v6, v4

    float-to-double v8, v8

    const-wide v10, 0x3feb333333333333L    # 0.85

    float-to-double v12, v3

    mul-double/2addr v12, v10

    cmpl-double v8, v8, v12

    if-lez v8, :cond_e

    aget v8, v5, v4

    int-to-double v8, v8

    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v10, v12

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v21

    if-lez v8, :cond_d

    aget v8, v5, v4

    int-to-double v8, v8

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double v12, v10, v12

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v21

    if-lez v8, :cond_d

    aget v8, v5, v4

    int-to-double v8, v8

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double v12, v10, v12

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v21

    if-lez v8, :cond_d

    aget v8, v5, v4

    int-to-double v8, v8

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v21

    if-gtz v8, :cond_e

    :cond_d
    aget v1, v5, v4

    :cond_e
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x0

    goto :goto_b

    :cond_f
    :goto_c
    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v8, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    iget v9, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v11, v0, Lorg/xiph/speex/NbEncoder;->mem_exc:[F

    invoke-static/range {v4 .. v11}, Lorg/xiph/speex/Filters;->fir_mem2([FI[F[FIII[F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    iget v6, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v4, v6, :cond_10

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int v8, v7, v4

    aget v8, v6, v8

    add-int/2addr v7, v4

    aget v6, v6, v7

    mul-float/2addr v8, v6

    add-float/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_10
    int-to-float v4, v6

    div-float/2addr v5, v4

    add-float v5, v5, v20

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->vbr:Lorg/xiph/speex/Vbr;

    if-eqz v5, :cond_22

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    if-nez v6, :cond_11

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vad_enabled:I

    if-eqz v6, :cond_22

    :cond_11
    iget v6, v0, Lorg/xiph/speex/NbEncoder;->abr_enabled:I

    if-eqz v6, :cond_16

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->abr_drift2:F

    iget v7, v0, Lorg/xiph/speex/NbEncoder;->abr_drift:F

    mul-float/2addr v6, v7

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    const v8, -0x42b33333    # -0.05f

    if-lez v6, :cond_13

    const v6, -0x48d83a54    # -1.0E-5f

    mul-float/2addr v7, v6

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->abr_count:F

    add-float v6, v6, v20

    div-float/2addr v7, v6

    const v6, 0x3d4ccccd    # 0.05f

    cmpl-float v9, v7, v6

    if-lez v9, :cond_12

    const v7, 0x3d4ccccd    # 0.05f

    :cond_12
    cmpg-float v6, v7, v8

    if-gez v6, :cond_14

    move v7, v8

    goto :goto_e

    :cond_13
    const/4 v7, 0x0

    :cond_14
    :goto_e
    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    add-float/2addr v6, v7

    iput v6, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_15

    iput v7, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    :cond_15
    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_16

    iput v7, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    :cond_16
    iget v6, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    invoke-virtual {v5, v14, v6, v1, v3}, Lorg/xiph/speex/Vbr;->analysis([FIIF)F

    move-result v5

    iput v5, v0, Lorg/xiph/speex/NbEncoder;->relative_quality:F

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    const-wide v8, 0x3fa999999999999aL    # 0.05

    if-eqz v6, :cond_1e

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/16 v10, 0x8

    :goto_f
    if-lez v10, :cond_19

    iget v11, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_17

    sget-object v12, Lorg/xiph/speex/Vbr;->nb_thresh:[[F

    aget-object v12, v12, v10

    aget v11, v12, v11

    goto :goto_10

    :cond_17
    iget v12, v0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    int-to-float v13, v11

    sub-float v13, v12, v13

    sget-object v19, Lorg/xiph/speex/Vbr;->nb_thresh:[[F

    aget-object v25, v19, v10

    add-int/lit8 v7, v11, 0x1

    aget v25, v25, v7

    mul-float v13, v13, v25

    int-to-float v7, v7

    sub-float/2addr v7, v12

    aget-object v12, v19, v10

    aget v11, v12, v11

    mul-float/2addr v7, v11

    add-float v11, v13, v7

    :goto_10
    iget v7, v0, Lorg/xiph/speex/NbEncoder;->relative_quality:F

    cmpl-float v12, v7, v11

    if-lez v12, :cond_18

    sub-float v12, v7, v11

    cmpg-float v12, v12, v5

    if-gez v12, :cond_18

    sub-float/2addr v7, v11

    move v5, v7

    move v6, v10

    :cond_18
    add-int/lit8 v10, v10, -0x1

    goto :goto_f

    :cond_19
    if-nez v6, :cond_1c

    iget v5, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    if-eqz v5, :cond_1b

    float-to-double v6, v2

    cmpl-double v2, v6, v8

    if-gtz v2, :cond_1b

    iget v2, v0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    if-eqz v2, :cond_1b

    const/16 v2, 0x14

    if-le v5, v2, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v2, 0x1

    add-int/2addr v5, v2

    iput v5, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    const/4 v6, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v2, 0x1

    iput v2, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    const/4 v6, 0x1

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    iput v2, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    :goto_12
    invoke-virtual {v0, v6}, Lorg/xiph/speex/NbEncoder;->setMode(I)V

    iget v2, v0, Lorg/xiph/speex/NbEncoder;->abr_enabled:I

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/xiph/speex/NbEncoder;->getBitRate()I

    move-result v2

    iget v5, v0, Lorg/xiph/speex/NbEncoder;->abr_drift:F

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->abr_enabled:I

    sub-int v7, v2, v6

    int-to-float v7, v7

    add-float/2addr v5, v7

    iput v5, v0, Lorg/xiph/speex/NbEncoder;->abr_drift:F

    const v5, 0x3f733333    # 0.95f

    iget v7, v0, Lorg/xiph/speex/NbEncoder;->abr_drift2:F

    mul-float/2addr v7, v5

    sub-int/2addr v2, v6

    int-to-float v2, v2

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v5

    add-float/2addr v7, v2

    iput v7, v0, Lorg/xiph/speex/NbEncoder;->abr_drift2:F

    iget v2, v0, Lorg/xiph/speex/NbEncoder;->abr_count:F

    float-to-double v5, v2

    add-double v5, v5, v21

    double-to-float v2, v5

    iput v2, v0, Lorg/xiph/speex/NbEncoder;->abr_count:F

    :cond_1d
    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_15

    :cond_1e
    const/high16 v6, 0x40000000    # 2.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_21

    iget v5, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    if-eqz v5, :cond_20

    float-to-double v6, v2

    cmpl-double v2, v6, v8

    if-gtz v2, :cond_20

    iget v2, v0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    if-eqz v2, :cond_20

    const/16 v2, 0x14

    if-le v5, v2, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v2, 0x1

    add-int/2addr v5, v2

    iput v5, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_14

    :cond_20
    :goto_13
    const/4 v2, 0x1

    iput v2, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    move v6, v2

    const/4 v5, 0x0

    goto :goto_14

    :cond_21
    const/4 v2, 0x1

    const/4 v5, 0x0

    iput v5, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->submodeSelect:I

    :goto_14
    iput v6, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    goto :goto_15

    :cond_22
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lorg/xiph/speex/NbEncoder;->relative_quality:F

    :goto_15
    invoke-virtual {v15, v5, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    const/4 v12, 0x4

    invoke-virtual {v15, v2, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v5

    if-nez v2, :cond_26

    const/4 v1, 0x0

    :goto_16
    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_23

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v3, v1

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    iget v5, v0, Lorg/xiph/speex/NbEncoder;->exc2Idx:I

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget v7, v0, Lorg/xiph/speex/NbEncoder;->swIdx:I

    add-int/2addr v7, v1

    const/4 v8, 0x0

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_23
    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_17
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_24

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->mem_sw:[F

    aput v8, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x0

    goto :goto_17

    :cond_24
    const/4 v1, 0x1

    iput v1, v0, Lorg/xiph/speex/NbCodec;->first:I

    iput v1, v0, Lorg/xiph/speex/NbEncoder;->bounded_pitch:I

    iget-object v15, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v1, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    iget v6, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v2

    move-object/from16 v22, v7

    invoke-static/range {v15 .. v22}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    aget v1, v1, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    iget v3, v0, Lorg/xiph/speex/NbEncoder;->pre_mem2:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v14, v2

    const/4 v1, 0x1

    :goto_18
    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_25

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iput v1, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    aget v2, v2, v1

    iget v3, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    add-int/lit8 v4, v1, -0x1

    aget v4, v14, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_25
    const/4 v1, 0x1

    sub-int/2addr v2, v1

    aget v1, v14, v2

    iput v1, v0, Lorg/xiph/speex/NbEncoder;->pre_mem2:F

    const/4 v1, 0x0

    return v1

    :cond_26
    iget v2, v0, Lorg/xiph/speex/NbCodec;->first:I

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    :goto_19
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v5, :cond_27

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v6, v6, v2

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_27
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/xiph/speex/SubMode;->lsqQuant:Lorg/xiph/speex/LspQuant;

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-virtual {v2, v5, v6, v7, v15}, Lorg/xiph/speex/LspQuant;->quant([F[FILorg/xiph/speex/Bits;)V

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v5

    iget v2, v2, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_28

    iget v2, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    sub-int v2, v1, v2

    const/4 v5, 0x7

    invoke-virtual {v15, v2, v5}, Lorg/xiph/speex/Bits;->pack(II)V

    :cond_28
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v5

    iget v2, v2, Lorg/xiph/speex/SubMode;->forced_pitch_gain:I

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-eqz v2, :cond_2b

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v3, v2

    float-to-double v2, v3

    add-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v10, 0xf

    if-le v2, v10, :cond_29

    move v2, v10

    :cond_29
    if-gez v2, :cond_2a

    const/4 v2, 0x0

    :cond_2a
    invoke-virtual {v15, v2, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    const v3, 0x3d8888b5

    int-to-float v2, v2

    mul-float/2addr v3, v2

    goto :goto_1a

    :cond_2b
    const/16 v10, 0xf

    :goto_1a
    move/from16 v25, v3

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v7, 0x400c000000000000L    # 3.5

    mul-double/2addr v2, v7

    add-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-gez v2, :cond_2c

    const/4 v2, 0x0

    :cond_2c
    const/16 v3, 0x1f

    if-le v2, v3, :cond_2d

    move v2, v3

    :cond_2d
    int-to-double v3, v2

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v11, v3

    const/4 v3, 0x5

    invoke-virtual {v15, v2, v3}, Lorg/xiph/speex/Bits;->pack(II)V

    iget v2, v0, Lorg/xiph/speex/NbCodec;->first:I

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    :goto_1b
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_2e

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    new-array v9, v2, [F

    new-array v4, v2, [F

    new-array v2, v2, [F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    new-array v13, v3, [F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    new-array v8, v3, [F

    const/4 v3, 0x0

    :goto_1c
    iget v5, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v3, v5, :cond_2f

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int/2addr v6, v3

    aget v5, v5, v6

    aput v5, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v7, 0x0

    :goto_1d
    iget v3, v0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    if-ge v7, v3, :cond_52

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    mul-int/2addr v5, v7

    iget v6, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int v26, v6, v5

    iget v6, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int v27, v6, v5

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->swIdx:I

    add-int v28, v6, v5

    iget v6, v0, Lorg/xiph/speex/NbEncoder;->exc2Idx:I

    add-int v29, v6, v5

    move/from16 v30, v11

    int-to-double v10, v7

    add-double v10, v10, v21

    double-to-float v6, v10

    int-to-float v3, v3

    div-float/2addr v6, v3

    const/4 v3, 0x0

    :goto_1e
    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v10, :cond_30

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    sub-float v11, v20, v6

    iget-object v12, v0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    aget v12, v12, v3

    mul-float/2addr v11, v12

    iget-object v12, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v12, v12, v3

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    aput v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x4

    goto :goto_1e

    :cond_30
    const/4 v3, 0x0

    :goto_1f
    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v10, :cond_31

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    sub-float v11, v20, v6

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    aget v12, v12, v3

    mul-float/2addr v11, v12

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v12, v12, v3

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    aput v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_31
    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    const v11, 0x3b03126f    # 0.002f

    invoke-static {v3, v10, v11}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v3, v6, v11}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    const/4 v3, 0x0

    :goto_20
    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v6, :cond_32

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    aget v10, v6, v3

    float-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    const v11, 0x3b03126f    # 0.002f

    goto :goto_20

    :cond_32
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    iget-object v11, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    invoke-virtual {v3, v10, v11, v6}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    const/4 v3, 0x0

    :goto_21
    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v6, :cond_33

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    aget v10, v6, v3

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_33
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    invoke-virtual {v3, v10, v11, v6}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    const/4 v6, 0x0

    aput v6, v3, v7

    move/from16 v6, v20

    const/4 v3, 0x0

    :goto_22
    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-gt v3, v10, :cond_34

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aget v11, v10, v7

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    aget v12, v12, v3

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    aput v11, v10, v7

    neg-float v6, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    iget v3, v0, Lorg/xiph/speex/NbCodec;->gamma1:F

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    iget-object v11, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    invoke-static {v3, v6, v11, v10}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget v3, v0, Lorg/xiph/speex/NbCodec;->gamma2:F

    const/4 v6, 0x0

    cmpl-float v10, v3, v6

    if-ltz v10, :cond_35

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget v11, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v3, v6, v10, v11}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    const/4 v10, 0x0

    const/16 v23, 0x0

    goto :goto_24

    :cond_35
    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    const/16 v23, 0x0

    aput v20, v3, v23

    iget v6, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    neg-float v6, v6

    const/4 v10, 0x1

    aput v6, v3, v10

    const/4 v3, 0x2

    :goto_23
    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-gt v3, v6, :cond_36

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    const/4 v10, 0x0

    aput v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    const/4 v10, 0x0

    :goto_24
    move/from16 v3, v23

    :goto_25
    iget v6, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v3, v6, :cond_37

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v11, v27, v3

    aput v10, v6, v11

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x0

    goto :goto_25

    :cond_37
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aput v20, v3, v27

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v11, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v12, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    move/from16 v19, v7

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    move-object/from16 v36, v3

    move/from16 v37, v27

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move-object/from16 v41, v2

    move/from16 v42, v6

    move/from16 v43, v7

    invoke-static/range {v36 .. v43}, Lorg/xiph/speex/Filters;->syn_percep_zero([FI[F[F[F[FII)V

    move/from16 v3, v23

    :goto_26
    iget v6, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v3, v6, :cond_38

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v7, v27, v3

    const/4 v10, 0x0

    aput v10, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_38
    const/4 v10, 0x0

    move/from16 v3, v23

    :goto_27
    iget v6, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v3, v6, :cond_39

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    add-int v7, v29, v3

    aput v10, v6, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x0

    goto :goto_27

    :cond_39
    move/from16 v3, v23

    :goto_28
    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v6, :cond_3a

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    aget v6, v6, v3

    aput v6, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3a
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    move-object/from16 v36, v3

    move/from16 v37, v27

    move-object/from16 v38, v7

    move-object/from16 v39, v3

    move/from16 v40, v27

    move/from16 v41, v10

    move/from16 v42, v6

    move-object/from16 v43, v13

    invoke-static/range {v36 .. v43}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    move/from16 v3, v23

    :goto_29
    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v6, :cond_3b

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->mem_sw:[F

    aget v6, v6, v3

    aput v6, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3b
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    const/16 v41, 0x0

    iget v11, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    const/16 v45, 0x0

    move-object/from16 v36, v3

    move/from16 v37, v27

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v40, v9

    move/from16 v42, v11

    move/from16 v43, v6

    move-object/from16 v44, v13

    invoke-static/range {v36 .. v45}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    move/from16 v3, v23

    :goto_2a
    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v6, :cond_3c

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->mem_sw:[F

    aget v6, v6, v3

    aput v6, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3c
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget-object v11, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget v12, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    const/16 v45, 0x0

    move-object/from16 v36, v3

    move/from16 v37, v26

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move/from16 v41, v28

    move/from16 v42, v12

    move/from16 v43, v6

    move-object/from16 v44, v13

    invoke-static/range {v36 .. v45}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    move/from16 v3, v23

    :goto_2b
    iget v6, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v3, v6, :cond_3d

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    add-int v7, v28, v3

    aget v6, v6, v7

    aget v7, v9, v3

    sub-float/2addr v6, v7

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3d
    move/from16 v3, v23

    :goto_2c
    iget v12, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v3, v12, :cond_3e

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v7, v27, v3

    iget-object v10, v0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    add-int v11, v29, v3

    const/16 v34, 0x0

    aput v34, v10, v11

    aput v34, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3e
    const/16 v34, 0x0

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v6, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v7, v3, v6

    iget v7, v7, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_42

    aget-object v7, v3, v6

    iget v7, v7, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    if-eqz v7, :cond_41

    iget v11, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    add-int v18, v11, v7

    const/16 v33, 0x1

    add-int/lit8 v10, v18, -0x1

    if-ge v1, v10, :cond_3f

    add-int/2addr v11, v7

    add-int/lit8 v1, v11, -0x1

    :cond_3f
    iget v10, v0, Lorg/xiph/speex/NbCodec;->max_pitch:I

    sub-int v11, v10, v7

    if-le v1, v11, :cond_40

    sub-int/2addr v10, v7

    move v1, v10

    :cond_40
    sub-int v10, v1, v7

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v7, v1

    move/from16 v54, v7

    move v7, v1

    move/from16 v1, v54

    goto :goto_2d

    :cond_41
    const/16 v33, 0x1

    move v7, v1

    move v10, v7

    :goto_2d
    move/from16 v46, v7

    goto :goto_2e

    :cond_42
    const/16 v33, 0x1

    iget v7, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    iget v10, v0, Lorg/xiph/speex/NbCodec;->max_pitch:I

    move/from16 v46, v1

    move v1, v10

    move v10, v7

    :goto_2e
    iget v7, v0, Lorg/xiph/speex/NbEncoder;->bounded_pitch:I

    if-eqz v7, :cond_43

    if-le v1, v5, :cond_43

    move v11, v5

    goto :goto_2f

    :cond_43
    move v11, v1

    :goto_2f
    aget-object v1, v3, v6

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->ltp:Lorg/xiph/speex/Ltp;

    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v6, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    move/from16 v47, v19

    move-object/from16 v18, v2

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    move-object/from16 v35, v8

    const/16 v48, -0x1

    move-object v8, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    move-object/from16 v49, v13

    const v50, 0x3b03126f    # 0.002f

    move v13, v2

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    move-object/from16 v16, v2

    iget v2, v0, Lorg/xiph/speex/NbEncoder;->complexity:I

    move/from16 v19, v2

    move-object/from16 v51, v18

    move-object v2, v4

    move-object/from16 v52, v4

    move/from16 v4, v28

    move-object/from16 v53, v9

    move/from16 v9, v27

    move/from16 v17, v12

    move/from16 v12, v25

    move/from16 v14, v17

    move-object/from16 v15, p1

    move/from16 v17, v29

    invoke-virtual/range {v1 .. v19}, Lorg/xiph/speex/Ltp;->quant([F[FI[F[F[F[FIIIFIILorg/xiph/speex/Bits;[FI[FI)I

    move-result v1

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->pitch:[I

    aput v1, v2, v47

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    move-object/from16 v36, v1

    move/from16 v37, v27

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v41, v53

    move/from16 v42, v5

    move/from16 v43, v6

    invoke-static/range {v36 .. v43}, Lorg/xiph/speex/Filters;->syn_percep_zero([FI[F[F[F[FII)V

    const/4 v12, 0x0

    :goto_30
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_44

    aget v1, v52, v12

    aget v2, v53, v12

    sub-float/2addr v1, v2

    aput v1, v52, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_44
    mul-int v13, v47, v1

    const/4 v12, 0x0

    :goto_31
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_45

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    add-int v2, v13, v12

    aput v34, v1, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    :cond_45
    const/16 v37, 0x0

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->buf2:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    move-object/from16 v36, v52

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v42, v1

    move/from16 v43, v6

    invoke-static/range {v36 .. v43}, Lorg/xiph/speex/Filters;->residue_percep_zero([FI[F[F[F[FII)V

    move/from16 v9, v34

    const/4 v12, 0x0

    :goto_32
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_46

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->buf2:[F

    aget v2, v1, v12

    aget v1, v1, v12

    mul-float/2addr v2, v1

    add-float/2addr v9, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_32

    :cond_46
    const v2, 0x3dcccccd    # 0.1f

    int-to-float v1, v1

    div-float/2addr v9, v1

    add-float/2addr v9, v2

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, v1, v30

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/xiph/speex/SubMode;->have_subframe_gain:I

    if-eqz v2, :cond_48

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/xiph/speex/SubMode;->have_subframe_gain:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_47

    sget-object v2, Lorg/xiph/speex/NbCodec;->exc_gain_quant_scal3:[F

    const/16 v14, 0x8

    invoke-static {v1, v2, v14}, Lorg/xiph/speex/VQ;->index(F[FI)I

    move-result v1

    move-object/from16 v15, p1

    invoke-virtual {v15, v1, v3}, Lorg/xiph/speex/Bits;->pack(II)V

    aget v1, v2, v1

    const/4 v12, 0x1

    goto :goto_33

    :cond_47
    move-object/from16 v15, p1

    const/16 v14, 0x8

    sget-object v2, Lorg/xiph/speex/NbCodec;->exc_gain_quant_scal1:[F

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/xiph/speex/VQ;->index(F[FI)I

    move-result v1

    const/4 v12, 0x1

    invoke-virtual {v15, v1, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    aget v1, v2, v1

    :goto_33
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_34

    :cond_48
    move-object/from16 v15, p1

    const/4 v12, 0x1

    const/16 v14, 0x8

    move/from16 v1, v20

    :goto_34
    mul-float v11, v1, v30

    div-float v1, v20, v11

    const/4 v2, 0x0

    :goto_35
    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v2, v7, :cond_49

    aget v3, v52, v2

    mul-float/2addr v3, v1

    aput v3, v52, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_49
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v8, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    iget v10, v0, Lorg/xiph/speex/NbEncoder;->complexity:I

    move-object/from16 v2, v52

    move v9, v13

    move/from16 v16, v10

    move-object/from16 v10, v51

    move v14, v11

    move-object/from16 v11, p1

    move v15, v12

    move/from16 v12, v16

    invoke-virtual/range {v1 .. v12}, Lorg/xiph/speex/CbSearch;->quant([F[F[F[FII[FI[FLorg/xiph/speex/Bits;I)V

    const/4 v12, 0x0

    :goto_36
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_4a

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    add-int v2, v13, v12

    aget v3, v1, v2

    mul-float/2addr v3, v14

    aput v3, v1, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_36

    :cond_4a
    const/4 v12, 0x0

    :goto_37
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_4b

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v2, v27, v12

    aget v3, v1, v2

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    add-int v5, v13, v12

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    :cond_4b
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/xiph/speex/SubMode;->double_codebook:I

    if-eqz v2, :cond_4e

    new-array v13, v1, [F

    const/4 v12, 0x0

    :goto_38
    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v7, :cond_4c

    aget v1, v52, v12

    float-to-double v1, v1

    const-wide v3, 0x400199999999999aL    # 2.2

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v52, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_38

    :cond_4c
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v5, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    const/4 v9, 0x0

    iget v12, v0, Lorg/xiph/speex/NbEncoder;->complexity:I

    move-object/from16 v2, v52

    move-object v8, v13

    move-object/from16 v10, v51

    move-object/from16 v11, p1

    invoke-virtual/range {v1 .. v12}, Lorg/xiph/speex/CbSearch;->quant([F[F[F[FII[FI[FLorg/xiph/speex/Bits;I)V

    const/4 v12, 0x0

    :goto_39
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_4d

    aget v1, v13, v12

    float-to-double v1, v1

    float-to-double v3, v14

    const-wide v5, 0x3fdd1745d1745d17L    # 0.45454545454545453

    mul-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_39

    :cond_4d
    const/4 v12, 0x0

    :goto_3a
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_4e

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v2, v27, v12

    aget v3, v1, v2

    aget v4, v13, v12

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    :cond_4e
    const/4 v12, 0x0

    :goto_3b
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_4f

    aget v1, v52, v12

    mul-float/2addr v1, v14

    aput v1, v52, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3b

    :cond_4f
    const/4 v12, 0x0

    :goto_3c
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v12, v1, :cond_50

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    aget v1, v1, v12

    aput v1, v49, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3c

    :cond_50
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object/from16 v36, v2

    move/from16 v37, v27

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move/from16 v40, v26

    move/from16 v41, v5

    move/from16 v42, v1

    move-object/from16 v43, v6

    invoke-static/range {v36 .. v43}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    iget-object v3, v0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    iget-object v4, v0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v7, v0, Lorg/xiph/speex/NbEncoder;->mem_sw:[F

    const/16 v45, 0x0

    move-object/from16 v36, v1

    move/from16 v37, v26

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move/from16 v41, v28

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v44, v7

    invoke-static/range {v36 .. v45}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    const/4 v12, 0x0

    :goto_3d
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v1, :cond_51

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    add-int v2, v29, v12

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v4, v27, v12

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    :cond_51
    add-int/lit8 v7, v47, 0x1

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v11, v30

    move-object/from16 v8, v35

    move/from16 v1, v46

    move-object/from16 v13, v49

    move-object/from16 v2, v51

    move-object/from16 v4, v52

    move-object/from16 v9, v53

    const/16 v10, 0xf

    const/4 v12, 0x4

    goto/16 :goto_1d

    :cond_52
    move-object/from16 v35, v8

    const/4 v15, 0x1

    const/16 v34, 0x0

    iget v1, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    if-lt v1, v15, :cond_54

    const/4 v12, 0x0

    :goto_3e
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v12, v1, :cond_53

    iget-object v1, v0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    iget-object v2, v0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    aget v2, v2, v12

    aput v2, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    :cond_53
    const/4 v12, 0x0

    :goto_3f
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v12, v1, :cond_54

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v2, v2, v12

    aput v2, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    :cond_54
    iget v1, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    if-ne v1, v15, :cond_56

    iget v1, v0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    if-eqz v1, :cond_55

    move-object/from16 v1, p1

    move v4, v15

    const/4 v2, 0x4

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    goto :goto_40

    :cond_55
    move-object/from16 v1, p1

    move v4, v15

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    goto :goto_41

    :cond_56
    move v4, v15

    :goto_40
    const/4 v3, 0x0

    :goto_41
    iput v3, v0, Lorg/xiph/speex/NbCodec;->first:I

    move v12, v3

    move/from16 v9, v34

    :goto_42
    iget v1, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v12, v1, :cond_57

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int v5, v2, v12

    aget v5, v1, v5

    add-int v6, v2, v12

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v9, v5

    add-int v5, v2, v12

    aget v5, v1, v5

    aget v6, v35, v12

    sub-float/2addr v5, v6

    add-int/2addr v2, v12

    aget v1, v1, v2

    aget v2, v35, v12

    sub-float/2addr v1, v2

    mul-float/2addr v5, v1

    add-float v34, v34, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_42

    :cond_57
    add-float v9, v9, v20

    add-float v34, v34, v20

    div-float v9, v9, v34

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    aget v1, v1, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    iget v5, v0, Lorg/xiph/speex/NbEncoder;->pre_mem2:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, p2, v3

    move v11, v4

    :goto_43
    iget v1, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v11, v1, :cond_58

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int/2addr v2, v11

    aget v1, v1, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    add-int/lit8 v5, v11, -0x1

    aget v5, p2, v5

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, p2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :cond_58
    sub-int/2addr v1, v4

    aget v1, p2, v1

    iput v1, v0, Lorg/xiph/speex/NbEncoder;->pre_mem2:F

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    instance-of v1, v1, Lorg/xiph/speex/NoiseSearch;

    if-nez v1, :cond_5a

    if-nez v2, :cond_59

    goto :goto_44

    :cond_59
    iput v3, v0, Lorg/xiph/speex/NbEncoder;->bounded_pitch:I

    goto :goto_45

    :cond_5a
    :goto_44
    iput v4, v0, Lorg/xiph/speex/NbEncoder;->bounded_pitch:I

    :goto_45
    return v4
.end method

.method public getAbr()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->abr_enabled:I

    return v0
.end method

.method public getBitRate()I
    .locals 3

    iget-object v0, p0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/xiph/speex/NbEncoder;->sampling_rate:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/xiph/speex/SubMode;->bits_per_frame:I

    mul-int/2addr v2, v0

    iget v0, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    div-int/2addr v2, v0

    return v2

    :cond_0
    iget v0, p0, Lorg/xiph/speex/NbEncoder;->sampling_rate:I

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getComplexity()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->complexity:I

    return v0
.end method

.method public getEncodedFrameSize()I
    .locals 2

    sget-object v0, Lorg/xiph/speex/NbCodec;->NB_FRAME_SIZE:[I

    iget v1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget v0, v0, v1

    return v0
.end method

.method public getLookAhead()I
    .locals 2

    iget v0, p0, Lorg/xiph/speex/NbCodec;->windowSize:I

    iget v1, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return v0
.end method

.method public getRelativeQuality()F
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->relative_quality:F

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->sampling_rate:I

    return v0
.end method

.method public getVad()Z
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->vad_enabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVbr()Z
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVbrQuality()F
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    return v0
.end method

.method public init(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xiph/speex/NbCodec;->init(IIII)V

    const/4 p1, 0x3

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->complexity:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->vad_enabled:I

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->abr_enabled:I

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    const/4 v0, 0x5

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->submodeSelect:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->pre_mem2:F

    const/4 v1, 0x1

    iput v1, p0, Lorg/xiph/speex/NbEncoder;->bounded_pitch:I

    new-array v1, p4, [F

    iput-object v1, p0, Lorg/xiph/speex/NbEncoder;->exc2Buf:[F

    iget v1, p0, Lorg/xiph/speex/NbCodec;->windowSize:I

    sub-int v2, p4, v1

    iput v2, p0, Lorg/xiph/speex/NbEncoder;->exc2Idx:I

    new-array v2, p4, [F

    iput-object v2, p0, Lorg/xiph/speex/NbEncoder;->swBuf:[F

    sub-int/2addr p4, v1

    iput p4, p0, Lorg/xiph/speex/NbEncoder;->swIdx:I

    invoke-static {v1, p2}, Lorg/xiph/speex/Misc;->window(II)[F

    move-result-object p2

    iput-object p2, p0, Lorg/xiph/speex/NbEncoder;->window:[F

    iget p2, p0, Lorg/xiph/speex/NbCodec;->lag_factor:F

    invoke-static {p3, p2}, Lorg/xiph/speex/Misc;->lagWindow(IF)[F

    move-result-object p2

    iput-object p2, p0, Lorg/xiph/speex/NbEncoder;->lagWindow:[F

    add-int/lit8 p2, p3, 0x1

    new-array p4, p2, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->autocorr:[F

    iget p4, p0, Lorg/xiph/speex/NbCodec;->windowSize:I

    new-array p4, p4, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->buf2:[F

    new-array p4, p2, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->interp_lpc:[F

    new-array p4, p2, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    new-array p4, p2, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->bw_lpc1:[F

    new-array p4, p2, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->bw_lpc2:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->lsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->old_lsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->interp_lsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->rc:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->mem_sw:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbEncoder;->mem_sw_whole:[F

    new-array p3, p3, [F

    iput-object p3, p0, Lorg/xiph/speex/NbEncoder;->mem_exc:[F

    new-instance p3, Lorg/xiph/speex/Vbr;

    invoke-direct {p3}, Lorg/xiph/speex/Vbr;-><init>()V

    iput-object p3, p0, Lorg/xiph/speex/NbEncoder;->vbr:Lorg/xiph/speex/Vbr;

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->dtx_count:I

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->abr_count:F

    const/16 p1, 0x1f40

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->sampling_rate:I

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/xiph/speex/NbCodec;->awk1:[F

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/xiph/speex/NbCodec;->awk2:[F

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/xiph/speex/NbCodec;->awk3:[F

    const/16 p1, 0x28

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/NbEncoder;->innov2:[F

    iget-object p1, p0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    invoke-virtual {p1}, Lorg/xiph/speex/Filters;->init()V

    iget p1, p0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/xiph/speex/NbEncoder;->pitch:[I

    return-void
.end method

.method public setAbr(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/xiph/speex/NbEncoder;->abr_enabled:I

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    const/16 v0, 0xa

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/xiph/speex/NbEncoder;->setQuality(I)V

    invoke-virtual {p0}, Lorg/xiph/speex/NbEncoder;->getBitRate()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    move p1, v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/xiph/speex/NbEncoder;->setVbrQuality(F)V

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->abr_count:F

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->abr_drift:F

    iput v0, p0, Lorg/xiph/speex/NbEncoder;->abr_drift2:F

    return-void
.end method

.method public setBitRate(I)V
    .locals 2

    const/16 v0, 0xa

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/xiph/speex/NbEncoder;->setQuality(I)V

    invoke-virtual {p0}, Lorg/xiph/speex/NbEncoder;->getBitRate()I

    move-result v1

    if-gt v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setComplexity(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lorg/xiph/speex/NbEncoder;->complexity:I

    return-void
.end method

.method public setDtx(Z)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lorg/xiph/speex/NbEncoder;->submodeSelect:I

    iput p1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return-void
.end method

.method public setQuality(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    sget-object v0, Lorg/xiph/speex/NbEncoder;->NB_QUALITY_MAP:[I

    aget p1, v0, p1

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->submodeSelect:I

    iput p1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->sampling_rate:I

    return-void
.end method

.method public setVad(Z)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->vad_enabled:I

    return-void
.end method

.method public setVbr(Z)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/NbEncoder;->vbr_enabled:I

    return-void
.end method

.method public setVbrQuality(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lorg/xiph/speex/NbEncoder;->vbr_quality:F

    return-void
.end method
