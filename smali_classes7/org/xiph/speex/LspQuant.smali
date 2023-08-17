.class public abstract Lorg/xiph/speex/LspQuant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xiph/speex/Codebook;


# static fields
.field public static final MAX_LSP_SIZE:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lsp_quant([FI[III)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move v2, v1

    move v3, v2

    move v5, v3

    :goto_0
    if-ge v2, p3, :cond_3

    move v7, v0

    move v6, v1

    :goto_1
    if-ge v6, p4, :cond_0

    add-int v8, p1, v6

    aget v8, p0, v8

    add-int/lit8 v9, v5, 0x1

    aget v5, p2, v5

    int-to-float v5, v5

    sub-float/2addr v8, v5

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    cmpg-float v6, v7, v4

    if-ltz v6, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v3, v2

    move v4, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v1, p4, :cond_4

    add-int p3, p1, v1

    aget v0, p0, p3

    mul-int v2, v3, p4

    add-int/2addr v2, v1

    aget v2, p2, v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p0, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method

.method public static lsp_weight_quant([FI[FI[III)I
    .locals 12

    move/from16 v0, p6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v3, p5

    move v6, v1

    move v4, v2

    move v5, v4

    move v7, v5

    :goto_0
    if-ge v4, v3, :cond_3

    move v9, v1

    move v8, v2

    :goto_1
    if-ge v8, v0, :cond_0

    add-int v10, p1, v8

    aget v10, p0, v10

    add-int/lit8 v11, v7, 0x1

    aget v7, p4, v7

    int-to-float v7, v7

    sub-float/2addr v10, v7

    add-int v7, p3, v8

    aget v7, p2, v7

    mul-float/2addr v7, v10

    mul-float/2addr v7, v10

    add-float/2addr v9, v7

    add-int/lit8 v8, v8, 0x1

    move v7, v11

    goto :goto_1

    :cond_0
    cmpg-float v8, v9, v6

    if-ltz v8, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v5, v4

    move v6, v9

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    add-int v1, p1, v2

    aget v3, p0, v1

    mul-int v4, v5, v0

    add-int/2addr v4, v2

    aget v4, p4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v5
.end method


# virtual methods
.method public abstract quant([F[FILorg/xiph/speex/Bits;)V
.end method

.method public unpackPlus([F[ILorg/xiph/speex/Bits;FII)V
    .locals 4

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p6

    aget v2, p1, v1

    mul-int v3, p3, p5

    add-int/2addr v3, v0

    aget v3, p2, v3

    int-to-float v3, v3

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract unquant([FILorg/xiph/speex/Bits;)V
.end method
