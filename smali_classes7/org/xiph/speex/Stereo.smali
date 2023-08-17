.class public Lorg/xiph/speex/Stereo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SPEEX_INBAND_STEREO:I = 0x9

.field public static final e_ratio_quant:[F


# instance fields
.field private balance:F

.field private e_ratio:F

.field private smooth_left:F

.field private smooth_right:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xiph/speex/Stereo;->e_ratio_quant:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3ea147ae    # 0.315f
        0x3ecb4396    # 0.397f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/xiph/speex/Stereo;->balance:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lorg/xiph/speex/Stereo;->e_ratio:F

    iput v0, p0, Lorg/xiph/speex/Stereo;->smooth_left:F

    iput v0, p0, Lorg/xiph/speex/Stereo;->smooth_right:F

    return-void
.end method

.method public static encode(Lorg/xiph/speex/Bits;[FI)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    if-ge v2, p2, :cond_0

    mul-int/lit8 v7, v2, 0x2

    aget v8, p1, v7

    aget v9, p1, v7

    mul-float/2addr v8, v9

    add-float/2addr v3, v8

    add-int/lit8 v8, v7, 0x1

    aget v9, p1, v8

    aget v10, p1, v8

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    aget v7, p1, v7

    aget v8, p1, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    aput v7, p1, v2

    aget v6, p1, v2

    aget v7, p1, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v3, p1

    add-float/2addr p1, v4

    div-float p1, v3, p1

    add-float/2addr v3, v4

    div-float/2addr v5, v3

    const/16 p2, 0xe

    const/4 v2, 0x5

    invoke-virtual {p0, p2, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    const/16 p2, 0x9

    const/4 v3, 0x4

    invoke-virtual {p0, p2, v3}, Lorg/xiph/speex/Bits;->pack(II)V

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double/2addr p1, v7

    double-to-float p1, p1

    cmpl-float p2, p1, v1

    const/4 v1, 0x1

    if-lez p2, :cond_1

    invoke-virtual {p0, v0, v1}, Lorg/xiph/speex/Bits;->pack(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v1}, Lorg/xiph/speex/Bits;->pack(II)V

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p1, v6

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    const/high16 p1, 0x41f80000    # 31.0f

    :cond_2
    float-to-int p1, p1

    invoke-virtual {p0, p1, v2}, Lorg/xiph/speex/Bits;->pack(II)V

    sget-object p1, Lorg/xiph/speex/Stereo;->e_ratio_quant:[F

    invoke-static {v5, p1, v3}, Lorg/xiph/speex/VQ;->index(F[FI)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/xiph/speex/Bits;->pack(II)V

    return-void
.end method


# virtual methods
.method public decode([FI)V
    .locals 7

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ltz v1, :cond_0

    aget v2, p1, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/xiph/speex/Stereo;->e_ratio:F

    div-float v1, v0, v1

    iget v2, p0, Lorg/xiph/speex/Stereo;->balance:F

    mul-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v2

    div-float/2addr v3, v0

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_1
    if-ltz p2, :cond_1

    aget v1, p1, p2

    iget v3, p0, Lorg/xiph/speex/Stereo;->smooth_left:F

    const v4, 0x3f7ae148    # 0.98f

    mul-float/2addr v3, v4

    const v5, 0x3ca3d70a    # 0.02f

    mul-float v6, v2, v5

    add-float/2addr v3, v6

    iput v3, p0, Lorg/xiph/speex/Stereo;->smooth_left:F

    iget v6, p0, Lorg/xiph/speex/Stereo;->smooth_right:F

    mul-float/2addr v6, v4

    mul-float/2addr v5, v0

    add-float/2addr v6, v5

    iput v6, p0, Lorg/xiph/speex/Stereo;->smooth_right:F

    mul-int/lit8 v4, p2, 0x2

    mul-float/2addr v3, v1

    aput v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    mul-float/2addr v6, v1

    aput v6, p1, v4

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public init(Lorg/xiph/speex/Bits;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    int-to-double v0, v1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/xiph/speex/Stereo;->balance:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result p1

    sget-object v0, Lorg/xiph/speex/Stereo;->e_ratio_quant:[F

    aget p1, v0, p1

    iput p1, p0, Lorg/xiph/speex/Stereo;->e_ratio:F

    return-void
.end method
