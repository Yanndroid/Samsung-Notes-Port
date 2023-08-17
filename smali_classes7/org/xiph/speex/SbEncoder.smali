.class public Lorg/xiph/speex/SbEncoder;
.super Lorg/xiph/speex/SbCodec;
.source "SourceFile"

# interfaces
.implements Lorg/xiph/speex/Encoder;


# static fields
.field public static final NB_QUALITY_MAP:[I

.field public static final UWB_QUALITY_MAP:[I

.field public static final WB_QUALITY_MAP:[I


# instance fields
.field public abr_count:F

.field public abr_drift:F

.field public abr_drift2:F

.field public abr_enabled:I

.field private autocorr:[F

.field private buf:[F

.field private bw_lpc1:[F

.field private bw_lpc2:[F

.field public complexity:I

.field private h0_mem:[F

.field private interp_lpc:[F

.field private interp_lsp:[F

.field private lagWindow:[F

.field public lowenc:Lorg/xiph/speex/Encoder;

.field private lsp:[F

.field private mem_sp2:[F

.field private mem_sw:[F

.field public nb_modes:I

.field private old_lsp:[F

.field private rc:[F

.field public relative_quality:F

.field private res:[F

.field public sampling_rate:I

.field public submodeSelect:I

.field private swBuf:[F

.field private target:[F

.field private uwb:Z

.field public vad_enabled:I

.field public vbr_enabled:I

.field public vbr_quality:F

.field private window:[F

.field private x1d:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/xiph/speex/SbEncoder;->NB_QUALITY_MAP:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/xiph/speex/SbEncoder;->WB_QUALITY_MAP:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/xiph/speex/SbEncoder;->UWB_QUALITY_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x8
        0x2
        0x3
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/SbCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/xiph/speex/Bits;[F)I
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    sget-object v2, Lorg/xiph/speex/Codebook;->h0:[F

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->x1d:[F

    iget v5, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    iget-object v7, v0, Lorg/xiph/speex/SbEncoder;->h0_mem:[F

    const/16 v6, 0x40

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lorg/xiph/speex/Filters;->qmf_decomp([F[F[F[FII[F)V

    iget-object v1, v0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    iget-object v2, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    invoke-interface {v1, v13, v2}, Lorg/xiph/speex/Encoder;->encode(Lorg/xiph/speex/Bits;[F)I

    const/4 v14, 0x0

    move v1, v14

    :goto_0
    iget v2, v0, Lorg/xiph/speex/NbCodec;->windowSize:I

    iget v3, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/xiph/speex/SbCodec;->high:[F

    add-int/2addr v3, v1

    aget v3, v2, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_1
    iget v2, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_1

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->windowSize:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v1

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->x1d:[F

    aget v2, v2, v1

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->bufSize:I

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v1}, Lorg/xiph/speex/Encoder;->getPiGain()[F

    move-result-object v15

    iget-object v1, v0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v1}, Lorg/xiph/speex/Encoder;->getExc()[F

    move-result-object v16

    iget-object v1, v0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v1}, Lorg/xiph/speex/Encoder;->getInnov()[F

    move-result-object v17

    iget-object v1, v0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v1}, Lorg/xiph/speex/Encoder;->getMode()I

    move-result v1

    const/4 v12, 0x1

    if-nez v1, :cond_2

    move v1, v12

    goto :goto_2

    :cond_2
    move v1, v14

    :goto_2
    move v2, v14

    :goto_3
    iget v3, v0, Lorg/xiph/speex/NbCodec;->windowSize:I

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->buf:[F

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->high:[F

    aget v4, v4, v2

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->window:[F

    aget v5, v5, v2

    mul-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->buf:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->autocorr:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    add-int/2addr v5, v12

    invoke-static {v2, v4, v5, v3}, Lorg/xiph/speex/Lpc;->autocorr([F[FII)V

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->autocorr:[F

    aget v3, v2, v14

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v3, v3, v18

    aput v3, v2, v14

    aget v3, v2, v14

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpc_floor:F

    mul-float/2addr v3, v4

    aput v3, v2, v14

    move v2, v14

    :goto_4
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_4

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->autocorr:[F

    aget v4, v3, v2

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->lagWindow:[F

    aget v5, v5, v2

    mul-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->autocorr:[F

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->rc:[F

    invoke-static {v2, v4, v5, v3}, Lorg/xiph/speex/Lpc;->wld([F[F[FI)F

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v2, v14, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    aput v18, v2, v14

    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    const v5, 0x3e4ccccd    # 0.2f

    const/16 v11, 0xf

    invoke-static {v2, v3, v4, v11, v5}, Lorg/xiph/speex/Lsp;->lpc2lsp([FI[FIF)I

    move-result v2

    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->lpc:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    const/16 v5, 0xb

    const v6, 0x3ca3d70a    # 0.02f

    invoke-static {v2, v3, v4, v5, v6}, Lorg/xiph/speex/Lsp;->lpc2lsp([FI[FIF)I

    move-result v2

    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-eq v2, v3, :cond_5

    move v2, v14

    :goto_5
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_5

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    add-int/lit8 v7, v2, 0x1

    int-to-float v8, v7

    float-to-double v8, v8

    mul-double/2addr v8, v5

    add-int/lit8 v3, v3, 0x1

    int-to-double v5, v3

    div-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    aput v3, v4, v2

    move v2, v7

    goto :goto_5

    :cond_5
    move v2, v14

    :goto_6
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_6

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    aget v4, v3, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    move v2, v14

    :goto_7
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->old_lsp:[F

    aget v4, v3, v2

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    aget v5, v4, v2

    aget v3, v3, v2

    aget v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    iget v2, v0, Lorg/xiph/speex/SbEncoder;->vbr_enabled:I

    const v10, 0x3d4ccccd    # 0.05f

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    const/high16 v21, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-nez v2, :cond_8

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->vad_enabled:I

    if-eqz v2, :cond_17

    :cond_8
    if-nez v1, :cond_17

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->abr_enabled:I

    if-eqz v2, :cond_d

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->abr_drift2:F

    iget v3, v0, Lorg/xiph/speex/SbEncoder;->abr_drift:F

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v9

    const v4, -0x42333333    # -0.1f

    if-lez v2, :cond_b

    const v2, -0x48d83a54    # -1.0E-5f

    mul-float/2addr v3, v2

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->abr_count:F

    add-float v2, v2, v18

    div-float/2addr v3, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v5, v3, v2

    if-lez v5, :cond_9

    move v3, v2

    :cond_9
    cmpg-float v2, v3, v4

    if-gez v2, :cond_a

    goto :goto_8

    :cond_a
    move v4, v3

    goto :goto_8

    :cond_b
    move v4, v9

    :goto_8
    iget v2, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    add-float/2addr v2, v4

    iput v2, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    iput v3, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    :cond_c
    iget v2, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_d

    iput v9, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    :cond_d
    move v3, v9

    move v4, v3

    move v2, v14

    :goto_9
    iget v5, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v2, v5, :cond_e

    iget-object v5, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    aget v6, v5, v2

    aget v5, v5, v2

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    iget-object v5, v0, Lorg/xiph/speex/SbCodec;->high:[F

    aget v6, v5, v2

    aget v5, v5, v2

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    add-float v3, v3, v18

    add-float v4, v4, v18

    div-float/2addr v3, v4

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v3}, Lorg/xiph/speex/Encoder;->getRelativeQuality()F

    move-result v3

    iput v3, v0, Lorg/xiph/speex/SbEncoder;->relative_quality:F

    const/high16 v4, -0x3f800000    # -4.0f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_f

    move v2, v4

    :cond_f
    cmpl-float v4, v2, v21

    if-lez v4, :cond_10

    move/from16 v2, v21

    :cond_10
    iget v4, v0, Lorg/xiph/speex/SbEncoder;->vbr_enabled:I

    if-eqz v4, :cond_15

    iget v4, v0, Lorg/xiph/speex/SbEncoder;->nb_modes:I

    sub-int/2addr v4, v12

    float-to-double v5, v3

    add-float v2, v2, v21

    float-to-double v2, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v7

    add-double/2addr v5, v2

    double-to-float v2, v5

    iput v2, v0, Lorg/xiph/speex/SbEncoder;->relative_quality:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    iput v3, v0, Lorg/xiph/speex/SbEncoder;->relative_quality:F

    :cond_11
    :goto_a
    if-eqz v4, :cond_14

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    sget-object v3, Lorg/xiph/speex/Vbr;->hb_thresh:[[F

    aget-object v3, v3, v4

    aget v2, v3, v2

    goto :goto_b

    :cond_12
    iget v3, v0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    int-to-float v5, v2

    sub-float v5, v3, v5

    sget-object v6, Lorg/xiph/speex/Vbr;->hb_thresh:[[F

    aget-object v22, v6, v4

    add-int/lit8 v11, v2, 0x1

    aget v22, v22, v11

    mul-float v5, v5, v22

    int-to-float v11, v11

    sub-float/2addr v11, v3

    aget-object v3, v6, v4

    aget v2, v3, v2

    mul-float/2addr v11, v2

    add-float v2, v5, v11

    :goto_b
    iget v3, v0, Lorg/xiph/speex/SbEncoder;->relative_quality:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_13

    goto :goto_c

    :cond_13
    add-int/lit8 v4, v4, -0x1

    const/16 v11, 0xf

    goto :goto_a

    :cond_14
    :goto_c
    invoke-virtual {v0, v4}, Lorg/xiph/speex/SbEncoder;->setMode(I)V

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->abr_enabled:I

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/xiph/speex/SbEncoder;->getBitRate()I

    move-result v2

    iget v3, v0, Lorg/xiph/speex/SbEncoder;->abr_drift:F

    iget v4, v0, Lorg/xiph/speex/SbEncoder;->abr_enabled:I

    sub-int v5, v2, v4

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, v0, Lorg/xiph/speex/SbEncoder;->abr_drift:F

    const v3, 0x3f733333    # 0.95f

    iget v5, v0, Lorg/xiph/speex/SbEncoder;->abr_drift2:F

    mul-float/2addr v5, v3

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v5, v2

    iput v5, v0, Lorg/xiph/speex/SbEncoder;->abr_drift2:F

    iget v2, v0, Lorg/xiph/speex/SbEncoder;->abr_count:F

    float-to-double v2, v2

    add-double/2addr v2, v7

    double-to-float v2, v2

    iput v2, v0, Lorg/xiph/speex/SbEncoder;->abr_count:F

    goto :goto_e

    :cond_15
    float-to-double v2, v3

    cmpg-double v2, v2, v19

    if-gez v2, :cond_16

    move v2, v12

    goto :goto_d

    :cond_16
    iget v2, v0, Lorg/xiph/speex/SbEncoder;->submodeSelect:I

    :goto_d
    iput v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    :cond_17
    :goto_e
    invoke-virtual {v13, v12, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    const/4 v2, 0x3

    if-eqz v1, :cond_18

    invoke-virtual {v13, v14, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    goto :goto_f

    :cond_18
    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    invoke-virtual {v13, v3, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    :goto_f
    if-nez v1, :cond_3c

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v4, v2, v3

    if-nez v4, :cond_19

    goto/16 :goto_2e

    :cond_19
    aget-object v1, v2, v3

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->lsqQuant:Lorg/xiph/speex/LspQuant;

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-virtual {v1, v2, v3, v4, v13}, Lorg/xiph/speex/LspQuant;->quant([F[FILorg/xiph/speex/Bits;)V

    iget v1, v0, Lorg/xiph/speex/NbCodec;->first:I

    if-eqz v1, :cond_1b

    move v1, v14

    :goto_10
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_1a

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->old_lsp:[F

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    move v1, v14

    :goto_11
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_1b

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    iget v1, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    new-array v11, v1, [F

    iget v1, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    new-array v8, v1, [F

    new-array v7, v1, [F

    move v6, v14

    :goto_12
    iget v1, v0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    if-ge v6, v1, :cond_38

    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    mul-int v22, v2, v6

    iget v2, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int v34, v2, v22

    int-to-float v2, v6

    add-float v2, v2, v18

    int-to-float v1, v1

    div-float/2addr v2, v1

    move v1, v14

    :goto_13
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v3, :cond_1c

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->interp_lsp:[F

    sub-float v4, v18, v2

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->old_lsp:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    aget v5, v5, v1

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1c
    move v1, v14

    :goto_14
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v3, :cond_1d

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    sub-float v4, v18, v2

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v5, v5, v1

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1d
    iget-object v1, v0, Lorg/xiph/speex/SbEncoder;->interp_lsp:[F

    invoke-static {v1, v3, v10}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v1, v2, v10}, Lorg/xiph/speex/Lsp;->enforce_margin([FIF)V

    move v1, v14

    :goto_15
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_1e

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->interp_lsp:[F

    aget v3, v2, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1e
    move v1, v14

    :goto_16
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_1f

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    aget v3, v2, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1f
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->interp_lsp:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->interp_lpc:[F

    invoke-virtual {v1, v3, v4, v2}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/xiph/speex/Lsp;->lsp2lpc([F[FI)V

    iget v1, v0, Lorg/xiph/speex/NbCodec;->gamma1:F

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->interp_lpc:[F

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v1, v2, v3, v4}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget v1, v0, Lorg/xiph/speex/NbCodec;->gamma2:F

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->interp_lpc:[F

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    invoke-static {v1, v2, v3, v4}, Lorg/xiph/speex/Filters;->bw_lpc(F[F[FI)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aput v9, v1, v6

    move v2, v9

    move v1, v14

    move/from16 v3, v18

    :goto_17
    iget v4, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-gt v1, v4, :cond_20

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    aget v5, v4, v1

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    neg-float v3, v3

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    aget v24, v5, v6

    aget v4, v4, v1

    add-float v24, v24, v4

    aput v24, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_20
    aget v1, v15, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v3

    div-float v1, v18, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v3

    div-float v2, v18, v2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v3

    div-float/2addr v2, v1

    iget-object v1, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v12, v0, Lorg/xiph/speex/SbEncoder;->mem_sp2:[F

    move-object/from16 v24, v1

    move/from16 v25, v22

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v34

    move/from16 v29, v10

    move/from16 v30, v14

    move-object/from16 v31, v12

    invoke-static/range {v24 .. v31}, Lorg/xiph/speex/Filters;->fir_mem2([FI[F[FIII[F)V

    move v4, v9

    const/4 v1, 0x0

    :goto_18
    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v5, :cond_21

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v10, v34, v1

    aget v12, v5, v10

    aget v5, v5, v10

    mul-float/2addr v12, v5

    add-float/2addr v4, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_21
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v5, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v5

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    if-nez v1, :cond_25

    move v5, v9

    const/4 v1, 0x0

    :goto_19
    iget v10, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v10, :cond_22

    add-int v10, v22, v1

    aget v12, v17, v10

    aget v10, v17, v10

    mul-float/2addr v12, v10

    add-float/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_22
    add-float/2addr v5, v3

    div-float/2addr v4, v5

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    const-wide/high16 v2, 0x4025000000000000L    # 10.5

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    float-to-double v9, v1

    const-wide v24, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v9, v9, v24

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    add-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-gez v1, :cond_23

    const/4 v1, 0x0

    :cond_23
    const/16 v2, 0x1f

    if-le v1, v2, :cond_24

    move v1, v2

    :cond_24
    const/4 v2, 0x5

    invoke-virtual {v13, v1, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    int-to-double v1, v1

    const-wide v3, 0x4022cccccccccccdL    # 9.4

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move/from16 v36, v6

    move-object v14, v7

    move-object/from16 v37, v8

    move-object/from16 v23, v11

    move-object/from16 v40, v15

    const/4 v15, 0x1

    const v35, 0x3d4ccccd    # 0.05f

    const/16 v38, 0x0

    const/16 v39, 0xf

    goto/16 :goto_29

    :cond_25
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1a
    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v3, v5, :cond_26

    add-int v5, v22, v3

    aget v9, v16, v5

    aget v5, v16, v5

    mul-float/2addr v9, v5

    add-float/2addr v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_26
    add-float v4, v4, v18

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    float-to-double v9, v2

    mul-double/2addr v3, v9

    add-float v1, v1, v18

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v3, v9

    double-to-float v3, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v9, 0x400d99999999999aL    # 3.7

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    add-double v12, v12, v19

    mul-double/2addr v12, v9

    add-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    if-gez v3, :cond_27

    const/4 v3, 0x0

    :cond_27
    const/16 v13, 0xf

    if-le v3, v13, :cond_28

    move v3, v13

    :cond_28
    const/4 v4, 0x4

    move-object/from16 v10, p1

    invoke-virtual {v10, v3, v4}, Lorg/xiph/speex/Bits;->pack(II)V

    const-wide v4, 0x3fd14c1bacf914c1L    # 0.27027027027027023

    int-to-double v13, v3

    mul-double/2addr v13, v4

    sub-double v13, v13, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v3, v1

    div-float v13, v3, v2

    div-float v1, v18, v13

    const/4 v2, 0x0

    :goto_1b
    iget v3, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v2, v3, :cond_29

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v4, v34, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_29
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    aput v18, v2, v34

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget-object v9, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    move-object/from16 v24, v2

    move/from16 v25, v34

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v29, v8

    move/from16 v30, v3

    move/from16 v31, v14

    invoke-static/range {v24 .. v31}, Lorg/xiph/speex/Filters;->syn_percep_zero([FI[F[F[F[FII)V

    const/4 v2, 0x0

    :goto_1c
    iget v3, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v2, v3, :cond_2a

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v4, v34, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v2, 0x0

    :goto_1d
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_2b

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    aget v3, v3, v2

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2b
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v4, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    move-object/from16 v24, v2

    move/from16 v25, v34

    move-object/from16 v26, v4

    move-object/from16 v27, v2

    move/from16 v28, v34

    move/from16 v29, v5

    move/from16 v30, v3

    move-object/from16 v31, v11

    invoke-static/range {v24 .. v31}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    const/4 v2, 0x0

    :goto_1e
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_2c

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->mem_sw:[F

    aget v3, v3, v2

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget-object v9, v0, Lorg/xiph/speex/SbEncoder;->res:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    const/16 v33, 0x0

    move-object/from16 v24, v2

    move/from16 v25, v34

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move/from16 v29, v22

    move/from16 v30, v14

    move/from16 v31, v3

    move-object/from16 v32, v11

    invoke-static/range {v24 .. v33}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    const/4 v2, 0x0

    :goto_1f
    iget v3, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v3, :cond_2d

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->mem_sw:[F

    aget v3, v3, v2

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    iget-object v2, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget-object v9, v0, Lorg/xiph/speex/SbEncoder;->swBuf:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    const/16 v33, 0x0

    move-object/from16 v24, v2

    move/from16 v25, v22

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move/from16 v29, v22

    move/from16 v30, v14

    move/from16 v31, v3

    move-object/from16 v32, v11

    invoke-static/range {v24 .. v33}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    const/4 v2, 0x0

    :goto_20
    iget v3, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v2, v3, :cond_2e

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->target:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->swBuf:[F

    add-int v5, v22, v2

    aget v4, v4, v5

    iget-object v9, v0, Lorg/xiph/speex/SbEncoder;->res:[F

    aget v5, v9, v5

    sub-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    const/4 v2, 0x0

    :goto_21
    iget v3, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v2, v3, :cond_2f

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v4, v34, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2f
    const/4 v2, 0x0

    :goto_22
    iget v3, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v2, v3, :cond_30

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->target:[F

    aget v4, v3, v2

    mul-float/2addr v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_30
    const/4 v1, 0x0

    :goto_23
    iget v9, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    const/4 v12, 0x0

    if-ge v1, v9, :cond_31

    aput v12, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_31
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->target:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget v14, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    const/16 v24, 0x0

    iget v12, v0, Lorg/xiph/speex/SbEncoder;->complexity:I

    const/16 v26, 0x1

    add-int/lit8 v12, v12, 0x1

    shr-int/lit8 v12, v12, 0x1

    move/from16 v36, v6

    move v6, v14

    move-object v14, v7

    move v7, v9

    move-object/from16 v37, v8

    move-object v8, v14

    const/16 v38, 0x0

    move/from16 v9, v24

    const v35, 0x3d4ccccd    # 0.05f

    move-object/from16 v10, v37

    move-object/from16 v23, v11

    const/16 v39, 0xf

    move-object/from16 v11, p1

    move-object/from16 v40, v15

    move/from16 v15, v26

    invoke-virtual/range {v1 .. v12}, Lorg/xiph/speex/CbSearch;->quant([F[F[F[FII[FI[FLorg/xiph/speex/Bits;I)V

    const/4 v1, 0x0

    :goto_24
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v2, :cond_32

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v3, v34, v1

    aget v4, v2, v3

    aget v5, v14, v1

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_32
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/xiph/speex/SubMode;->double_codebook:I

    if-eqz v1, :cond_36

    new-array v12, v2, [F

    const/4 v1, 0x0

    :goto_25
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v2, :cond_33

    aput v38, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_33
    const/4 v1, 0x0

    :goto_26
    iget v7, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v7, :cond_34

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->target:[F

    aget v3, v2, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_34
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v2, v0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->target:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    const/4 v9, 0x0

    iget v8, v0, Lorg/xiph/speex/SbEncoder;->complexity:I

    add-int/2addr v8, v15

    shr-int/lit8 v24, v8, 0x1

    move-object v8, v12

    move-object/from16 v10, v37

    move-object/from16 v11, p1

    move-object/from16 v25, v12

    move/from16 v12, v24

    invoke-virtual/range {v1 .. v12}, Lorg/xiph/speex/CbSearch;->quant([F[F[F[FII[FI[FLorg/xiph/speex/Bits;I)V

    const/4 v1, 0x0

    :goto_27
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v2, :cond_35

    aget v2, v25, v1

    float-to-double v2, v2

    float-to-double v4, v13

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v25, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_35
    const/4 v1, 0x0

    :goto_28
    iget v2, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    if-ge v1, v2, :cond_36

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    add-int v3, v34, v1

    aget v4, v2, v3

    aget v5, v25, v1

    add-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_36
    :goto_29
    const/4 v1, 0x0

    :goto_2a
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_37

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    aget v2, v2, v1

    aput v2, v23, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_37
    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget-object v6, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    move-object/from16 v24, v1

    move/from16 v25, v34

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v22

    move/from16 v29, v5

    move/from16 v30, v2

    move-object/from16 v31, v6

    invoke-static/range {v24 .. v31}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    iget-object v1, v0, Lorg/xiph/speex/SbCodec;->high:[F

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    iget-object v4, v0, Lorg/xiph/speex/SbEncoder;->swBuf:[F

    iget v5, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget v6, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iget-object v7, v0, Lorg/xiph/speex/SbEncoder;->mem_sw:[F

    const/16 v33, 0x0

    move-object/from16 v24, v1

    move/from16 v25, v22

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v29, v22

    move/from16 v30, v5

    move/from16 v31, v6

    move-object/from16 v32, v7

    invoke-static/range {v24 .. v33}, Lorg/xiph/speex/Filters;->filter_mem2([FI[F[F[FIII[FI)V

    add-int/lit8 v6, v36, 0x1

    move-object/from16 v13, p1

    move-object v7, v14

    move v12, v15

    move-object/from16 v11, v23

    move/from16 v10, v35

    move-object/from16 v8, v37

    move/from16 v9, v38

    move-object/from16 v15, v40

    const/4 v14, 0x0

    goto/16 :goto_12

    :cond_38
    move v15, v12

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v8, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    sget-object v9, Lorg/xiph/speex/Codebook;->h0:[F

    iget-object v10, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    iget v11, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v12, 0x40

    iget-object v13, v0, Lorg/xiph/speex/SbCodec;->g0_mem:[F

    invoke-virtual/range {v7 .. v13}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    iget-object v1, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v2, v0, Lorg/xiph/speex/SbCodec;->high:[F

    sget-object v24, Lorg/xiph/speex/Codebook;->h1:[F

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    iget v4, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v27, 0x40

    iget-object v5, v0, Lorg/xiph/speex/SbCodec;->g1_mem:[F

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v28, v5

    invoke-virtual/range {v22 .. v28}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    const/4 v1, 0x0

    :goto_2b
    iget v2, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    if-ge v1, v2, :cond_39

    iget-object v2, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    aget v2, v2, v1

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    mul-float v2, v2, v21

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_39
    const/4 v1, 0x0

    :goto_2c
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_3a

    iget-object v2, v0, Lorg/xiph/speex/SbEncoder;->old_lsp:[F

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3a
    const/4 v1, 0x0

    :goto_2d
    iget v2, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v1, v2, :cond_3b

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3b
    const/4 v1, 0x0

    iput v1, v0, Lorg/xiph/speex/NbCodec;->first:I

    return v15

    :cond_3c
    :goto_2e
    move/from16 v38, v9

    move v15, v12

    const/4 v2, 0x0

    :goto_2f
    iget v3, v0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v2, v3, :cond_3d

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v4, v2

    iget-object v5, v0, Lorg/xiph/speex/SbEncoder;->swBuf:[F

    aput v38, v5, v2

    aput v38, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3d
    const/4 v2, 0x0

    :goto_30
    iget v9, v0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    if-ge v2, v9, :cond_3e

    iget-object v3, v0, Lorg/xiph/speex/SbEncoder;->mem_sw:[F

    aput v38, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3e
    iput v15, v0, Lorg/xiph/speex/NbCodec;->first:I

    iget-object v3, v0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v4, v0, Lorg/xiph/speex/NbCodec;->excIdx:I

    iget-object v5, v0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    iget-object v6, v0, Lorg/xiph/speex/SbCodec;->high:[F

    const/4 v7, 0x0

    iget v8, v0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    iget-object v10, v0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    invoke-static/range {v3 .. v10}, Lorg/xiph/speex/Filters;->iir_mem2([FI[F[FIII[F)V

    iget-object v2, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->x0d:[F

    sget-object v24, Lorg/xiph/speex/Codebook;->h0:[F

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    iget v5, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v27, 0x40

    iget-object v6, v0, Lorg/xiph/speex/SbCodec;->g0_mem:[F

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    invoke-virtual/range {v22 .. v28}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    iget-object v7, v0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    iget-object v8, v0, Lorg/xiph/speex/SbCodec;->high:[F

    sget-object v9, Lorg/xiph/speex/Codebook;->h1:[F

    iget-object v10, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    iget v11, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    const/16 v12, 0x40

    iget-object v13, v0, Lorg/xiph/speex/SbCodec;->g1_mem:[F

    invoke-virtual/range {v7 .. v13}, Lorg/xiph/speex/Filters;->fir_mem_up([F[F[FII[F)V

    const/4 v2, 0x0

    :goto_31
    iget v3, v0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    if-ge v2, v3, :cond_3f

    iget-object v3, v0, Lorg/xiph/speex/SbCodec;->y0:[F

    aget v3, v3, v2

    iget-object v4, v0, Lorg/xiph/speex/SbCodec;->y1:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    mul-float v3, v3, v21

    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_3f
    if-eqz v1, :cond_40

    const/4 v1, 0x0

    return v1

    :cond_40
    return v15
.end method

.method public getAbr()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->abr_enabled:I

    return v0
.end method

.method public getBitRate()I
    .locals 4

    iget-object v0, p0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v0}, Lorg/xiph/speex/Encoder;->getBitRate()I

    move-result v0

    iget v1, p0, Lorg/xiph/speex/SbEncoder;->sampling_rate:I

    iget-object v2, p0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    iget v3, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/xiph/speex/SubMode;->bits_per_frame:I

    mul-int/2addr v1, v2

    :goto_0
    iget v2, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v0}, Lorg/xiph/speex/Encoder;->getBitRate()I

    move-result v0

    iget v1, p0, Lorg/xiph/speex/SbEncoder;->sampling_rate:I

    mul-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method public getComplexity()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->complexity:I

    return v0
.end method

.method public getEncodedFrameSize()I
    .locals 2

    sget-object v0, Lorg/xiph/speex/SbCodec;->SB_FRAME_SIZE:[I

    iget v1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v1}, Lorg/xiph/speex/Encoder;->getEncodedFrameSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLookAhead()I
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v0}, Lorg/xiph/speex/Encoder;->getLookAhead()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return v0
.end method

.method public getRelativeQuality()F
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->relative_quality:F

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->sampling_rate:I

    return v0
.end method

.method public getVad()Z
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->vad_enabled:I

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

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->vbr_enabled:I

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

    iget v0, p0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    return v0
.end method

.method public init(IIIIF)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/xiph/speex/SbCodec;->init(IIIIF)V

    const/4 p4, 0x3

    iput p4, p0, Lorg/xiph/speex/SbEncoder;->complexity:I

    const/4 p4, 0x0

    iput p4, p0, Lorg/xiph/speex/SbEncoder;->vbr_enabled:I

    iput p4, p0, Lorg/xiph/speex/SbEncoder;->vad_enabled:I

    iput p4, p0, Lorg/xiph/speex/SbEncoder;->abr_enabled:I

    const/high16 p4, 0x41000000    # 8.0f

    iput p4, p0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    iget p4, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    iput p4, p0, Lorg/xiph/speex/SbEncoder;->submodeSelect:I

    new-array p4, p1, [F

    iput-object p4, p0, Lorg/xiph/speex/SbEncoder;->x1d:[F

    const/16 p4, 0x40

    new-array p4, p4, [F

    iput-object p4, p0, Lorg/xiph/speex/SbEncoder;->h0_mem:[F

    iget p4, p0, Lorg/xiph/speex/NbCodec;->windowSize:I

    new-array p5, p4, [F

    iput-object p5, p0, Lorg/xiph/speex/SbEncoder;->buf:[F

    new-array p5, p1, [F

    iput-object p5, p0, Lorg/xiph/speex/SbEncoder;->swBuf:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->res:[F

    new-array p1, p2, [F

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->target:[F

    invoke-static {p4, p2}, Lorg/xiph/speex/Misc;->window(II)[F

    move-result-object p1

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->window:[F

    iget p1, p0, Lorg/xiph/speex/NbCodec;->lag_factor:F

    invoke-static {p3, p1}, Lorg/xiph/speex/Misc;->lagWindow(IF)[F

    move-result-object p1

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->lagWindow:[F

    new-array p1, p3, [F

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->rc:[F

    add-int/lit8 p1, p3, 0x1

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/SbEncoder;->autocorr:[F

    new-array p2, p3, [F

    iput-object p2, p0, Lorg/xiph/speex/SbEncoder;->lsp:[F

    new-array p2, p3, [F

    iput-object p2, p0, Lorg/xiph/speex/SbEncoder;->old_lsp:[F

    new-array p2, p3, [F

    iput-object p2, p0, Lorg/xiph/speex/SbEncoder;->interp_lsp:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/SbEncoder;->interp_lpc:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/SbEncoder;->bw_lpc1:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->bw_lpc2:[F

    new-array p1, p3, [F

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->mem_sp2:[F

    new-array p1, p3, [F

    iput-object p1, p0, Lorg/xiph/speex/SbEncoder;->mem_sw:[F

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/SbEncoder;->abr_count:F

    return-void
.end method

.method public setAbr(I)V
    .locals 2

    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/xiph/speex/Encoder;->setVbr(Z)V

    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/xiph/speex/SbEncoder;->abr_enabled:I

    iput v1, p0, Lorg/xiph/speex/SbEncoder;->vbr_enabled:I

    const/16 v0, 0xa

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/xiph/speex/SbEncoder;->setQuality(I)V

    invoke-virtual {p0}, Lorg/xiph/speex/SbEncoder;->getBitRate()I

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
    invoke-virtual {p0, p1}, Lorg/xiph/speex/SbEncoder;->setVbrQuality(F)V

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->abr_count:F

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->abr_drift:F

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->abr_drift2:F

    return-void
.end method

.method public setBitRate(I)V
    .locals 2

    const/16 v0, 0xa

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/xiph/speex/SbEncoder;->setQuality(I)V

    invoke-virtual {p0}, Lorg/xiph/speex/SbEncoder;->getBitRate()I

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
    iput p1, p0, Lorg/xiph/speex/SbEncoder;->complexity:I

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
    iput p1, p0, Lorg/xiph/speex/SbEncoder;->submodeSelect:I

    iput p1, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return-void
.end method

.method public setQuality(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget-boolean v0, p0, Lorg/xiph/speex/SbEncoder;->uwb:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v0, p1}, Lorg/xiph/speex/Encoder;->setQuality(I)V

    sget-object v0, Lorg/xiph/speex/SbEncoder;->UWB_QUALITY_MAP:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    sget-object v1, Lorg/xiph/speex/SbEncoder;->NB_QUALITY_MAP:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lorg/xiph/speex/Encoder;->setMode(I)V

    sget-object v0, Lorg/xiph/speex/SbEncoder;->WB_QUALITY_MAP:[I

    aget p1, v0, p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/xiph/speex/SbEncoder;->setMode(I)V

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 1

    iput p1, p0, Lorg/xiph/speex/SbEncoder;->sampling_rate:I

    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v0, p1}, Lorg/xiph/speex/Encoder;->setSamplingRate(I)V

    return-void
.end method

.method public setVad(Z)V
    .locals 0

    iput p1, p0, Lorg/xiph/speex/SbEncoder;->vad_enabled:I

    return-void
.end method

.method public setVbr(Z)V
    .locals 1

    iput p1, p0, Lorg/xiph/speex/SbEncoder;->vbr_enabled:I

    iget-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v0, p1}, Lorg/xiph/speex/Encoder;->setVbr(Z)V

    return-void
.end method

.method public setVbrQuality(F)V
    .locals 4

    iput p1, p0, Lorg/xiph/speex/SbEncoder;->vbr_quality:F

    const v0, 0x3f19999a    # 0.6f

    add-float/2addr v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-interface {v1, v0}, Lorg/xiph/speex/Encoder;->setVbrQuality(F)V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    float-to-double v2, p1

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/xiph/speex/SbEncoder;->setQuality(I)V

    return-void
.end method

.method public uwbinit()V
    .locals 7

    new-instance v0, Lorg/xiph/speex/SbEncoder;

    invoke-direct {v0}, Lorg/xiph/speex/SbEncoder;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-virtual {v0}, Lorg/xiph/speex/SbEncoder;->wbinit()V

    invoke-super {p0}, Lorg/xiph/speex/SbCodec;->uwbinit()V

    const/16 v2, 0x140

    const/16 v3, 0x50

    const/16 v4, 0x8

    const/16 v5, 0x500

    const v6, 0x3f333333    # 0.7f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/xiph/speex/SbEncoder;->init(IIIIF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xiph/speex/SbEncoder;->uwb:Z

    const/4 v0, 0x2

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->nb_modes:I

    const/16 v0, 0x7d00

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->sampling_rate:I

    return-void
.end method

.method public wbinit()V
    .locals 7

    new-instance v0, Lorg/xiph/speex/NbEncoder;

    invoke-direct {v0}, Lorg/xiph/speex/NbEncoder;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/SbEncoder;->lowenc:Lorg/xiph/speex/Encoder;

    invoke-virtual {v0}, Lorg/xiph/speex/NbCodec;->nbinit()V

    invoke-super {p0}, Lorg/xiph/speex/SbCodec;->wbinit()V

    const/16 v2, 0xa0

    const/16 v3, 0x28

    const/16 v4, 0x8

    const/16 v5, 0x280

    const v6, 0x3f666666    # 0.9f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/xiph/speex/SbEncoder;->init(IIIIF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiph/speex/SbEncoder;->uwb:Z

    const/4 v0, 0x5

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->nb_modes:I

    const/16 v0, 0x3e80

    iput v0, p0, Lorg/xiph/speex/SbEncoder;->sampling_rate:I

    return-void
.end method
