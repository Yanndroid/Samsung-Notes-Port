.class public Lorg/xiph/speex/NbDecoder;
.super Lorg/xiph/speex/NbCodec;
.source "SourceFile"

# interfaces
.implements Lorg/xiph/speex/Decoder;


# instance fields
.field private count_lost:I

.field public enhanced:Z

.field public inband:Lorg/xiph/speex/Inband;

.field private innov2:[F

.field private last_ol_gain:F

.field private last_pitch:I

.field private last_pitch_gain:F

.field private pitch_gain_buf:[F

.field private pitch_gain_buf_idx:I

.field public random:Ljava/util/Random;

.field public stereo:Lorg/xiph/speex/Stereo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/xiph/speex/NbCodec;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/NbDecoder;->random:Ljava/util/Random;

    new-instance v0, Lorg/xiph/speex/Stereo;

    invoke-direct {v0}, Lorg/xiph/speex/Stereo;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/NbDecoder;->stereo:Lorg/xiph/speex/Stereo;

    new-instance v1, Lorg/xiph/speex/Inband;

    invoke-direct {v1, v0}, Lorg/xiph/speex/Inband;-><init>(Lorg/xiph/speex/Stereo;)V

    iput-object v1, p0, Lorg/xiph/speex/NbDecoder;->inband:Lorg/xiph/speex/Inband;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    return-void
.end method


# virtual methods
.method public decode(Lorg/xiph/speex/Bits;[F)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const/4 v14, 0x3

    new-array v15, v14, [F

    const/16 v1, 0xf

    const/4 v2, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez v12, :cond_0

    iget v3, v0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    if-eqz v3, :cond_0

    iput v11, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    goto/16 :goto_3

    :cond_0
    if-nez v12, :cond_1

    invoke-virtual {v0, v13}, Lorg/xiph/speex/NbDecoder;->decodeLost([F)I

    return v11

    :cond_1
    :goto_0
    invoke-virtual {v12, v10}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v12, v14}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    sget-object v4, Lorg/xiph/speex/SbCodec;->SB_FRAME_SIZE:[I

    aget v5, v4, v3

    if-ltz v5, :cond_4

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v12, v5}, Lorg/xiph/speex/Bits;->advance(I)V

    invoke-virtual {v12, v10}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v12, v14}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    aget v4, v4, v3

    if-ltz v4, :cond_3

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v12, v4}, Lorg/xiph/speex/Bits;->advance(I)V

    invoke-virtual {v12, v10}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "More than two sideband layers found"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sideband mode encountered. (2nd sideband): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sideband mode encountered (1st sideband): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    invoke-virtual {v12, v2}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    if-ne v3, v1, :cond_6

    return v10

    :cond_6
    const/16 v4, 0xe

    const/16 v5, 0x8

    if-ne v3, v4, :cond_7

    iget-object v4, v0, Lorg/xiph/speex/NbDecoder;->inband:Lorg/xiph/speex/Inband;

    invoke-virtual {v4, v12}, Lorg/xiph/speex/Inband;->speexInbandRequest(Lorg/xiph/speex/Bits;)V

    goto :goto_2

    :cond_7
    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    iget-object v4, v0, Lorg/xiph/speex/NbDecoder;->inband:Lorg/xiph/speex/Inband;

    invoke-virtual {v4, v12}, Lorg/xiph/speex/Inband;->userInbandRequest(Lorg/xiph/speex/Bits;)V

    goto :goto_2

    :cond_8
    if-gt v3, v5, :cond_3b

    :goto_2
    if-gt v3, v5, :cond_3a

    iput v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    :goto_3
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v5, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v3, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v5, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v3, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v4, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v5, v3, v4

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x0

    if-nez v5, :cond_c

    const v1, 0x3f6e147b    # 0.93f

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    move v1, v11

    :goto_4
    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_9

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    aget v3, v2, v1

    aget v2, v2, v1

    mul-float/2addr v3, v2

    add-float v17, v17, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    int-to-float v1, v2

    div-float v1, v17, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    :goto_5
    iget v3, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    iget v4, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    add-int v5, v3, v4

    if-ge v2, v5, :cond_a

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v1

    iget-object v5, v0, Lorg/xiph/speex/NbDecoder;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float v5, v5, v16

    mul-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    iput v10, v0, Lorg/xiph/speex/NbCodec;->first:I

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v8, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v4

    move/from16 v23, v7

    move-object/from16 v24, v8

    invoke-static/range {v17 .. v24}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    aget v1, v1, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v13, v11

    move v1, v10

    :goto_6
    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_b

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget v3, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    add-int/lit8 v4, v1, -0x1

    aget v4, v13, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    sub-int/2addr v2, v10

    aget v1, v13, v2

    iput v1, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    iput v11, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    return v11

    :cond_c
    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/xiph/speex/SubMode;->lsqQuant:Lorg/xiph/speex/LspQuant;

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-virtual {v3, v4, v5, v12}, Lorg/xiph/speex/LspQuant;->unquant([FILorg/xiph/speex/Bits;)V

    iget v3, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    const/4 v9, 0x2

    if-eqz v3, :cond_e

    move v3, v11

    move/from16 v4, v17

    :goto_7
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v5, :cond_d

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    aget v5, v5, v3

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    const-wide v5, 0x3fe3333333333333L    # 0.6

    const-wide v7, -0x4036666666666666L    # -0.2

    float-to-double v3, v4

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-float v3, v3

    move v4, v11

    :goto_8
    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    mul-int/2addr v5, v9

    if-ge v4, v5, :cond_e

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    aget v6, v5, v4

    mul-float/2addr v6, v3

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    iget v3, v0, Lorg/xiph/speex/NbCodec;->first:I

    if-nez v3, :cond_f

    iget v3, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    if-eqz v3, :cond_10

    :cond_f
    move v3, v11

    :goto_9
    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v3, v4, :cond_10

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v4, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v3, v3, v4

    iget v3, v3, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_11

    iget v3, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    const/4 v4, 0x7

    invoke-virtual {v12, v4}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v4

    add-int/2addr v3, v4

    move v7, v3

    goto :goto_a

    :cond_11
    move v7, v11

    :goto_a
    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v4, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v3, v3, v4

    iget v3, v3, Lorg/xiph/speex/SubMode;->forced_pitch_gain:I

    if-eqz v3, :cond_12

    invoke-virtual {v12, v2}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    const v4, 0x3d8888b5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    move/from16 v18, v3

    goto :goto_b

    :cond_12
    move/from16 v18, v17

    :goto_b
    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v6, v3

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    if-ne v3, v10, :cond_14

    invoke-virtual {v12, v2}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v2

    if-ne v2, v1, :cond_13

    iput v10, v0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    goto :goto_c

    :cond_13
    iput v11, v0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    :cond_14
    :goto_c
    iget v1, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    if-le v1, v10, :cond_15

    iput v11, v0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    :cond_15
    const/16 v1, 0x28

    move v5, v1

    move v4, v11

    move/from16 v19, v17

    move/from16 v20, v19

    :goto_d
    iget v1, v0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    if-ge v4, v1, :cond_36

    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    mul-int v21, v2, v4

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int v30, v2, v21

    iget v2, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int v22, v2, v21

    int-to-float v2, v4

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v2, v2, v23

    int-to-float v1, v1

    div-float/2addr v2, v1

    move v1, v11

    :goto_e
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v3, :cond_16

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    sub-float v24, v23, v2

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    aget v9, v9, v1

    mul-float v24, v24, v9

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v9, v9, v1

    mul-float/2addr v9, v2

    add-float v24, v24, v9

    aput v24, v3, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x2

    goto :goto_e

    :cond_16
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    const v2, 0x3b03126f    # 0.002f

    invoke-static {v1, v3, v2}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    move v1, v11

    :goto_f
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_17

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    aget v3, v2, v1

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v3, v11

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, p1

    const/4 v11, 0x0

    goto :goto_f

    :cond_17
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    invoke-virtual {v1, v3, v9, v2}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    iget-boolean v1, v0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    if-eqz v1, :cond_18

    const v1, 0x3f666666    # 0.9f

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v9, v2, v3

    iget v9, v9, Lorg/xiph/speex/SubMode;->lpc_enh_k1:F

    aget-object v2, v2, v3

    iget v2, v2, Lorg/xiph/speex/SubMode;->lpc_enh_k2:F

    mul-float v3, v9, v1

    sub-float v3, v23, v3

    mul-float v11, v2, v1

    sub-float v11, v23, v11

    div-float/2addr v3, v11

    sub-float v3, v23, v3

    div-float/2addr v3, v1

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    iget v12, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v9, v1, v11, v12}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget v11, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v2, v1, v9, v11}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget v9, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v3, v1, v2, v9}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    :cond_18
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aput v17, v1, v4

    move/from16 v2, v23

    const/4 v1, 0x0

    :goto_10
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-gt v1, v3, :cond_19

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aget v9, v3, v4

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    aget v11, v11, v1

    mul-float/2addr v11, v2

    add-float/2addr v9, v11

    aput v9, v3, v4

    neg-float v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    :goto_11
    iget v9, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v9, :cond_1a

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v3, v22, v1

    aput v17, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v3, v1, v2

    iget v3, v3, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    if-eq v3, v8, :cond_1c

    aget-object v3, v1, v2

    iget v3, v3, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    if-eqz v3, :cond_1b

    sub-int v3, v7, v3

    add-int/2addr v3, v10

    iget v11, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    if-ge v3, v11, :cond_1d

    move v3, v11

    goto :goto_12

    :cond_1b
    move v3, v7

    goto :goto_12

    :cond_1c
    iget v3, v0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    :cond_1d
    :goto_12
    move v11, v3

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->ltp:Lorg/xiph/speex/Ltp;

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v12, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    iget v3, v0, Lorg/xiph/speex/NbDecoder;->last_pitch_gain:F

    move/from16 v26, v3

    move/from16 v3, v22

    move/from16 v31, v4

    move v4, v11

    move v11, v5

    move/from16 v5, v18

    move v14, v6

    move v6, v9

    move v9, v7

    move-object v7, v15

    move/from16 v32, v8

    move-object/from16 v8, p1

    move/from16 v33, v9

    const/4 v13, 0x2

    move v9, v12

    move v12, v10

    move/from16 v10, v21

    move/from16 v34, v11

    const/4 v13, 0x0

    move/from16 v11, v26

    invoke-virtual/range {v1 .. v11}, Lorg/xiph/speex/Ltp;->unquant([FIIFI[FLorg/xiph/speex/Bits;IIF)I

    move-result v7

    iget v1, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    if-eqz v1, :cond_1e

    iget v1, v0, Lorg/xiph/speex/NbDecoder;->last_ol_gain:F

    cmpg-float v2, v14, v1

    if-gez v2, :cond_1e

    add-float v1, v1, v23

    div-float v6, v14, v1

    move v11, v13

    :goto_13
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v1, :cond_1e

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v2, v11

    aget v3, v1, v2

    mul-float/2addr v3, v6

    aput v3, v1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_1e
    aget v1, v15, v13

    aget v2, v15, v12

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget v3, v15, v2

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    aget v1, v15, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aget v2, v15, v13

    cmpl-float v2, v2, v17

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_1f

    aget v2, v15, v13

    add-float/2addr v1, v2

    goto :goto_14

    :cond_1f
    float-to-double v1, v1

    aget v5, v15, v13

    float-to-double v5, v5

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    double-to-float v1, v1

    :goto_14
    const/4 v2, 0x2

    aget v5, v15, v2

    cmpl-float v5, v5, v17

    if-lez v5, :cond_20

    aget v3, v15, v2

    add-float/2addr v1, v3

    goto :goto_15

    :cond_20
    float-to-double v1, v1

    aget v5, v15, v13

    float-to-double v5, v5

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    double-to-float v1, v1

    :goto_15
    add-float v19, v19, v1

    cmpl-float v2, v1, v20

    if-lez v2, :cond_21

    move/from16 v20, v1

    move/from16 v34, v7

    :cond_21
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    mul-int v4, v31, v1

    move v1, v4

    :goto_16
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_22

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    aput v17, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v3, v1, v2

    iget v3, v3, Lorg/xiph/speex/SubMode;->have_subframe_gain:I

    const/4 v10, 0x3

    move-object/from16 v11, p1

    if-ne v3, v10, :cond_23

    invoke-virtual {v11, v10}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v1

    float-to-double v2, v14

    sget-object v5, Lorg/xiph/speex/NbCodec;->exc_gain_quant_scal3:[F

    aget v1, v5, v1

    :goto_17
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v2, v5

    double-to-float v6, v2

    goto :goto_18

    :cond_23
    aget-object v1, v1, v2

    iget v1, v1, Lorg/xiph/speex/SubMode;->have_subframe_gain:I

    if-ne v1, v12, :cond_24

    invoke-virtual {v11, v12}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v1

    float-to-double v2, v14

    sget-object v5, Lorg/xiph/speex/NbCodec;->exc_gain_quant_scal1:[F

    aget v1, v5, v1

    goto :goto_17

    :cond_24
    move v6, v14

    :goto_18
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    if-eqz v3, :cond_25

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    invoke-virtual {v1, v2, v4, v3, v11}, Lorg/xiph/speex/CbSearch;->unquant([FIILorg/xiph/speex/Bits;)V

    :cond_25
    move v1, v4

    :goto_19
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_26

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    aget v3, v2, v1

    mul-float/2addr v3, v6

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_26
    iget v1, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    if-ne v1, v12, :cond_2c

    move v1, v13

    :goto_1a
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v2, :cond_27

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v3, v22, v1

    aput v17, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_27
    :goto_1b
    iget v1, v0, Lorg/xiph/speex/NbCodec;->voc_offset:I

    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v2, :cond_29

    if-ltz v1, :cond_28

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v1, v22, v1

    move/from16 v9, v33

    int-to-float v3, v9

    mul-float v3, v3, v23

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v3, v10

    aput v3, v2, v1

    goto :goto_1c

    :cond_28
    move/from16 v9, v33

    :goto_1c
    iget v1, v0, Lorg/xiph/speex/NbCodec;->voc_offset:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/xiph/speex/NbCodec;->voc_offset:I

    move-object/from16 v11, p1

    move/from16 v33, v9

    const/4 v10, 0x3

    goto :goto_1b

    :cond_29
    move/from16 v9, v33

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/xiph/speex/NbCodec;->voc_offset:I

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3f19999a    # 0.6f

    sub-float v3, v18, v2

    mul-float/2addr v3, v1

    add-float v3, v3, v16

    cmpg-float v1, v3, v17

    if-gez v1, :cond_2a

    move/from16 v3, v17

    :cond_2a
    cmpl-float v1, v3, v23

    if-lez v1, :cond_2b

    move/from16 v3, v23

    :cond_2b
    move v11, v13

    :goto_1d
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v1, :cond_2d

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v5, v22, v11

    aget v8, v1, v5

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v3

    aget v24, v1, v5

    mul-float v10, v10, v24

    mul-float/2addr v10, v14

    mul-float v24, v3, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->voc_m1:F

    mul-float v24, v24, v2

    mul-float v24, v24, v14

    add-float v10, v10, v24

    mul-float v2, v3, v16

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    add-int v24, v4, v11

    aget v26, v12, v24

    mul-float v26, v26, v2

    add-float v10, v10, v26

    iget v13, v0, Lorg/xiph/speex/NbCodec;->voc_m2:F

    mul-float/2addr v2, v13

    sub-float/2addr v10, v2

    sub-float v2, v23, v3

    aget v13, v12, v24

    mul-float/2addr v2, v13

    add-float/2addr v10, v2

    aput v10, v1, v5

    iput v8, v0, Lorg/xiph/speex/NbCodec;->voc_m1:F

    aget v2, v12, v24

    iput v2, v0, Lorg/xiph/speex/NbCodec;->voc_m2:F

    const v2, 0x3f733333    # 0.95f

    iget v8, v0, Lorg/xiph/speex/NbCodec;->voc_mean:F

    mul-float/2addr v8, v2

    const v2, 0x3d4ccccd    # 0.05f

    aget v10, v1, v5

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    iput v8, v0, Lorg/xiph/speex/NbCodec;->voc_mean:F

    aget v2, v1, v5

    sub-float/2addr v2, v8

    aput v2, v1, v5

    add-int/lit8 v11, v11, 0x1

    const v2, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_1d

    :cond_2c
    move/from16 v9, v33

    const/4 v11, 0x0

    :goto_1e
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v1, :cond_2d

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v2, v22, v11

    aget v3, v1, v2

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    add-int v8, v4, v11

    aget v5, v5, v8

    add-float/2addr v3, v5

    aput v3, v1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_2d
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/xiph/speex/SubMode;->double_codebook:I

    if-eqz v1, :cond_30

    const/4 v11, 0x0

    :goto_1f
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v1, :cond_2e

    iget-object v1, v0, Lorg/xiph/speex/NbDecoder;->innov2:[F

    aput v17, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_2e
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v3, v0, Lorg/xiph/speex/NbDecoder;->innov2:[F

    move-object/from16 v10, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v10}, Lorg/xiph/speex/CbSearch;->unquant([FIILorg/xiph/speex/Bits;)V

    const/4 v11, 0x0

    :goto_20
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v1, :cond_2f

    iget-object v1, v0, Lorg/xiph/speex/NbDecoder;->innov2:[F

    aget v2, v1, v11

    float-to-double v2, v2

    float-to-double v4, v6

    const-wide v12, 0x3fdd1745d1745d17L    # 0.45454545454545453

    mul-double/2addr v4, v12

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_2f
    const/4 v11, 0x0

    :goto_21
    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v1, :cond_31

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v2, v22, v11

    aget v3, v1, v2

    iget-object v4, v0, Lorg/xiph/speex/NbDecoder;->innov2:[F

    aget v4, v4, v11

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    :cond_30
    move-object/from16 v10, p1

    :cond_31
    const/4 v11, 0x0

    :goto_22
    iget v6, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v11, v6, :cond_32

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    add-int v2, v30, v11

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v4, v22, v11

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_32
    iget-boolean v1, v0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    if-eqz v1, :cond_33

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v3, v1, v2

    iget v3, v3, Lorg/xiph/speex/SubMode;->comb_gain:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_33

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    aget-object v1, v1, v2

    iget v11, v1, Lorg/xiph/speex/SubMode;->comb_gain:F

    move-object v1, v3

    move-object v2, v4

    move/from16 v3, v22

    move-object v4, v5

    move/from16 v5, v30

    move-object v8, v15

    move v12, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lorg/xiph/speex/Filters;->comb_filter([FI[FIII[FF)V

    goto :goto_23

    :cond_33
    move v12, v9

    :goto_23
    iget-boolean v1, v0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    if-eqz v1, :cond_34

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object/from16 v22, v1

    move/from16 v23, v30

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v5

    invoke-static/range {v22 .. v29}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[FII[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    const/16 v29, 0x0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    invoke-static/range {v22 .. v29}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[FII[FI)V

    goto :goto_25

    :cond_34
    const/4 v11, 0x0

    :goto_24
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v11, v1, :cond_35

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    add-int/2addr v1, v11

    aput v17, v2, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :cond_35
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object/from16 v22, v2

    move/from16 v23, v30

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    move/from16 v26, v30

    move/from16 v27, v4

    move/from16 v28, v1

    move-object/from16 v29, v5

    invoke-static/range {v22 .. v29}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    :goto_25
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v13, p2

    move v7, v12

    move v6, v14

    move/from16 v8, v32

    move/from16 v5, v34

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v14, 0x3

    move-object v12, v10

    const/4 v10, 0x1

    goto/16 :goto_d

    :cond_36
    move/from16 v34, v5

    move v14, v6

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    aget v1, v1, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v10, 0x1

    :goto_26
    iget v1, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v10, v1, :cond_37

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int/2addr v2, v10

    aget v1, v1, v2

    iget v2, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    add-int/lit8 v3, v10, -0x1

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_37
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget v1, p2, v1

    iput v1, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    const/4 v11, 0x0

    :goto_27
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v11, v1, :cond_38

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v2, v2, v11

    aput v2, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_38
    const/4 v1, 0x0

    iput v1, v0, Lorg/xiph/speex/NbCodec;->first:I

    iput v1, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    move/from16 v1, v34

    iput v1, v0, Lorg/xiph/speex/NbDecoder;->last_pitch:I

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v1, v1, v19

    iput v1, v0, Lorg/xiph/speex/NbDecoder;->last_pitch_gain:F

    iget-object v2, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf:[F

    iget v3, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    aput v1, v2, v3

    const/4 v1, 0x2

    const/4 v5, 0x0

    if-le v4, v1, :cond_39

    iput v5, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    :cond_39
    iput v14, v0, Lorg/xiph/speex/NbDecoder;->last_ol_gain:F

    return v5

    :cond_3a
    move v4, v10

    move-object/from16 v13, p2

    goto/16 :goto_0

    :cond_3b
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode encountered: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decodeLost([F)I
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    int-to-double v2, v1

    const-wide v4, -0x405b851eb851eb85L    # -0.04

    mul-double/2addr v2, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    cmpg-float v4, v4, v6

    const/4 v6, 0x2

    if-gez v4, :cond_2

    aget v4, v2, v5

    aget v7, v2, v6

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    aget v2, v2, v5

    goto :goto_0

    :cond_0
    aget v4, v2, v3

    aget v7, v2, v6

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    aget v2, v2, v6

    goto :goto_0

    :cond_1
    aget v2, v2, v3

    goto :goto_0

    :cond_2
    aget v4, v2, v6

    aget v7, v2, v5

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    aget v2, v2, v5

    goto :goto_0

    :cond_3
    aget v4, v2, v6

    aget v7, v2, v3

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    aget v2, v2, v6

    goto :goto_0

    :cond_4
    aget v2, v2, v3

    :goto_0
    iget v4, v0, Lorg/xiph/speex/NbDecoder;->last_pitch_gain:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    iput v2, v0, Lorg/xiph/speex/NbDecoder;->last_pitch_gain:F

    :cond_5
    iget v2, v0, Lorg/xiph/speex/NbDecoder;->last_pitch_gain:F

    const v4, 0x3f733333    # 0.95f

    cmpl-float v7, v2, v4

    if-lez v7, :cond_6

    move v2, v4

    :cond_6
    mul-float/2addr v2, v1

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v8, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v8, v7

    invoke-static {v4, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v8, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v8, v7

    invoke-static {v4, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v3

    :goto_1
    iget v7, v0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    if-ge v4, v7, :cond_e

    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    mul-int/2addr v7, v4

    iget v8, v0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    add-int/2addr v8, v7

    iget v9, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v9, v7

    iget-boolean v7, v0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v7, :cond_8

    const v7, 0x3f666666    # 0.9f

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v12, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v13, v11, v12

    if-eqz v13, :cond_7

    aget-object v13, v11, v12

    iget v13, v13, Lorg/xiph/speex/SubMode;->lpc_enh_k1:F

    aget-object v11, v11, v12

    iget v11, v11, Lorg/xiph/speex/SubMode;->lpc_enh_k2:F

    goto :goto_2

    :cond_7
    const v13, 0x3f333333    # 0.7f

    move v11, v13

    :goto_2
    mul-float v12, v13, v7

    sub-float v12, v10, v12

    mul-float v14, v11, v7

    sub-float v14, v10, v14

    div-float/2addr v12, v14

    sub-float v12, v10, v12

    div-float/2addr v12, v7

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    iget v15, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v13, v7, v14, v15}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v13, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v11, v7, v13, v14}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget v13, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v12, v7, v11, v13}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    :cond_8
    const/4 v7, 0x0

    move v11, v3

    move v12, v7

    :goto_3
    iget v13, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v11, v13, :cond_9

    iget-object v13, v0, Lorg/xiph/speex/NbCodec;->innov:[F

    aget v14, v13, v11

    aget v13, v13, v11

    mul-float/2addr v14, v13

    add-float/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    int-to-float v11, v13

    div-float/2addr v12, v11

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    move v12, v3

    :goto_4
    iget v13, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v12, v13, :cond_a

    iget-object v13, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v14, v9, v12

    iget v15, v0, Lorg/xiph/speex/NbDecoder;->last_pitch:I

    sub-int v15, v14, v15

    aget v15, v13, v15

    mul-float/2addr v15, v2

    sub-float v6, v10, v2

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v11

    iget-object v6, v0, Lorg/xiph/speex/NbDecoder;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v6, v6, v16

    mul-float/2addr v5, v6

    add-float/2addr v15, v5

    aput v15, v13, v14

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_4

    :cond_a
    move v5, v3

    :goto_5
    iget v13, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v5, v13, :cond_b

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    add-int v10, v8, v5

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v12, v9, v5

    aget v11, v11, v12

    aput v11, v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    iget-boolean v5, v0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    if-eqz v5, :cond_c

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v15, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move v10, v8

    move v14, v5

    move/from16 v16, v5

    invoke-static/range {v9 .. v16}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[FII[FI)V

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v13, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v15, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[FII[FI)V

    goto :goto_7

    :cond_c
    move v5, v3

    :goto_6
    iget v15, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v5, v15, :cond_d

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    add-int/2addr v15, v5

    aput v7, v6, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object v9, v12

    move v10, v8

    move v13, v8

    move-object/from16 v16, v5

    invoke-static/range {v9 .. v16}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_e
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    aget v1, v1, v3

    iget v4, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    aput v1, p1, v3

    const/4 v1, 0x1

    :goto_8
    iget v4, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v4, :cond_f

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    aget v4, v4, v1

    iget v5, v0, Lorg/xiph/speex/NbCodec;->preemph:F

    add-int/lit8 v6, v1, -0x1

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x1

    sub-int/2addr v4, v1

    aget v4, p1, v4

    iput v4, v0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    iput v3, v0, Lorg/xiph/speex/NbCodec;->first:I

    iget v4, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    add-int/2addr v4, v1

    iput v4, v0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    iget-object v1, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf:[F

    iget v4, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    aput v2, v1, v4

    const/4 v1, 0x2

    if-le v5, v1, :cond_10

    iput v3, v0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    :cond_10
    return v3
.end method

.method public decodeStereo([FI)V
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/NbDecoder;->stereo:Lorg/xiph/speex/Stereo;

    invoke-virtual {v0, p1, p2}, Lorg/xiph/speex/Stereo;->decode([FI)V

    return-void
.end method

.method public getPerceptualEnhancement()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    return v0
.end method

.method public init(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xiph/speex/NbCodec;->init(IIII)V

    iget-object p1, p0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    invoke-virtual {p1}, Lorg/xiph/speex/Filters;->init()V

    const/16 p1, 0x28

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/NbDecoder;->innov2:[F

    const/4 p2, 0x0

    iput p2, p0, Lorg/xiph/speex/NbDecoder;->count_lost:I

    iput p1, p0, Lorg/xiph/speex/NbDecoder;->last_pitch:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/NbDecoder;->last_pitch_gain:F

    const/4 p3, 0x3

    new-array p3, p3, [F

    iput-object p3, p0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf:[F

    iput p2, p0, Lorg/xiph/speex/NbDecoder;->pitch_gain_buf_idx:I

    iput p1, p0, Lorg/xiph/speex/NbDecoder;->last_ol_gain:F

    return-void
.end method

.method public setPerceptualEnhancement(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xiph/speex/NbDecoder;->enhanced:Z

    return-void
.end method
