.class public Lorg/xiph/speex/Lsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pw:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/xiph/speex/Lsp;->pw:[F

    return-void
.end method

.method public static final cheb_poly_eva([FFI)F
    .locals 5

    const/4 v0, 0x1

    shr-int/2addr p2, v0

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    aput p1, v1, v0

    aget v0, p0, p2

    add-int/lit8 v2, p2, -0x1

    aget v2, p0, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    const/4 v2, 0x2

    :goto_0
    if-gt v2, p2, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    mul-float/2addr v3, p1

    add-int/lit8 v4, v2, -0x2

    aget v4, v1, v4

    sub-float/2addr v3, v4

    aput v3, v1, v2

    sub-int v3, p2, v2

    aget v3, p0, v3

    aget v4, v1, v2

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static enforce_margin([FIF)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p0, v0

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    aput p2, p0, v0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget v1, p0, p1

    const v2, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    aput v2, p0, p1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_4

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    aget v1, p0, v2

    add-float/2addr v1, p2

    aput v1, p0, v0

    :cond_2
    aget v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    sub-float/2addr v3, p2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    const/high16 v1, 0x3f000000    # 0.5f

    aget v3, p0, v0

    aget v4, p0, v2

    add-float/2addr v3, v4

    sub-float/2addr v3, p2

    mul-float/2addr v3, v1

    aput v3, p0, v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static lpc2lsp([FI[FIF)I
    .locals 21

    move/from16 v0, p1

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [F

    new-array v2, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    aput v5, v3, v4

    const/4 v6, 0x1

    move v9, v4

    move v11, v9

    move v7, v6

    move v8, v7

    move v10, v8

    :goto_0
    if-gt v7, v1, :cond_0

    add-int/lit8 v12, v8, 0x1

    aget v13, p0, v7

    add-int/lit8 v14, v0, 0x1

    sub-int/2addr v14, v7

    aget v15, p0, v14

    add-float/2addr v13, v15

    add-int/lit8 v15, v9, 0x1

    aget v9, v2, v9

    sub-float/2addr v13, v9

    aput v13, v2, v8

    add-int/lit8 v8, v10, 0x1

    aget v9, p0, v7

    aget v13, p0, v14

    sub-float/2addr v9, v13

    add-int/lit8 v13, v11, 0x1

    aget v11, v3, v11

    add-float/2addr v9, v11

    aput v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    move v10, v8

    move v8, v12

    move v11, v13

    move v9, v15

    goto :goto_0

    :cond_0
    move v7, v4

    move v8, v7

    move v9, v8

    :goto_1
    const/high16 v10, 0x40000000    # 2.0f

    if-ge v7, v1, :cond_1

    aget v11, v2, v8

    mul-float/2addr v11, v10

    aput v11, v2, v8

    aget v11, v3, v9

    mul-float/2addr v11, v10

    aput v11, v3, v9

    add-int/2addr v8, v6

    add-int/2addr v9, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v8, v4

    move v9, v8

    move v7, v5

    move v5, v1

    :goto_2
    if-ge v8, v0, :cond_8

    rem-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_2

    move-object v11, v3

    goto :goto_3

    :cond_2
    move-object v11, v2

    :goto_3
    invoke-static {v11, v7, v0}, Lorg/xiph/speex/Lsp;->cheb_poly_eva([FFI)F

    move-result v12

    move v13, v6

    :goto_4
    if-ne v13, v6, :cond_7

    float-to-double v14, v1

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_7

    move/from16 v14, p4

    move/from16 p0, v5

    float-to-double v4, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    move-object/from16 v20, v11

    float-to-double v10, v7

    mul-double v18, v18, v10

    mul-double v18, v18, v10

    sub-double v16, v16, v18

    mul-double v4, v4, v16

    double-to-float v1, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v4, v10

    if-gez v4, :cond_3

    float-to-double v4, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v10

    double-to-float v1, v4

    :cond_3
    sub-float v1, v7, v1

    move-object/from16 v4, v20

    invoke-static {v4, v1, v0}, Lorg/xiph/speex/Lsp;->cheb_poly_eva([FFI)F

    move-result v5

    mul-float v10, v5, v12

    float-to-double v10, v10

    const-wide/16 v16, 0x0

    cmpg-double v10, v10, v16

    if-gez v10, :cond_6

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p0

    move/from16 v10, p3

    const/4 v11, 0x0

    :goto_5
    if-gt v11, v10, :cond_5

    add-float v5, v7, v1

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v5, v18

    invoke-static {v4, v5, v0}, Lorg/xiph/speex/Lsp;->cheb_poly_eva([FFI)F

    move-result v13

    mul-float v6, v13, v12

    move/from16 p0, v1

    float-to-double v0, v6

    cmpl-double v0, v0, v16

    if-lez v0, :cond_4

    move/from16 v1, p0

    move v7, v5

    move v12, v13

    goto :goto_6

    :cond_4
    move v1, v5

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    move/from16 p0, v1

    const/high16 v18, 0x40000000    # 2.0f

    aput v5, p2, v8

    move v7, v5

    const/4 v13, 0x0

    goto :goto_7

    :cond_6
    move/from16 v10, p3

    const/high16 v18, 0x40000000    # 2.0f

    move v7, v1

    move v12, v5

    move/from16 v5, p0

    :goto_7
    move/from16 v0, p1

    move-object v11, v4

    move/from16 v10, v18

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_7
    move/from16 v14, p4

    move/from16 p0, v5

    move/from16 v18, v10

    move/from16 v10, p3

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p0

    move/from16 v0, p1

    move/from16 v10, v18

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_8
    return v9
.end method


# virtual methods
.method public lsp2lpc([F[FI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    div-int/lit8 v2, v1, 0x2

    const/4 v4, 0x0

    :goto_0
    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    iget-object v5, v0, Lorg/xiph/speex/Lsp;->pw:[F

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-gt v7, v1, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v2, :cond_1

    mul-int/lit8 v8, v9, 0x4

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v13, v12, 0x1

    aget v14, p1, v10

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v14, v15

    iget-object v3, v0, Lorg/xiph/speex/Lsp;->pw:[F

    aget v16, v3, v8

    mul-float v14, v14, v16

    sub-float v14, v4, v14

    aget v16, v3, v11

    add-float v14, v14, v16

    add-int/lit8 v16, v10, 0x1

    aget v16, p1, v16

    mul-float v16, v16, v15

    aget v15, v3, v12

    mul-float v16, v16, v15

    sub-float v15, v5, v16

    aget v16, v3, v13

    add-float v15, v15, v16

    aget v16, v3, v8

    aput v16, v3, v11

    aget v11, v3, v12

    aput v11, v3, v13

    aput v4, v3, v8

    aput v5, v3, v12

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x2

    move v8, v13

    move v4, v14

    move v5, v15

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lorg/xiph/speex/Lsp;->pw:[F

    add-int/lit8 v9, v8, 0x1

    aget v10, v3, v9

    add-float/2addr v10, v4

    add-int/lit8 v11, v8, 0x2

    aget v12, v3, v11

    sub-float v12, v5, v12

    add-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    aput v10, p2, v7

    aput v4, v3, v9

    aput v5, v3, v11

    add-int/lit8 v7, v7, 0x1

    move v4, v6

    move v5, v4

    goto :goto_1

    :cond_2
    return-void
.end method
