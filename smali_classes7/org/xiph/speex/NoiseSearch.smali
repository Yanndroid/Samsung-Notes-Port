.class public Lorg/xiph/speex/NoiseSearch;
.super Lorg/xiph/speex/CbSearch;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xiph/speex/CbSearch;-><init>()V

    return-void
.end method


# virtual methods
.method public final quant([F[F[F[FII[FI[FLorg/xiph/speex/Bits;I)V
    .locals 10

    move/from16 v8, p6

    new-array v9, v8, [F

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v9

    move/from16 v6, p6

    move v7, p5

    invoke-static/range {v0 .. v7}, Lorg/xiph/speex/Filters;->residue_percep_zero([FI[F[F[F[FII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_0

    add-int v2, p8, v1

    aget v3, p7, v2

    aget v4, v9, v1

    add-float/2addr v3, v4

    aput v3, p7, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v8, :cond_1

    const/4 v1, 0x0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final unquant([FIILorg/xiph/speex/Bits;)V
    .locals 8

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    add-int v0, p2, p4

    aget v1, p1, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v4, v2

    double-to-float v2, v4

    add-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
