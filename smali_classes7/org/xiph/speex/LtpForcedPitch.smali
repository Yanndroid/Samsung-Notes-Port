.class public Lorg/xiph/speex/LtpForcedPitch;
.super Lorg/xiph/speex/Ltp;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/Ltp;-><init>()V

    return-void
.end method


# virtual methods
.method public final quant([F[FI[F[F[F[FIIIFIILorg/xiph/speex/Bits;[FI[FI)I
    .locals 5

    const v0, 0x3f7d70a4    # 0.99f

    cmpl-float v1, p11, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p11

    :goto_0
    const/4 v1, 0x0

    move/from16 v2, p13

    :goto_1
    if-ge v1, v2, :cond_1

    add-int v3, p8, v1

    sub-int v4, v3, p9

    aget v4, p7, v4

    mul-float/2addr v4, v0

    aput v4, p7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p9
.end method

.method public final unquant([FIIFI[FLorg/xiph/speex/Bits;IIF)I
    .locals 0

    const p7, 0x3f7d70a4    # 0.99f

    cmpl-float p8, p4, p7

    if-lez p8, :cond_0

    move p4, p7

    :cond_0
    const/4 p7, 0x0

    move p8, p7

    :goto_0
    if-ge p8, p5, :cond_1

    add-int p9, p2, p8

    sub-int p10, p9, p3

    aget p10, p1, p10

    mul-float/2addr p10, p4

    aput p10, p1, p9

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    const/4 p2, 0x0

    aput p2, p6, p1

    aput p2, p6, p7

    const/4 p1, 0x1

    aput p4, p6, p1

    return p3
.end method
