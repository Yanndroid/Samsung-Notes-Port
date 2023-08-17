.class public Lorg/xiph/speex/Misc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lagWindow(IF)[F
    .locals 8

    add-int/lit8 p0, p0, 0x1

    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, p1

    mul-double/2addr v6, v4

    int-to-double v4, v1

    mul-double/2addr v6, v4

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static window(II)[F
    .locals 13

    mul-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x2

    new-array p0, p0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    const-wide v5, 0x3fdd70a3d70a3d71L    # 0.46

    const-wide v7, 0x3fe147ae147ae148L    # 0.54

    if-ge v2, v0, :cond_0

    int-to-double v9, v2

    mul-double/2addr v9, v3

    int-to-double v3, v0

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v5

    sub-double/2addr v7, v3

    double-to-float v3, v7

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p1, :cond_1

    add-int v2, v0, v1

    int-to-double v9, v1

    mul-double/2addr v9, v3

    int-to-double v11, p1

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-float v9, v9

    aput v9, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method
