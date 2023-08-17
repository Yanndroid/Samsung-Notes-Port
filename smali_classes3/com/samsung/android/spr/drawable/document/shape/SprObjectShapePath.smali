.class public Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;
.super Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;,
        Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;
    }
.end annotation


# static fields
.field public static final TYPE_BEZIER_CURVETO:B = 0x4t

.field public static final TYPE_CLOSE:B = 0x6t

.field public static final TYPE_ELLIPTICAL_ARC:B = 0x5t

.field public static final TYPE_LINETO:B = 0x2t

.field public static final TYPE_MOVETO:B = 0x1t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_QUADRATIC_CURVETO:B = 0x3t


# instance fields
.field public final mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

.field public mPathInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private addCommand([FCC[F)V
    .locals 21

    move-object/from16 v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v13, 0x0

    aget v0, p1, v13

    const/4 v14, 0x1

    aget v1, p1, v14

    const/4 v15, 0x2

    aget v2, p1, v15

    const/16 v16, 0x3

    aget v3, p1, v16

    sparse-switch v11, :sswitch_data_0

    :sswitch_0
    move/from16 v17, v15

    goto :goto_1

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->close()V

    return-void

    :sswitch_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    move/from16 v17, v14

    goto :goto_1

    :sswitch_4
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const/4 v4, 0x7

    :goto_0
    move/from16 v17, v4

    :goto_1
    move v9, v0

    move v8, v1

    move v7, v13

    move/from16 v0, p2

    :goto_2
    array-length v1, v12

    if-ge v7, v1, :cond_1e

    const/16 v1, 0x41

    if-eq v11, v1, :cond_1b

    const/16 v1, 0x43

    if-eq v11, v1, :cond_1a

    const/16 v5, 0x48

    if-eq v11, v5, :cond_19

    const/16 v5, 0x51

    if-eq v11, v5, :cond_18

    const/16 v6, 0x56

    if-eq v11, v6, :cond_17

    const/16 v6, 0x61

    if-eq v11, v6, :cond_14

    const/16 v6, 0x63

    if-eq v11, v6, :cond_13

    const/16 v15, 0x68

    if-eq v11, v15, :cond_12

    const/16 v15, 0x71

    if-eq v11, v15, :cond_11

    const/16 v14, 0x76

    if-eq v11, v14, :cond_10

    const/16 v14, 0x4c

    if-eq v11, v14, :cond_f

    const/16 v14, 0x4d

    if-eq v11, v14, :cond_e

    const/16 v14, 0x73

    const/16 v13, 0x53

    const/high16 v18, 0x40000000    # 2.0f

    if-eq v11, v13, :cond_b

    const/16 v4, 0x74

    const/16 v13, 0x54

    if-eq v11, v13, :cond_8

    const/16 v1, 0x6c

    if-eq v11, v1, :cond_7

    const/16 v1, 0x6d

    if-eq v11, v1, :cond_6

    if-eq v11, v14, :cond_3

    if-eq v11, v4, :cond_0

    :goto_3
    move/from16 v20, v7

    goto/16 :goto_12

    :cond_0
    if-eq v0, v15, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v13, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_5

    :cond_2
    :goto_4
    sub-float v4, v9, v2

    sub-float v0, v8, v3

    :goto_5
    add-float/2addr v4, v9

    add-float/2addr v0, v8

    add-int/lit8 v1, v7, 0x0

    aget v2, v12, v1

    add-float/2addr v2, v9

    add-int/lit8 v3, v7, 0x1

    aget v5, v12, v3

    add-float/2addr v5, v8

    invoke-virtual {v10, v4, v0, v2, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v1, v12, v1

    add-float/2addr v9, v1

    aget v1, v12, v3

    add-float/2addr v8, v1

    move v3, v0

    move v2, v4

    goto :goto_3

    :cond_3
    if-eq v0, v6, :cond_5

    if-eq v0, v14, :cond_5

    const/16 v1, 0x43

    if-eq v0, v1, :cond_5

    const/16 v1, 0x53

    if-ne v0, v1, :cond_4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_7

    :cond_5
    :goto_6
    sub-float v4, v9, v2

    sub-float v0, v8, v3

    :goto_7
    add-float v1, v9, v4

    add-float v2, v8, v0

    add-int/lit8 v13, v7, 0x0

    aget v0, v12, v13

    add-float v3, v9, v0

    add-int/lit8 v14, v7, 0x1

    aget v0, v12, v14

    add-float v4, v8, v0

    add-int/lit8 v15, v7, 0x2

    aget v0, v12, v15

    add-float v5, v9, v0

    add-int/lit8 v18, v7, 0x3

    aget v0, v12, v18

    add-float v6, v8, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v0, v12, v13

    add-float/2addr v0, v9

    aget v1, v12, v14

    add-float/2addr v1, v8

    aget v2, v12, v15

    add-float/2addr v9, v2

    aget v2, v12, v18

    goto/16 :goto_b

    :cond_6
    add-int/lit8 v0, v7, 0x0

    aget v0, v12, v0

    add-float/2addr v9, v0

    add-int/lit8 v0, v7, 0x1

    aget v0, v12, v0

    add-float/2addr v8, v0

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v0, v7, 0x0

    aget v0, v12, v0

    add-float/2addr v9, v0

    add-int/lit8 v0, v7, 0x1

    aget v0, v12, v0

    :goto_8
    add-float/2addr v8, v0

    goto/16 :goto_a

    :cond_8
    if-eq v0, v15, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_9

    if-ne v0, v13, :cond_a

    :cond_9
    mul-float v9, v9, v18

    sub-float/2addr v9, v2

    mul-float v8, v8, v18

    sub-float/2addr v8, v3

    :cond_a
    add-int/lit8 v0, v7, 0x0

    aget v1, v12, v0

    add-int/lit8 v2, v7, 0x1

    aget v3, v12, v2

    invoke-virtual {v10, v9, v8, v1, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v0, v12, v0

    aget v1, v12, v2

    move/from16 v20, v7

    move v3, v8

    move v2, v9

    move v9, v0

    move v8, v1

    goto/16 :goto_12

    :cond_b
    if-eq v0, v6, :cond_c

    if-eq v0, v14, :cond_c

    const/16 v1, 0x43

    if-eq v0, v1, :cond_c

    const/16 v1, 0x53

    if-ne v0, v1, :cond_d

    :cond_c
    mul-float v9, v9, v18

    sub-float/2addr v9, v2

    mul-float v8, v8, v18

    sub-float/2addr v8, v3

    :cond_d
    move v2, v8

    move v1, v9

    add-int/lit8 v8, v7, 0x0

    aget v3, v12, v8

    add-int/lit8 v9, v7, 0x1

    aget v4, v12, v9

    add-int/lit8 v13, v7, 0x2

    aget v5, v12, v13

    add-int/lit8 v14, v7, 0x3

    aget v6, v12, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v0, v12, v8

    aget v1, v12, v9

    aget v9, v12, v13

    aget v8, v12, v14

    goto/16 :goto_c

    :cond_e
    add-int/lit8 v0, v7, 0x0

    aget v9, v12, v0

    add-int/lit8 v0, v7, 0x1

    aget v8, v12, v0

    :goto_9
    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v0, v7, 0x0

    aget v9, v12, v0

    add-int/lit8 v0, v7, 0x1

    aget v8, v12, v0

    :goto_a
    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_3

    :cond_10
    add-int/lit8 v0, v7, 0x0

    aget v0, v12, v0

    goto :goto_8

    :cond_11
    add-int/lit8 v0, v7, 0x0

    aget v1, v12, v0

    add-float/2addr v1, v9

    add-int/lit8 v2, v7, 0x1

    aget v3, v12, v2

    add-float/2addr v3, v8

    add-int/lit8 v4, v7, 0x2

    aget v5, v12, v4

    add-float/2addr v5, v9

    add-int/lit8 v6, v7, 0x3

    aget v13, v12, v6

    add-float/2addr v13, v8

    invoke-virtual {v10, v1, v3, v5, v13}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v0, v12, v0

    add-float/2addr v0, v9

    aget v1, v12, v2

    add-float/2addr v1, v8

    aget v2, v12, v4

    add-float/2addr v9, v2

    aget v2, v12, v6

    goto :goto_b

    :cond_12
    add-int/lit8 v0, v7, 0x0

    aget v0, v12, v0

    add-float/2addr v9, v0

    goto :goto_a

    :cond_13
    add-int/lit8 v0, v7, 0x0

    aget v0, v12, v0

    add-float v1, v9, v0

    add-int/lit8 v0, v7, 0x1

    aget v0, v12, v0

    add-float v2, v8, v0

    add-int/lit8 v13, v7, 0x2

    aget v0, v12, v13

    add-float v3, v9, v0

    add-int/lit8 v14, v7, 0x3

    aget v0, v12, v14

    add-float v4, v8, v0

    add-int/lit8 v15, v7, 0x4

    aget v0, v12, v15

    add-float v5, v9, v0

    add-int/lit8 v18, v7, 0x5

    aget v0, v12, v18

    add-float v6, v8, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v0, v12, v13

    add-float/2addr v0, v9

    aget v1, v12, v14

    add-float/2addr v1, v8

    aget v2, v12, v15

    add-float/2addr v9, v2

    aget v2, v12, v18

    :goto_b
    add-float/2addr v8, v2

    :goto_c
    move v2, v0

    move v3, v1

    goto/16 :goto_3

    :cond_14
    add-int/lit8 v13, v7, 0x5

    aget v0, v12, v13

    add-float v3, v0, v9

    add-int/lit8 v14, v7, 0x6

    aget v0, v12, v14

    add-float v4, v0, v8

    add-int/lit8 v0, v7, 0x0

    aget v5, v12, v0

    add-int/lit8 v0, v7, 0x1

    aget v6, v12, v0

    add-int/lit8 v0, v7, 0x2

    aget v15, v12, v0

    add-int/lit8 v0, v7, 0x3

    aget v0, v12, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    const/16 v18, 0x1

    goto :goto_d

    :cond_15
    const/16 v18, 0x0

    :goto_d
    add-int/lit8 v0, v7, 0x4

    aget v0, v12, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    const/16 v19, 0x1

    goto :goto_e

    :cond_16
    const/16 v19, 0x0

    :goto_e
    move-object/from16 v0, p0

    move v1, v9

    move v2, v8

    move/from16 v20, v7

    move v7, v15

    move v15, v8

    move/from16 v8, v18

    move v11, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    aget v0, v12, v13

    add-float v9, v11, v0

    aget v0, v12, v14

    add-float v8, v15, v0

    goto/16 :goto_11

    :cond_17
    move/from16 v20, v7

    move v11, v9

    add-int/lit8 v7, v20, 0x0

    aget v8, v12, v7

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_12

    :cond_18
    move/from16 v20, v7

    add-int/lit8 v7, v20, 0x0

    aget v0, v12, v7

    add-int/lit8 v1, v20, 0x1

    aget v2, v12, v1

    add-int/lit8 v3, v20, 0x2

    aget v4, v12, v3

    add-int/lit8 v5, v20, 0x3

    aget v6, v12, v5

    invoke-virtual {v10, v0, v2, v4, v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    aget v0, v12, v7

    aget v1, v12, v1

    aget v9, v12, v3

    aget v8, v12, v5

    move v2, v0

    move v3, v1

    goto/16 :goto_12

    :cond_19
    move/from16 v20, v7

    move v15, v8

    add-int/lit8 v7, v20, 0x0

    aget v9, v12, v7

    invoke-virtual {v10, v9, v15}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_12

    :cond_1a
    move/from16 v20, v7

    add-int/lit8 v7, v20, 0x0

    aget v1, v12, v7

    add-int/lit8 v7, v20, 0x1

    aget v2, v12, v7

    add-int/lit8 v7, v20, 0x2

    aget v3, v12, v7

    add-int/lit8 v8, v20, 0x3

    aget v4, v12, v8

    add-int/lit8 v9, v20, 0x4

    aget v5, v12, v9

    add-int/lit8 v11, v20, 0x5

    aget v6, v12, v11

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    aget v9, v12, v9

    aget v0, v12, v11

    aget v1, v12, v7

    aget v2, v12, v8

    move v8, v0

    move v3, v2

    move v2, v1

    goto :goto_12

    :cond_1b
    move/from16 v20, v7

    move v15, v8

    move v11, v9

    add-int/lit8 v13, v20, 0x5

    aget v3, v12, v13

    add-int/lit8 v14, v20, 0x6

    aget v4, v12, v14

    add-int/lit8 v7, v20, 0x0

    aget v5, v12, v7

    add-int/lit8 v7, v20, 0x1

    aget v6, v12, v7

    add-int/lit8 v7, v20, 0x2

    aget v7, v12, v7

    add-int/lit8 v0, v20, 0x3

    aget v0, v12, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1c

    const/4 v8, 0x1

    goto :goto_f

    :cond_1c
    const/4 v8, 0x0

    :goto_f
    add-int/lit8 v0, v20, 0x4

    aget v0, v12, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    const/4 v9, 0x1

    goto :goto_10

    :cond_1d
    const/4 v9, 0x0

    :goto_10
    move-object/from16 v0, p0

    move v1, v11

    move v2, v15

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    aget v9, v12, v13

    aget v8, v12, v14

    :goto_11
    move v3, v8

    move v2, v9

    :goto_12
    add-int v7, v20, v17

    move/from16 v0, p3

    move v11, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_1e
    move v15, v8

    move v11, v9

    move v0, v13

    aput v11, p1, v0

    const/4 v0, 0x1

    aput v15, p1, v0

    const/4 v0, 0x2

    aput v2, p1, v0

    aput v3, p1, v16

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private arcToBezier(DDDDDDDDD)V
    .locals 49

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double/2addr v13, v7

    mul-double/2addr v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 v25, v11

    move-wide/from16 v27, v17

    move/from16 v2, v23

    move-wide/from16 v11, p9

    move-wide/from16 v17, p11

    move-wide/from16 v23, p15

    :goto_0
    if-ge v2, v4, :cond_0

    add-double v31, v23, v9

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, p1, v37

    mul-double v39, v19, v33

    move/from16 v41, v4

    sub-double v3, v37, v39

    mul-double v37, v0, v7

    mul-double v37, v37, v35

    add-double v37, p3, v37

    mul-double v39, v21, v33

    add-double v0, v37, v39

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v33, v35

    sub-double v23, v31, v23

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v23, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v42, v35, v39

    mul-double v42, v42, v35

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    add-double v42, v42, v29

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v42

    mul-double v23, v23, v35

    div-double v23, v23, v39

    mul-double v27, v27, v23

    add-double v11, v11, v27

    mul-double v25, v25, v23

    move-wide/from16 v27, v5

    add-double v5, v17, v25

    mul-double v17, v23, v37

    move-wide/from16 p13, v7

    sub-double v7, v3, v17

    mul-double v23, v23, v33

    move-wide/from16 p7, v9

    sub-double v9, v0, v23

    double-to-float v11, v11

    double-to-float v5, v5

    double-to-float v6, v7

    double-to-float v7, v9

    double-to-float v8, v3

    double-to-float v9, v0

    move-object/from16 v42, p0

    move/from16 v43, v11

    move/from16 v44, v5

    move/from16 v45, v6

    move/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v9

    invoke-virtual/range {v42 .. v48}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v9, p7

    move-wide/from16 v7, p13

    move-wide/from16 v17, v0

    move-wide v11, v3

    move-wide/from16 v5, v27

    move-wide/from16 v23, v31

    move-wide/from16 v25, v33

    move-wide/from16 v27, v37

    move/from16 v4, v41

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private createNodesFromPathData(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x6d

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-direct {p0, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v1, v0, v7, v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_1
    add-int/lit8 v5, v4, 0x1

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_0

    :cond_2
    sub-int/2addr v4, v5

    if-ne v4, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v5, v2, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    new-array v2, v3, [F

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    :cond_3
    return-void
.end method

.method private drawArc(FFFFFFFZZ)V
    .locals 41

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    move/from16 v9, p9

    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v13, v1

    mul-double v15, v13, v4

    move/from16 v6, p2

    move-wide/from16 v17, v13

    float-to-double v13, v6

    mul-double v21, v13, v10

    add-double v15, v15, v21

    float-to-double v6, v0

    div-double/2addr v15, v6

    neg-float v8, v1

    float-to-double v8, v8

    mul-double/2addr v8, v10

    mul-double v21, v13, v4

    add-double v8, v8, v21

    move-wide/from16 v21, v13

    float-to-double v13, v2

    div-double/2addr v8, v13

    float-to-double v1, v3

    mul-double/2addr v1, v4

    move/from16 v12, p4

    move-wide/from16 v23, v8

    float-to-double v8, v12

    mul-double v25, v8, v10

    add-double v1, v1, v25

    div-double/2addr v1, v6

    neg-float v12, v3

    move-wide/from16 v25, v6

    float-to-double v6, v12

    mul-double/2addr v6, v10

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    div-double/2addr v6, v13

    sub-double v8, v15, v1

    sub-double v27, v23, v6

    add-double v29, v15, v1

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v33, v23, v6

    div-double v33, v33, v31

    mul-double v31, v8, v8

    mul-double v35, v27, v27

    add-double v31, v31, v35

    const-wide/16 v35, 0x0

    cmpl-double v12, v31, v35

    if-nez v12, :cond_0

    return-void

    :cond_0
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    div-double v37, v37, v31

    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    sub-double v37, v37, v39

    cmpg-double v12, v37, v35

    if-gez v12, :cond_1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v1, v4

    double-to-float v1, v1

    mul-float v5, v0, v1

    mul-float v6, p6, v1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    return-void

    :cond_1
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    mul-double v8, v8, v31

    mul-double v31, v31, v27

    move/from16 v0, p8

    move/from16 v3, p9

    if-ne v0, v3, :cond_2

    sub-double v29, v29, v31

    add-double v33, v33, v8

    goto :goto_0

    :cond_2
    add-double v29, v29, v31

    sub-double v33, v33, v8

    :goto_0
    sub-double v8, v23, v33

    move-wide/from16 v23, v10

    sub-double v10, v15, v29

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    sub-double v6, v6, v33

    sub-double v1, v1, v29

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v27

    cmpl-double v2, v0, v35

    if-ltz v2, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eq v3, v6, :cond_5

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double/2addr v0, v6

    goto :goto_2

    :cond_4
    add-double/2addr v0, v6

    :cond_5
    :goto_2
    mul-double v29, v29, v25

    mul-double v33, v33, v13

    mul-double v2, v29, v4

    mul-double v10, v33, v23

    sub-double v7, v2, v10

    move-wide/from16 v2, v25

    mul-double v29, v29, v23

    mul-double v33, v33, v4

    add-double v9, v29, v33

    move-object/from16 v6, p0

    move-wide v11, v2

    move-wide/from16 v2, v17

    move-wide/from16 v4, v21

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v21, v27

    move-wide/from16 v23, v0

    invoke-direct/range {v6 .. v24}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->arcToBezier(DDDDDDDDD)V

    return-void
.end method

.method private drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 10

    iget-byte v0, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v3, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget v4, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v5, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget p1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v4, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v5, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v6, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v7, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget v8, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v9, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget p1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget p1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget p1, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extract(Ljava/lang/String;ILcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    move v1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, p2, :cond_2

    iput-boolean v4, p3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    :cond_1
    move v0, v4

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iput v1, p3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    return-void
.end method

.method private getFloats(Ljava/lang/String;)[F
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    new-instance v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$1;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    iget v5, v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v0

    move v0, v6

    :cond_1
    iget-boolean v4, v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    throw p1

    :cond_4
    :goto_1
    new-array p1, v0, [F

    return-object p1
.end method

.method private nextStart(Ljava/lang/String;I)I
    .locals 3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v0, v0, -0x7a

    mul-int/2addr v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method


# virtual methods
.method public arcTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p3, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p4, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p5, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p6, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p5, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p6, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p3, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p4, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 0

    const/16 p3, 0x1f

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->save(I)I

    iget p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    mul-float/2addr p5, p3

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->applyAttribute(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->setShadowLayer()V

    iget-boolean p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPath()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v7

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported command type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->close()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v3, v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v4, v0, v2

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->moveTo(FF)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1f

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string/jumbo v4, "strokeWidth"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iput v4, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_2
    const-string/jumbo v4, "strokeOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x23

    const v7, 0xffffff

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v9, v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    if-ne v9, v6, :cond_3

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    invoke-direct {v8}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;-><init>()V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    and-int/2addr v3, v7

    shl-int/lit8 v2, v2, 0x18

    :goto_3
    or-int/2addr v2, v3

    :goto_4
    iput v2, v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_8

    :cond_6
    const-string/jumbo v4, "strokeColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v9, 0x10

    const/high16 v10, -0x10000

    const-string v11, "#"

    const/4 v12, 0x1

    if-eqz v4, :cond_b

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v5, v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    if-ne v5, v6, :cond_7

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    :cond_8
    if-nez v8, :cond_9

    new-instance v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    invoke-direct {v8}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    goto :goto_5

    :cond_a
    iput v10, v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    :goto_5
    iget v2, v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    and-int/2addr v2, v7

    not-int v2, v2

    goto :goto_3

    :cond_b
    const-string v4, "fillColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x20

    if-eqz v4, :cond_10

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v5, v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    if-ne v5, v6, :cond_c

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    :cond_d
    if-nez v8, :cond_e

    new-instance v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-direct {v8}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_4

    :cond_f
    iput v10, v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_8

    :cond_10
    const-string v4, "fillOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v9, v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    if-ne v9, v6, :cond_11

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    :cond_12
    if-nez v8, :cond_5

    new-instance v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-direct {v8}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>()V

    goto/16 :goto_2

    :cond_13
    const-string v4, "pathData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-direct {p0, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v4, "trimPathStart"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto/16 :goto_8

    :cond_15
    const-string/jumbo v4, "trimPathEnd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v4, "trimPathOffset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_8

    :cond_17
    const-string/jumbo v4, "strokeLineCap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "round"

    if-eqz v4, :cond_1a

    new-instance v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    const-string v4, "butt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-byte v3, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    :goto_6
    iput-byte v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-byte v3, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    goto :goto_6

    :cond_19
    const-string/jumbo v4, "square"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-byte v3, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    goto :goto_6

    :cond_1a
    const-string/jumbo v4, "strokeLineJoin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    new-instance v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    const-string v4, "miter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-byte v3, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    :goto_7
    iput-byte v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-byte v3, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    goto :goto_7

    :cond_1c
    const-string v4, "bevel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-byte v3, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    goto :goto_7

    :cond_1d
    const-string/jumbo v4, "strokeMiterLimit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    goto/16 :goto_1

    :cond_1e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1f
    return-void
.end method

.method public getSPRSize()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v3, v3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x18

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p3, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p4, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->type:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    goto :goto_2

    :cond_2
    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y2:F

    goto :goto_1

    :cond_3
    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y1:F

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    :cond_4
    iget v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath$PathInfo;->y:F

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
