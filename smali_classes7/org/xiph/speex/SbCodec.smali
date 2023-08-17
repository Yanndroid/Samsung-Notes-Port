.class public Lorg/xiph/speex/SbCodec;
.super Lorg/xiph/speex/NbCodec;
.source "SourceFile"


# static fields
.field public static final QMF_ORDER:I = 0x40

.field public static final SB_FRAME_SIZE:[I

.field public static final SB_SUBMODES:I = 0x8

.field public static final SB_SUBMODE_BITS:I = 0x3


# instance fields
.field public foldingGain:F

.field public fullFrameSize:I

.field public g0_mem:[F

.field public g1_mem:[F

.field public high:[F

.field public x0d:[F

.field public y0:[F

.field public y1:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xiph/speex/SbCodec;->SB_FRAME_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x24
        0x70
        0xc0
        0x160
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/NbCodec;-><init>()V

    return-void
.end method

.method public static buildUwbSubModes()[Lorg/xiph/speex/SubMode;
    .locals 14

    new-instance v5, Lorg/xiph/speex/HighLspQuant;

    invoke-direct {v5}, Lorg/xiph/speex/HighLspQuant;-><init>()V

    const/16 v0, 0x8

    new-array v12, v0, [Lorg/xiph/speex/SubMode;

    new-instance v13, Lorg/xiph/speex/SubMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x2

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x1

    aput-object v13, v12, v0

    return-object v12
.end method

.method public static buildWbSubModes()[Lorg/xiph/speex/SubMode;
    .locals 22

    new-instance v12, Lorg/xiph/speex/HighLspQuant;

    invoke-direct {v12}, Lorg/xiph/speex/HighLspQuant;-><init>()V

    new-instance v13, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v4, Lorg/xiph/speex/Codebook;->hexc_10_32_table:[I

    const/16 v1, 0x28

    const/16 v2, 0xa

    const/4 v3, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    new-instance v21, Lorg/xiph/speex/SplitShapeSearch;

    sget-object v18, Lorg/xiph/speex/Codebook;->hexc_table:[I

    const/16 v15, 0x28

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v19, 0x7

    const/16 v20, 0x1

    move-object/from16 v14, v21

    invoke-direct/range {v14 .. v20}, Lorg/xiph/speex/SplitShapeSearch;-><init>(III[III)V

    const/16 v0, 0x8

    new-array v14, v0, [Lorg/xiph/speex/SubMode;

    new-instance v15, Lorg/xiph/speex/SubMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x24

    move-object v0, v15

    move-object v5, v12

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x1

    aput-object v15, v14, v0

    new-instance v15, Lorg/xiph/speex/SubMode;

    const v8, 0x3f59999a    # 0.85f

    const v9, 0x3f19999a    # 0.6f

    const/16 v11, 0x70

    move-object v0, v15

    move-object v7, v13

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x2

    aput-object v15, v14, v0

    new-instance v13, Lorg/xiph/speex/SubMode;

    const/high16 v8, 0x3f400000    # 0.75f

    const v9, 0x3f333333    # 0.7f

    const/16 v11, 0xc0

    move-object v0, v13

    move-object/from16 v7, v21

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x3

    aput-object v13, v14, v0

    new-instance v13, Lorg/xiph/speex/SubMode;

    const/4 v4, 0x1

    const/high16 v9, 0x3f400000    # 0.75f

    const/16 v11, 0x160

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lorg/xiph/speex/SubMode;-><init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V

    const/4 v0, 0x4

    aput-object v13, v14, v0

    return-object v14
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
    .locals 6

    iget v0, p0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/xiph/speex/NbCodec;->frameSize:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Lorg/xiph/speex/NbCodec;->excBuf:[F

    iget v5, p0, Lorg/xiph/speex/NbCodec;->excIdx:I

    add-int/2addr v5, v1

    aget v4, v4, v5

    mul-float/2addr v4, v3

    aput v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFrameSize()I
    .locals 1

    iget v0, p0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    return v0
.end method

.method public getInnov()[F
    .locals 1

    invoke-virtual {p0}, Lorg/xiph/speex/SbCodec;->getExc()[F

    move-result-object v0

    return-object v0
.end method

.method public init(IIIIF)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xiph/speex/NbCodec;->init(IIII)V

    mul-int/lit8 p2, p1, 0x2

    iput p2, p0, Lorg/xiph/speex/SbCodec;->fullFrameSize:I

    iput p5, p0, Lorg/xiph/speex/SbCodec;->foldingGain:F

    const p3, 0x3b03126f    # 0.002f

    iput p3, p0, Lorg/xiph/speex/NbCodec;->lag_factor:F

    new-array p3, p2, [F

    iput-object p3, p0, Lorg/xiph/speex/SbCodec;->high:[F

    new-array p3, p2, [F

    iput-object p3, p0, Lorg/xiph/speex/SbCodec;->y0:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/xiph/speex/SbCodec;->y1:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/SbCodec;->x0d:[F

    const/16 p1, 0x40

    new-array p2, p1, [F

    iput-object p2, p0, Lorg/xiph/speex/SbCodec;->g0_mem:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/xiph/speex/SbCodec;->g1_mem:[F

    return-void
.end method

.method public uwbinit()V
    .locals 1

    invoke-static {}, Lorg/xiph/speex/SbCodec;->buildUwbSubModes()[Lorg/xiph/speex/SubMode;

    move-result-object v0

    iput-object v0, p0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    const/4 v0, 0x1

    iput v0, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return-void
.end method

.method public wbinit()V
    .locals 1

    invoke-static {}, Lorg/xiph/speex/SbCodec;->buildWbSubModes()[Lorg/xiph/speex/SubMode;

    move-result-object v0

    iput-object v0, p0, Lorg/xiph/speex/NbCodec;->submodes:[Lorg/xiph/speex/SubMode;

    const/4 v0, 0x3

    iput v0, p0, Lorg/xiph/speex/NbCodec;->submodeID:I

    return-void
.end method
