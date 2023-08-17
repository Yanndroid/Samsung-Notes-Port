.class public Lorg/xiph/speex/SbDecoder;
.super Lorg/xiph/speex/SbCodec;
.source "SourceFile"

# interfaces
.implements Lorg/xiph/speex/Decoder;


# instance fields
.field public enhanced:Z

.field private innov2:[F

.field public lowdec:Lorg/xiph/speex/Decoder;

.field public stereo:Lorg/xiph/speex/Stereo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xiph/speex/SbCodec;-><init>()V

    new-instance v0, Lorg/xiph/speex/Stereo;

    invoke-direct {v0}, Lorg/xiph/speex/Stereo;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SbDecoder;->stereo:Lorg/xiph/speex/Stereo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    return-void
.end method


# virtual methods
.method public decode(Lorg/xiph/speex/Bits;[F)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    invoke-interface {v3, v1, v4}, Lorg/xiph/speex/Decoder;->decode(Lorg/xiph/speex/Bits;[F)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    iget-object v3, v0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    invoke-interface {v3}, Lorg/xiph/speex/Decoder;->getDtx()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0, v2, v3}, Lorg/xiph/speex/SbDecoder;->decodeLost([FZ)I

    return v4

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/xiph/speex/Bits;->peek()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6}, Lorg/xiph/speex/Bits;->unpack(I)I

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v5

    iput v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    goto :goto_0

    :cond_2
    iput v4, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    :goto_0
    move v5, v4

    :goto_1
    iget v7, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    const/4 v8, 0x0

    if-ge v5, v7, :cond_3

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v7, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v5, v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v5, :cond_7

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2, v6}, Lorg/xiph/speex/SbDecoder;->decodeLost([FZ)I

    return v4

    :cond_4
    move v1, v4

    :goto_2
    iget v14, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v14, :cond_5

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aput v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput v6, v0, Lorg/xiph/speex/NbCodec;->first:I

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v10, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v12, v0, Lorg/xiph/speex/SbCodec;->high:[F

    const/4 v13, 0x0

    iget v15, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object/from16 v16, v1

    invoke-static/range {v9 .. v16}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    sget-object v18, Lorg/xiph/speex/Codebook;->h0:[F

    iget-object v5, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    iget v6, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v21, 0x40

    iget-object v8, v0, Lorg/xiph/speex/SbCodec;->g0_mem:[F

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v10, v0, Lorg/xiph/speex/SbCodec;->high:[F

    sget-object v11, Lorg/xiph/speex/Codebook;->h1:[F

    iget-object v12, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    iget v13, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v14, 0x40

    iget-object v15, v0, Lorg/xiph/speex/SbCodec;->g1_mem:[F

    invoke-virtual/range {v9 .. v15}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    move v1, v4

    :goto_3
    iget v3, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    if-ge v1, v3, :cond_6

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    aget v3, v3, v1

    iget-object v5, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    aget v5, v5, v1

    sub-float/2addr v3, v5

    mul-float/2addr v3, v7

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return v4

    :cond_7
    iget-object v3, v0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    invoke-interface {v3}, Lorg/xiph/speex/Decoder;->getPiGain()[F

    move-result-object v3

    iget-object v5, v0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    invoke-interface {v5}, Lorg/xiph/speex/Decoder;->getExc()[F

    move-result-object v5

    iget-object v6, v0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    invoke-interface {v6}, Lorg/xiph/speex/Decoder;->getInnov()[F

    move-result-object v6

    iget-object v9, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v10, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v9, v9, v10

    iget-object v9, v9, Lorg/xiph/speex/SubMode;->lsqQuant:Lorg/xiph/speex/LspQuant;

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    iget v11, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-virtual {v9, v10, v11, v1}, Lorg/xiph/speex/LspQuant;->unquant([FILorg/xiph/speex/Bits;)V

    iget v9, v0, Lorg/xiph/speex/NbCodec;->first:I

    if-eqz v9, :cond_8

    move v9, v4

    :goto_4
    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v9, v10, :cond_8

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v11, v11, v9

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    move v9, v4

    :goto_5
    iget v10, v0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    if-ge v9, v10, :cond_17

    iget v11, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    mul-int/2addr v11, v9

    int-to-float v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    int-to-float v10, v10

    div-float/2addr v12, v10

    move v10, v4

    :goto_6
    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v10, v14, :cond_9

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    sub-float v15, v13, v12

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    aget v4, v4, v10

    mul-float/2addr v15, v4

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v4, v4, v10

    mul-float/2addr v4, v12

    add-float/2addr v15, v4

    aput v15, v14, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    const v10, 0x3d4ccccd    # 0.05f

    invoke-static {v4, v14, v10}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    const/4 v4, 0x0

    :goto_7
    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v4, v10, :cond_a

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    aget v12, v10, v4

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v12, v14

    aput v12, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    invoke-virtual {v4, v12, v14, v10}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    iget-boolean v4, v0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    if-eqz v4, :cond_b

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v10, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v12, v4, v10

    iget v12, v12, Lorg/xiph/speex/SubMode;->lpc_enh_k1:F

    aget-object v4, v4, v10

    iget v4, v4, Lorg/xiph/speex/SubMode;->lpc_enh_k2:F

    sub-float v10, v12, v4

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v15, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v12, v14, v15, v7}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v4, v7, v12, v14}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget v12, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v10, v4, v7, v12}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    :cond_b
    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aput v8, v4, v9

    move v7, v8

    move v10, v13

    const/4 v4, 0x0

    :goto_8
    iget v12, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-gt v4, v12, :cond_c

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    aget v14, v12, v4

    mul-float/2addr v14, v10

    add-float/2addr v7, v14

    neg-float v10, v10

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aget v15, v14, v9

    aget v12, v12, v4

    add-float/2addr v15, v12

    aput v15, v14, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    aget v4, v3, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v10, 0x3c23d70a    # 0.01f

    add-float/2addr v4, v10

    div-float v4, v13, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v7, v10

    div-float v7, v13, v7

    add-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v10

    div-float/2addr v7, v4

    move v4, v11

    :goto_9
    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int/2addr v10, v11

    if-ge v4, v10, :cond_d

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aput v8, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v10, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v4, v4, v10

    iget-object v4, v4, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    if-nez v4, :cond_e

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v4

    int-to-double v12, v4

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v4, v12

    div-float/2addr v4, v7

    move v7, v11

    :goto_a
    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int/2addr v10, v11

    if-ge v7, v10, :cond_13

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v12, v0, Lorg/xiph/speex/SbCodec;->foldingGain:F

    mul-float/2addr v12, v4

    aget v13, v6, v7

    mul-float/2addr v12, v13

    aput v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v4

    move v12, v8

    move v10, v11

    :goto_b
    iget v14, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int/2addr v14, v11

    if-ge v10, v14, :cond_f

    aget v14, v5, v10

    aget v15, v5, v10

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_f
    const v10, 0x3e8a60dd

    int-to-float v4, v4

    mul-float/2addr v4, v10

    const/high16 v10, 0x40000000    # 2.0f

    sub-float/2addr v4, v10

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    double-to-float v4, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    mul-float/2addr v4, v10

    div-float/2addr v4, v7

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v10, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v7, v7, v10

    iget-object v7, v7, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v12, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    invoke-virtual {v7, v10, v11, v12, v1}, Lorg/xiph/speex/CbSearch;->unquant([FIILorg/xiph/speex/Bits;)V

    move v7, v11

    :goto_c
    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int/2addr v10, v11

    if-ge v7, v10, :cond_10

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aget v12, v10, v7

    mul-float/2addr v12, v4

    aput v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_10
    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v10, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v7, v7, v10

    iget v7, v7, Lorg/xiph/speex/SubMode;->double_codebook:I

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    :goto_d
    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v7, v10, :cond_11

    iget-object v10, v0, Lorg/xiph/speex/SbDecoder;->innov2:[F

    aput v8, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_11
    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v12, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v7, v7, v12

    iget-object v7, v7, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v12, v0, Lorg/xiph/speex/SbDecoder;->innov2:[F

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13, v10, v1}, Lorg/xiph/speex/CbSearch;->unquant([FIILorg/xiph/speex/Bits;)V

    const/4 v13, 0x0

    :goto_e
    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v13, v7, :cond_12

    iget-object v7, v0, Lorg/xiph/speex/SbDecoder;->innov2:[F

    aget v10, v7, v13

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v12, v4

    mul-float/2addr v10, v12

    aput v10, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_12
    const/4 v13, 0x0

    :goto_f
    iget v4, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v13, v4, :cond_13

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v7, v11, v13

    aget v10, v4, v7

    iget-object v12, v0, Lorg/xiph/speex/SbDecoder;->innov2:[F

    aget v12, v12, v13

    add-float/2addr v10, v12

    aput v10, v4, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_13
    move v4, v11

    :goto_10
    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    add-int v10, v11, v7

    if-ge v4, v10, :cond_14

    iget-object v7, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aget v10, v10, v4

    aput v10, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_14
    iget-boolean v4, v0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    if-eqz v4, :cond_15

    iget-object v12, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget-object v15, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move v13, v11

    move/from16 v16, v7

    move/from16 v17, v4

    move-object/from16 v18, v10

    move/from16 v19, v4

    invoke-static/range {v12 .. v19}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[FII[FI)V

    iget-object v12, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget-object v15, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    const/16 v19, 0x0

    move/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v10

    invoke-static/range {v12 .. v19}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[FII[FI)V

    goto :goto_12

    :cond_15
    const/4 v13, 0x0

    :goto_11
    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v13, v4, :cond_16

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    add-int/2addr v4, v13

    aput v8, v7, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_16
    iget-object v15, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v14, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object v12, v15

    move v13, v11

    move/from16 v16, v11

    move/from16 v17, v7

    move/from16 v18, v4

    move-object/from16 v19, v10

    invoke-static/range {v12 .. v19}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    :goto_12
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_5

    :cond_17
    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v11, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    sget-object v12, Lorg/xiph/speex/Codebook;->h0:[F

    iget-object v13, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    iget v14, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v15, 0x40

    iget-object v1, v0, Lorg/xiph/speex/SbCodec;->g0_mem:[F

    move-object/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->high:[F

    sget-object v5, Lorg/xiph/speex/Codebook;->h1:[F

    iget-object v6, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    iget v7, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v8, 0x40

    iget-object v9, v0, Lorg/xiph/speex/SbCodec;->g1_mem:[F

    invoke-virtual/range {v3 .. v9}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    const/4 v13, 0x0

    :goto_13
    iget v1, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    if-ge v13, v1, :cond_18

    iget-object v1, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    aget v1, v1, v13

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    aget v3, v3, v13

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    aput v1, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_18
    const/4 v13, 0x0

    :goto_14
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v13, v1, :cond_19

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v2, v2, v13

    aput v2, v1, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_19
    const/4 v1, 0x0

    iput v1, v0, Lorg/xiph/speex/NbCodec;->first:I

    return v1
.end method

.method public decodeLost([FZ)I
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    iput v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    goto :goto_0

    :cond_0
    const v3, 0x3f7d70a4    # 0.99f

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v3, v4, v4, v5}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    move v3, v1

    :goto_0
    iput v2, v0, Lorg/xiph/speex/NbCodec;->first:I

    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [F

    iput-object v4, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [F

    iput-object v5, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [F

    iput-object v5, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget-boolean v5, v0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v6, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v7, v5, v6

    if-eqz v7, :cond_1

    aget-object v7, v5, v6

    iget v7, v7, Lorg/xiph/speex/SubMode;->lpc_enh_k1:F

    aget-object v5, v5, v6

    iget v5, v5, Lorg/xiph/speex/SubMode;->lpc_enh_k2:F

    goto :goto_1

    :cond_1
    const v7, 0x3f333333    # 0.7f

    move v5, v7

    :goto_1
    sub-float v6, v7, v5

    iget-object v8, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    invoke-static {v7, v8, v4, v2}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v5, v2, v4, v7}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v6, v2, v4, v5}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    :cond_2
    if-nez p2, :cond_3

    move v2, v1

    :goto_2
    iget v4, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v2, v4, :cond_3

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v5, v2

    aget v6, v4, v5

    float-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    iget v10, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v2, v10, :cond_4

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v2, v0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    if-eqz v2, :cond_5

    iget-object v8, v0, Lorg/xiph/speex/SbCodec;->high:[F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->awk2:[F

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->awk1:[F

    const/4 v9, 0x0

    iget v13, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object v4, v8

    move v11, v13

    invoke-static/range {v4 .. v13}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    iget-object v2, v0, Lorg/xiph/speex/SbCodec;->high:[F

    const/4 v15, 0x0

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    const/16 v19, 0x0

    iget v6, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget v7, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v8, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    const/16 v23, 0x0

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    invoke-static/range {v14 .. v23}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_4
    iget v10, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v10, :cond_6

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    add-int/2addr v10, v2

    const/4 v5, 0x0

    aput v5, v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object v7, v0, Lorg/xiph/speex/SbCodec;->high:[F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    const/4 v8, 0x0

    iget v9, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    iget-object v11, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object v4, v7

    invoke-static/range {v4 .. v11}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    :goto_5
    iget-object v12, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v13, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    sget-object v14, Lorg/xiph/speex/Codebook;->h0:[F

    iget-object v15, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    iget v2, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v17, 0x40

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->g0_mem:[F

    move/from16 v16, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v6, v0, Lorg/xiph/speex/SbCodec;->high:[F

    sget-object v7, Lorg/xiph/speex/Codebook;->h1:[F

    iget-object v8, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    iget v9, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v10, 0x40

    iget-object v11, v0, Lorg/xiph/speex/SbCodec;->g1_mem:[F

    invoke-virtual/range {v5 .. v11}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    move v2, v1

    :goto_6
    iget v4, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    if-ge v2, v4, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v5, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    aget v5, v5, v2

    iget-object v6, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    aget v6, v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    aput v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_8

    iput v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    :cond_8
    return v1
.end method

.method public decodeStereo([FI)V
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/SbDecoder;->stereo:Lorg/xiph/speex/Stereo;

    invoke-virtual {v0, p1, p2}, Lorg/xiph/speex/Stereo;->decode([FI)V

    return-void
.end method

.method public getPerceptualEnhancement()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    return v0
.end method

.method public init(IIIIF)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/xiph/speex/SbCodec;->init(IIIIF)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/NbCodec;->excIdx:I

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/xiph/speex/SbDecoder;->innov2:[F

    return-void
.end method

.method public setPerceptualEnhancement(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    return-void
.end method

.method public uwbinit()V
    .locals 8

    new-instance v0, Lorg/xiph/speex/SbDecoder;

    invoke-direct {v0}, Lorg/xiph/speex/SbDecoder;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    invoke-virtual {v0}, Lorg/xiph/speex/SbDecoder;->wbinit()V

    iget-object v0, p0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    iget-boolean v1, p0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    invoke-interface {v0, v1}, Lorg/xiph/speex/Decoder;->setPerceptualEnhancement(Z)V

    invoke-super {p0}, Lorg/xiph/speex/SbCodec;->uwbinit()V

    const/16 v3, 0x140

    const/16 v4, 0x50

    const/16 v5, 0x8

    const/16 v6, 0x500

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/xiph/speex/SbDecoder;->init(IIIIF)V

    return-void
.end method

.method public wbinit()V
    .locals 8

    new-instance v0, Lorg/xiph/speex/NbDecoder;

    invoke-direct {v0}, Lorg/xiph/speex/NbDecoder;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    invoke-virtual {v0}, Lorg/xiph/speex/NbCodec;->nbinit()V

    iget-object v0, p0, Lorg/xiph/speex/SbDecoder;->lowdec:Lorg/xiph/speex/Decoder;

    iget-boolean v1, p0, Lorg/xiph/speex/SbDecoder;->enhanced:Z

    invoke-interface {v0, v1}, Lorg/xiph/speex/Decoder;->setPerceptualEnhancement(Z)V

    invoke-super {p0}, Lorg/xiph/speex/SbCodec;->wbinit()V

    const/16 v3, 0xa0

    const/16 v4, 0x28

    const/16 v5, 0x8

    const/16 v6, 0x280

    const v7, 0x3f333333    # 0.7f

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/xiph/speex/SbDecoder;->init(IIIIF)V

    return-void
.end method
