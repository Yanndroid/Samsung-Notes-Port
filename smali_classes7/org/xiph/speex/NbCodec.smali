.class public Lorg/xiph/speex/NbCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xiph/speex/Codebook;


# static fields
.field public static final NB_FRAME_SIZE:[I

.field public static final NB_SUBMODES:I = 0x10

.field public static final NB_SUBMODE_BITS:I = 0x4

.field public static final VERY_SMALL:F

.field public static final exc_gain_quant_scal1:[F

.field public static final exc_gain_quant_scal3:[F


# instance fields
.field public awk1:[F

.field public awk2:[F

.field public awk3:[F

.field public bufSize:I

.field public dtx_enabled:I

.field public excBuf:[F

.field public excIdx:I

.field public filters:Lorg/xiph/speex/Filters;

.field public first:I

.field public frameSize:I

.field public frmBuf:[F

.field public frmIdx:I

.field public gamma1:F

.field public gamma2:F

.field public innov:[F

.field public interp_qlpc:[F

.field public interp_qlsp:[F

.field public lag_factor:F

.field public lpc:[F

.field public lpcSize:I

.field public lpc_floor:F

.field public m_lsp:Lorg/xiph/speex/Lsp;

.field public max_pitch:I

.field public mem_sp:[F

.field public min_pitch:I

.field public nbSubframes:I

.field public old_qlsp:[F

.field public pi_gain:[F

.field public pre_mem:F

.field public preemph:F

.field public qlsp:[F

.field public subframeSize:I

.field public submodeID:I

.field public submodes:[Lorg/xiph/speex/SubMode;

.field public voc_m1:F

.field public voc_m2:F

.field public voc_mean:F

.field public voc_offset:I

.field public windowSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xiph/speex/NbCodec;->NB_FRAME_SIZE:[I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/xiph/speex/NbCodec;->exc_gain_quant_scal1:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lorg/xiph/speex/NbCodec;->exc_gain_quant_scal3:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x2b
        0x77
        0xa0
        0xdc
        0x12c
        0x16c
        0x1ec
        0x4f
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x414ccccd    # -0.35f
        0x3d4ccccd    # 0.05f
    .end array-data

    :array_2
    .array-data 4
        -0x3fcd22d1
        -0x40183c4b    # -1.81066f
        -0x406a425b    # -1.16985f
        -0x40a6e1ac
        -0x40e9adeb
        -0x41572218
        -0x427e6e65
        0x3e90ce92
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/xiph/speex/Lsp;

    invoke-direct {v0}, Lorg/xiph/speex/Lsp;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/NbCodec;->m_lsp:Lorg/xiph/speex/Lsp;

    new-instance v0, Lorg/xiph/speex/Filters;

    invoke-direct {v0}, Lorg/xiph/speex/Filters;-><init>()V

    iput-object v0, p0, Lorg/xiph/speex/NbCodec;->filters:Lorg/xiph/speex/Filters;

    return-void
.end method

.method private static buildNbSubModes()[Lorg/xiph/speex/SubMode;
    .locals 36

    new-instance v12, Lorg/xiph/speex/Ltp3Tap;

    sget-object v0, Lorg/xiph/speex/Codebook;->gain_cdbk_nb:[I

    const/4 v13, 0x7

    invoke-direct {v12, v0, v13, v13}, Lorg/xiph/speex/Ltp3Tap;-><init>([III)V

    new-instance v0, Lorg/xiph/speex/Ltp3Tap;

    sget-object v1, Lorg/xiph/speex/Codebook;->gain_cdbk_lbr:[I

    const/4 v11, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v11, v2}, Lorg/xiph/speex/Ltp3Tap;-><init>([III)V

    new-instance v2, Lorg/xiph/speex/Ltp3Tap;

    invoke-direct {v2, v1, v11, v13}, Lorg/xiph/speex/Ltp3Tap;-><init>([III)V

    new-instance v3, Lorg/xiph/speex/Ltp3Tap;

    invoke-direct {v3, v1, v11, v13}, Lorg/xiph/speex/Ltp3Tap;-><init>([III)V

    new-instance v26, Lorg/xiph/speex/LtpForcedPitch;

    invoke-direct/range {v26 .. v26}, Lorg/xiph/speex/LtpForcedPitch;-><init>()V

    new-instance v21, Lorg/xiph/speex/NoiseSearch;

    invoke-direct/range {v21 .. v21}, Lorg/xiph/speex/NoiseSearch;-><init>()V

    new-instance v1, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v8, Lorg/xiph/speex/Codebook;->exc_10_16_table:[I

    const/16 v5, 0x28

    const/16 v6, 0xa

    const/4 v7, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v4, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v18, Lorg/xiph/speex/Codebook;->exc_10_32_table:[I

    const/16 v15, 0x28

    const/16 v16, 0xa

    const/16 v17, 0x4

    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v34, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v31, Lorg/xiph/speex/Codebook;->exc_5_64_table:[I

    const/16 v28, 0x28

    const/16 v29, 0x5

    const/16 v30, 0x8

    const/16 v32, 0x6

    const/16 v33, 0x0

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v33}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v5, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v18, Lorg/xiph/speex/Codebook;->exc_8_128_table:[I

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v19, 0x7

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v35, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v31, Lorg/xiph/speex/Codebook;->exc_5_256_table:[I

    const/16 v32, 0x8

    move-object/from16 v27, v35

    invoke-direct/range {v27 .. v33}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v27, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v18, Lorg/xiph/speex/Codebook;->exc_20_32_table:[I

    const/16 v16, 0x14

    const/16 v17, 0x2

    const/16 v19, 0x5

    move-object/from16 v14, v27

    invoke-direct/range {v14 .. v20}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v28, Lorg/xiph/speex/NbLspQuant;

    invoke-direct/range {v28 .. v28}, Lorg/xiph/speex/NbLspQuant;-><init>()V

    new-instance v29, Lorg/xiph/speex/LbrLspQuant;

    invoke-direct/range {v29 .. v29}, Lorg/xiph/speex/LbrLspQuant;-><init>()V

    const/16 v6, 0x10

    new-array v10, v6, [Lorg/xiph/speex/SubMode;

    new-instance v6, Lorg/xiph/speex/SubMode;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v22, 0x3f333333    # 0.7f

    const v23, 0x3f333333    # 0.7f

    const/high16 v24, -0x40800000    # -1.0f

    const/16 v25, 0x2b

    move-object v14, v6

    move-object/from16 v19, v29

    move-object/from16 v20, v26

    invoke-direct/range {v14 .. v25}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v7, 0x1

    aput-object v6, v10, v7

    new-instance v6, Lorg/xiph/speex/SubMode;

    const/16 v16, 0x0

    const/high16 v23, 0x3f000000    # 0.5f

    const v24, 0x3f0ccccd    # 0.55f

    const/16 v25, 0x77

    move-object v14, v6

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v25}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x2

    aput-object v6, v10, v0

    new-instance v0, Lorg/xiph/speex/SubMode;

    const/4 v15, -0x1

    const/16 v17, 0x1

    const v23, 0x3f0ccccd    # 0.55f

    const v24, 0x3ee66666    # 0.45f

    const/16 v25, 0xa0

    move-object v14, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-direct/range {v14 .. v25}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v1, 0x3

    aput-object v0, v10, v1

    new-instance v0, Lorg/xiph/speex/SubMode;

    const v23, 0x3f2147ae    # 0.63f

    const v24, 0x3eb33333    # 0.35f

    const/16 v25, 0xdc

    move-object v14, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-direct/range {v14 .. v25}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v1, 0x4

    aput-object v0, v10, v1

    new-instance v14, Lorg/xiph/speex/SubMode;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v8, 0x3f333333    # 0.7f

    const v9, 0x3f266666    # 0.65f

    const/high16 v15, 0x3e800000    # 0.25f

    const/16 v16, 0x12c

    move-object v0, v14

    move-object/from16 v5, v28

    move-object v6, v12

    move-object/from16 v7, v34

    move-object/from16 v30, v10

    move v10, v15

    move v15, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    aput-object v14, v30, v15

    new-instance v14, Lorg/xiph/speex/SubMode;

    const v8, 0x3f2e147b    # 0.68f

    const v10, 0x3dcccccd    # 0.1f

    const/16 v11, 0x16c

    move-object v0, v14

    move-object/from16 v7, v35

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x6

    aput-object v14, v30, v0

    new-instance v14, Lorg/xiph/speex/SubMode;

    const/4 v4, 0x1

    const v8, 0x3f266666    # 0.65f

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x1ec

    move-object v0, v14

    move-object/from16 v7, v34

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    aput-object v14, v30, v13

    new-instance v0, Lorg/xiph/speex/SubMode;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v23, 0x3f000000    # 0.5f

    const v24, 0x3f266666    # 0.65f

    const/16 v25, 0x4f

    move-object v14, v0

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    invoke-direct/range {v14 .. v25}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/16 v1, 0x8

    aput-object v0, v30, v1

    return-object v30
.end method


# virtual methods
.method public getDtx()Z
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExc()[F
    .locals 5

    iget v0, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    new-array v1, v0, [F

    iget-object v2, p0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v3, p0, Lorg/xiph/speex/NbCodec;->excIdx:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getFrameSize()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    return v0
.end method

.method public getInnov()[F
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/NbCodec;->innov:[F

    return-object v0
.end method

.method public getPiGain()[F
    .locals 1

    iget-object v0, p0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    return-object v0
.end method

.method public init(IIII)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lorg/xiph/speex/NbCodec;->first:I

    iput p1, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiph/speex/NbCodec;->windowSize:I

    iput p2, p0, Lorg/xiph/speex/NbCodec;->subframeSize:I

    div-int p2, p1, p2

    iput p2, p0, Lorg/xiph/speex/NbCodec;->nbSubframes:I

    iput p3, p0, Lorg/xiph/speex/NbCodec;->lpcSize:I

    iput p4, p0, Lorg/xiph/speex/NbCodec;->bufSize:I

    const/16 v1, 0x11

    iput v1, p0, Lorg/xiph/speex/NbCodec;->min_pitch:I

    const/16 v1, 0x90

    iput v1, p0, Lorg/xiph/speex/NbCodec;->max_pitch:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/xiph/speex/NbCodec;->preemph:F

    iput v1, p0, Lorg/xiph/speex/NbCodec;->pre_mem:F

    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Lorg/xiph/speex/NbCodec;->gamma1:F

    const v2, 0x3f19999a    # 0.6f

    iput v2, p0, Lorg/xiph/speex/NbCodec;->gamma2:F

    const v2, 0x3c23d70a    # 0.01f

    iput v2, p0, Lorg/xiph/speex/NbCodec;->lag_factor:F

    const v2, 0x3f800347    # 1.0001f

    iput v2, p0, Lorg/xiph/speex/NbCodec;->lpc_floor:F

    new-array v2, p4, [F

    iput-object v2, p0, Lorg/xiph/speex/NbCodec;->frmBuf:[F

    sub-int v2, p4, v0

    iput v2, p0, Lorg/xiph/speex/NbCodec;->frmIdx:I

    new-array v2, p4, [F

    iput-object v2, p0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    sub-int/2addr p4, v0

    iput p4, p0, Lorg/xiph/speex/NbCodec;->excIdx:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/NbCodec;->innov:[F

    add-int/lit8 p1, p3, 0x1

    new-array p4, p1, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->lpc:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->qlsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->old_qlsp:[F

    new-array p4, p3, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->interp_qlsp:[F

    new-array p4, p1, [F

    iput-object p4, p0, Lorg/xiph/speex/NbCodec;->interp_qlpc:[F

    mul-int/lit8 p3, p3, 0x5

    new-array p3, p3, [F

    iput-object p3, p0, Lorg/xiph/speex/NbCodec;->mem_sp:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/xiph/speex/NbCodec;->pi_gain:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/NbCodec;->awk1:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/NbCodec;->awk2:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/NbCodec;->awk3:[F

    iput v1, p0, Lorg/xiph/speex/NbCodec;->voc_mean:F

    iput v1, p0, Lorg/xiph/speex/NbCodec;->voc_m2:F

    iput v1, p0, Lorg/xiph/speex/NbCodec;->voc_m1:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/xiph/speex/NbCodec;->voc_offset:I

    iput p1, p0, Lorg/xiph/speex/NbCodec;->dtx_enabled:I

    return-void
.end method

.method public nbinit()V
    .locals 4

    invoke-static {}, Lorg/xiph/speex/NbCodec;->buildNbSubModes()[Lorg/xiph/speex/SubMode;

    move-result-object v0

    iput-object v0, p0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    const/4 v0, 0x5

    iput v0, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    const/16 v0, 0xa0

    const/16 v1, 0x28

    const/16 v2, 0xa

    const/16 v3, 0x280

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/xiph/speex/NbCodec;->init(IIII)V

    return-void
.end method
