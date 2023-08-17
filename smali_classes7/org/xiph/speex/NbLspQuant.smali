.class public Lorg/xiph/speex/NbLspQuant;
.super Lorg/xiph/speex/LspQuant;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/LspQuant;-><init>()V

    return-void
.end method


# virtual methods
.method public final quant([F[FILorg/xiph/speex/Bits;)V
    .locals 15

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    const/16 v0, 0x14

    new-array v10, v0, [F

    const/4 v11, 0x0

    move v0, v11

    :goto_0
    if-ge v0, v8, :cond_0

    aget v1, p1, v0

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget v1, v7, v0

    aget v2, v7, v11

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    aput v1, v10, v11

    add-int/lit8 v1, v8, -0x1

    aget v3, v7, v1

    add-int/lit8 v4, v8, -0x2

    aget v4, v7, v4

    sub-float/2addr v3, v4

    div-float v3, v2, v3

    aput v3, v10, v1

    :goto_1
    if-ge v0, v1, :cond_2

    aget v3, v7, v0

    const v4, 0x3e19999a    # 0.15f

    add-float/2addr v3, v4

    add-int/lit8 v5, v0, -0x1

    aget v6, v7, v5

    sub-float/2addr v3, v6

    aget v6, v7, v0

    add-float/2addr v6, v4

    aget v5, v7, v5

    sub-float/2addr v6, v5

    mul-float/2addr v3, v6

    div-float v3, v2, v3

    add-int/lit8 v5, v0, 0x1

    aget v6, v7, v5

    add-float/2addr v6, v4

    aget v12, v7, v0

    sub-float/2addr v6, v12

    aget v12, v7, v5

    add-float/2addr v12, v4

    aget v4, v7, v0

    sub-float/2addr v12, v4

    mul-float/2addr v6, v12

    div-float v4, v2, v6

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    aput v3, v10, v0

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_3
    if-ge v0, v8, :cond_3

    aget v1, v7, v0

    float-to-double v1, v1

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v3, v5

    add-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v11

    :goto_4
    if-ge v0, v8, :cond_4

    aget v1, v7, v0

    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v1, v2

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    sget-object v0, Lorg/xiph/speex/Codebook;->cdbk_nb:[I

    const/16 v1, 0x40

    invoke-static {v7, v11, v0, v1, v8}, Lorg/xiph/speex/LspQuant;->lsp_quant([FI[III)I

    move-result v0

    const/4 v12, 0x6

    invoke-virtual {v9, v0, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    move v0, v11

    :goto_5
    const/high16 v13, 0x40000000    # 2.0f

    if-ge v0, v8, :cond_5

    aget v1, v7, v0

    mul-float/2addr v1, v13

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_low1:[I

    const/16 v5, 0x40

    const/4 v6, 0x5

    move-object/from16 v0, p2

    move-object v2, v10

    invoke-static/range {v0 .. v6}, Lorg/xiph/speex/LspQuant;->lsp_weight_quant([FI[FI[III)I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    move v0, v11

    :goto_6
    const/4 v14, 0x5

    if-ge v0, v14, :cond_6

    aget v1, v7, v0

    mul-float/2addr v1, v13

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_low2:[I

    const/16 v5, 0x40

    const/4 v6, 0x5

    move-object/from16 v0, p2

    move-object v2, v10

    invoke-static/range {v0 .. v6}, Lorg/xiph/speex/LspQuant;->lsp_weight_quant([FI[FI[III)I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    const/4 v1, 0x5

    const/4 v3, 0x5

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_high1:[I

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v6}, Lorg/xiph/speex/LspQuant;->lsp_weight_quant([FI[FI[III)I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    :goto_7
    const/16 v0, 0xa

    if-ge v14, v0, :cond_7

    aget v0, v7, v14

    mul-float/2addr v0, v13

    aput v0, v7, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x5

    const/4 v3, 0x5

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_high2:[I

    const/16 v5, 0x40

    const/4 v6, 0x5

    move-object/from16 v0, p2

    move-object v2, v10

    invoke-static/range {v0 .. v6}, Lorg/xiph/speex/LspQuant;->lsp_weight_quant([FI[FI[III)I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lorg/xiph/speex/Bits;->pack(II)V

    move v0, v11

    :goto_8
    if-ge v0, v8, :cond_8

    aget v1, v7, v0

    float-to-double v1, v1

    const-wide v3, 0x3f4ffffaa19c4774L    # 9.7656E-4

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    if-ge v11, v8, :cond_9

    aget v0, p1, v11

    aget v1, v7, v11

    sub-float/2addr v0, v1

    aput v0, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_9
    return-void
.end method

.method public final unquant([FILorg/xiph/speex/Bits;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    int-to-float v1, v0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb:[I

    const v6, 0x3b7fff29    # 0.0039062f

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lorg/xiph/speex/LspQuant;->unpackPlus([F[ILorg/xiph/speex/Bits;FII)V

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_low1:[I

    const v6, 0x3affff29    # 0.0019531f

    const/4 v7, 0x5

    invoke-virtual/range {v2 .. v8}, Lorg/xiph/speex/LspQuant;->unpackPlus([F[ILorg/xiph/speex/Bits;FII)V

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_low2:[I

    const v6, 0x3a7fffd5    # 9.7656E-4f

    invoke-virtual/range {v2 .. v8}, Lorg/xiph/speex/LspQuant;->unpackPlus([F[ILorg/xiph/speex/Bits;FII)V

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_high1:[I

    const v6, 0x3affff29    # 0.0019531f

    const/4 v8, 0x5

    invoke-virtual/range {v2 .. v8}, Lorg/xiph/speex/LspQuant;->unpackPlus([F[ILorg/xiph/speex/Bits;FII)V

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_high2:[I

    const v6, 0x3a7fffd5    # 9.7656E-4f

    invoke-virtual/range {v2 .. v8}, Lorg/xiph/speex/LspQuant;->unpackPlus([F[ILorg/xiph/speex/Bits;FII)V

    return-void
.end method
