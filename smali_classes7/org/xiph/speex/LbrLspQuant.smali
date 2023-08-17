.class public Lorg/xiph/speex/LbrLspQuant;
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
    .locals 10

    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v8, 0x0

    move v1, v8

    :goto_0
    if-ge v1, p3, :cond_0

    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v2, p2, v1

    aget v3, p2, v8

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    aput v2, v0, v8

    add-int/lit8 v2, p3, -0x1

    aget v4, p2, v2

    add-int/lit8 v5, p3, -0x2

    aget v5, p2, v5

    sub-float/2addr v4, v5

    div-float v4, v3, v4

    aput v4, v0, v2

    :goto_1
    if-ge v1, v2, :cond_2

    aget v4, p2, v1

    const v5, 0x3e19999a    # 0.15f

    add-float/2addr v4, v5

    add-int/lit8 v6, v1, -0x1

    aget v7, p2, v6

    sub-float/2addr v4, v7

    aget v7, p2, v1

    add-float/2addr v7, v5

    aget v6, p2, v6

    sub-float/2addr v7, v6

    mul-float/2addr v4, v7

    div-float v4, v3, v4

    add-int/lit8 v6, v1, 0x1

    aget v7, p2, v6

    add-float/2addr v7, v5

    aget v9, p2, v1

    sub-float/2addr v7, v9

    aget v9, p2, v6

    add-float/2addr v9, v5

    aget v5, p2, v1

    sub-float/2addr v9, v5

    mul-float/2addr v7, v9

    div-float v5, v3, v7

    cmpl-float v7, v4, v5

    if-lez v7, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    aput v4, v0, v1

    move v1, v6

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_3
    if-ge v1, p3, :cond_3

    aget v2, p2, v1

    float-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v8

    :goto_4
    if-ge v1, p3, :cond_4

    aget v2, p2, v1

    const/high16 v3, 0x43800000    # 256.0f

    mul-float/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    sget-object v1, Lorg/xiph/speex/Codebook;->cdbk_nb:[I

    const/16 v2, 0x40

    invoke-static {p2, v8, v1, v2, p3}, Lorg/xiph/speex/LspQuant;->lsp_quant([FI[III)I

    move-result v1

    const/4 v9, 0x6

    invoke-virtual {p4, v1, v9}, Lorg/xiph/speex/Bits;->pack(II)V

    move v1, v8

    :goto_5
    if-ge v1, p3, :cond_5

    aget v2, p2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lorg/xiph/speex/Codebook;->cdbk_nb_low1:[I

    const/16 v6, 0x40

    const/4 v7, 0x5

    move-object v1, p2

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lorg/xiph/speex/LspQuant;->lsp_weight_quant([FI[FI[III)I

    move-result v1

    invoke-virtual {p4, v1, v9}, Lorg/xiph/speex/Bits;->pack(II)V

    const/4 v2, 0x5

    const/4 v4, 0x5

    sget-object v5, Lorg/xiph/speex/Codebook;->cdbk_nb_high1:[I

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lorg/xiph/speex/LspQuant;->lsp_weight_quant([FI[FI[III)I

    move-result v0

    invoke-virtual {p4, v0, v9}, Lorg/xiph/speex/Bits;->pack(II)V

    move p4, v8

    :goto_6
    if-ge p4, p3, :cond_6

    aget v0, p2, p4

    float-to-double v0, v0

    const-wide v2, 0x3f5fffe5280d6543L    # 0.0019531

    mul-double/2addr v0, v2

    double-to-float v0, v0

    aput v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    if-ge v8, p3, :cond_7

    aget p4, p1, v8

    aget v0, p2, v8

    sub-float/2addr p4, v0

    aput p4, p2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
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

    sget-object v4, Lorg/xiph/speex/Codebook;->cdbk_nb_high1:[I

    const/4 v8, 0x5

    invoke-virtual/range {v2 .. v8}, Lorg/xiph/speex/LspQuant;->unpackPlus([F[ILorg/xiph/speex/Bits;FII)V

    return-void
.end method
