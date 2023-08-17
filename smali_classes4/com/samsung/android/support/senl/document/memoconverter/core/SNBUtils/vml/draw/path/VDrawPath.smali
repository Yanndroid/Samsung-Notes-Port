.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QuarterPositionB:I = 0x1

.field public static final QuarterPositionL:I = 0x2

.field public static final QuarterPositionR:I = 0x3

.field public static final QuarterPositionT:I

.field public static currX:F

.field public static currY:F

.field public static mEx:F

.field public static mEy:F

.field public static mSx:F

.field public static mSy:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPath(Ljava/util/ArrayList;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Landroid/graphics/Path;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;",
            ">;FFFF[F[F",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mEy:F

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mEx:F

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mSy:F

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mSx:F

    mul-float v0, p1, p3

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    mul-float v0, p2, p4

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathCmd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#019"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    const-string v3, "#018"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_3
    const-string v3, "#017"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_4
    const-string v3, "#016"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "#015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "#014"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "#013"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "#012"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "#011"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "#010"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoStroke;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoStroke;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "#009"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoFill;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoFill;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "#008"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEnd;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEnd;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "#007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClose;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClose;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "#006"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_f
    const-string v3, "#005"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "#004"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "#003"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "#002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_13
    const-string v3, "#001"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    goto/16 :goto_0

    :cond_14
    :goto_1
    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPathDraw(FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V

    :cond_15
    sget v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mEx:F

    sget v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mEy:F

    return-object v0
.end method

.method private static createPathDraw(FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 6

    invoke-virtual {p8, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getWidth()F

    move-result p4

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object p5

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getHeight()F

    move-result p5

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordOrigin()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;

    move-result-object p7

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;->getSx()F

    move-result p7

    add-float/2addr p0, p7

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordOrigin()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;

    move-result-object p6

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;->getSy()F

    move-result p6

    add-float/2addr p1, p6

    add-float/2addr p4, p0

    add-float/2addr p5, p1

    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    mul-float v3, p4, p2

    mul-float v4, p5, p3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p8

    move v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    sput p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->getCenter()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p6

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p6

    add-float/2addr p6, p1

    mul-float/2addr p6, p3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->getCenter()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p7

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p7

    add-float/2addr p7, p2

    mul-float/2addr p7, p4

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->getSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    move-result-object p8

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->getWidth()F

    move-result p8

    mul-float/2addr p8, p3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->getSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->getHeight()F

    move-result v0

    mul-float/2addr v0, p4

    sub-float v1, p6, p8

    sub-float v2, p7, v0

    add-float/2addr p6, p8

    add-float/2addr p7, v0

    new-instance p8, Landroid/graphics/RectF;

    invoke-direct {p8, v1, v2, p6, p7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->getStartAngle()F

    move-result p6

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->getEndAngle()F

    move-result p5

    neg-float p5, p5

    invoke-virtual {p9, p8, p6, p5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;->getCenter()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p6

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p6

    add-float/2addr p6, p1

    mul-float/2addr p6, p3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;->getCenter()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p7

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p7

    add-float/2addr p7, p2

    mul-float/2addr p7, p4

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;->getSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    move-result-object p8

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->getWidth()F

    move-result p8

    mul-float/2addr p8, p3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;->getSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->getHeight()F

    move-result v0

    mul-float/2addr v0, p4

    sub-float v1, p6, p8

    sub-float v2, p7, v0

    add-float/2addr p6, p8

    add-float/2addr p7, v0

    new-instance p8, Landroid/graphics/RectF;

    invoke-direct {p8, v1, v2, p6, p7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;->getStartAngle()F

    move-result p6

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipseTo$Data;->getEndAngle()F

    move-result p5

    neg-float p5, p5

    invoke-virtual {p9, p8, p6, p5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 29

    move-object/from16 v0, p9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;->getFullCmd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;->getFullCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getLeft()F

    move-result v4

    add-float v4, p1, v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getTop()F

    move-result v5

    add-float v5, p2, v5

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getRight()F

    move-result v6

    add-float v6, p1, v6

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getBottom()F

    move-result v7

    add-float v7, p2, v7

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v8

    add-float v8, p1, v8

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v9

    add-float v9, p2, v9

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v10

    add-float v10, p1, v10

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v11

    add-float v11, p2, v11

    sub-float/2addr v6, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    sub-float/2addr v7, v5

    div-float/2addr v7, v12

    add-float/2addr v4, v6

    add-float/2addr v5, v7

    sub-float/2addr v8, v4

    div-float/2addr v8, v6

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    float-to-double v14, v4

    move-object/from16 p0, v1

    float-to-double v0, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v12, v14

    double-to-float v8, v12

    sub-float/2addr v9, v5

    div-float/2addr v9, v7

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    move/from16 p5, v2

    move-object/from16 p6, v3

    float-to-double v2, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v12, v2

    double-to-float v9, v12

    sub-float/2addr v10, v4

    div-float/2addr v10, v6

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v12, v14

    double-to-float v10, v12

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v0, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v4, v6

    float-to-double v4, v4

    float-to-double v6, v8

    float-to-double v8, v9

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-wide v11, v14

    move-wide v14, v4

    move-wide/from16 v16, v2

    move-wide/from16 v18, v11

    move-wide/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    invoke-static/range {v14 .. v28}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v10

    float-to-double v13, v0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-wide/from16 v24, v13

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v22, v4

    move/from16 v27, v1

    invoke-static/range {v14 .. v28}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getLeft()F

    move-result v2

    add-float v2, p1, v2

    mul-float v2, v2, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getTop()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getRight()F

    move-result v4

    add-float v4, p1, v4

    mul-float v4, v4, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getBottom()F

    move-result v5

    add-float v5, p2, v5

    mul-float v5, v5, p4

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    add-float v2, p1, v2

    mul-float v2, v2, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v4

    add-float v4, p1, v4

    mul-float v4, v4, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v5

    add-float v5, p2, v5

    mul-float v5, v5, p4

    move-object/from16 v7, p9

    if-nez p5, :cond_1

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    sput v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move/from16 v2, p5

    :goto_2
    invoke-virtual {v7, v6, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sput v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    move-object/from16 v1, p0

    move-object v0, v7

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getLeft()F

    move-result v2

    add-float v2, p1, v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getTop()F

    move-result v3

    add-float v3, p2, v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getRight()F

    move-result v4

    add-float v4, p1, v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getBottom()F

    move-result v5

    add-float v5, p2, v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v6

    add-float v6, p1, v6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v7

    add-float v7, p2, v7

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v8

    add-float v8, p1, v8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v9

    add-float v9, p2, v9

    sub-float/2addr v4, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    sub-float/2addr v5, v3

    div-float/2addr v5, v10

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    sub-float/2addr v6, v2

    div-float/2addr v6, v4

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    float-to-double v14, v2

    float-to-double v12, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v14

    double-to-float v6, v10

    sub-float/2addr v7, v3

    div-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    float-to-double v0, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v0

    double-to-float v7, v10

    sub-float/2addr v8, v2

    div-float/2addr v8, v4

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v14

    double-to-float v8, v10

    sub-float/2addr v9, v3

    div-float/2addr v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v12, v9

    add-double/2addr v12, v0

    double-to-float v3, v12

    add-float/2addr v2, v4

    float-to-double v12, v2

    float-to-double v4, v6

    float-to-double v6, v7

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-wide v9, v14

    move-wide v14, v0

    move-wide/from16 v16, v9

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-static/range {v12 .. v26}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v11

    double-to-float v2, v11

    float-to-double v14, v8

    float-to-double v11, v3

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-wide/from16 v22, v11

    move-wide v12, v4

    move-wide v3, v14

    move-wide v14, v6

    move-wide/from16 v20, v3

    move/from16 v25, v2

    invoke-static/range {v12 .. v26}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getLeft()F

    move-result v1

    add-float v1, p1, v1

    mul-float v1, v1, p3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getTop()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getRight()F

    move-result v4

    add-float v4, p1, v4

    mul-float v4, v4, p3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getBottom()F

    move-result v5

    add-float v5, p2, v5

    mul-float v5, v5, p4

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v1

    add-float v1, p1, v1

    mul-float v1, v1, p3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    move-object/from16 v4, p9

    invoke-virtual {v4, v6, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 29

    move-object/from16 v0, p9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;->getFullCmd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;->getFullCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getLeft()F

    move-result v4

    add-float v4, p1, v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getTop()F

    move-result v5

    add-float v5, p2, v5

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getRight()F

    move-result v6

    add-float v6, p1, v6

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getBottom()F

    move-result v7

    add-float v7, p2, v7

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v8

    add-float v8, p1, v8

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v9

    add-float v9, p2, v9

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v10

    add-float v10, p1, v10

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v11

    add-float v11, p2, v11

    sub-float/2addr v6, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    sub-float/2addr v7, v5

    div-float/2addr v7, v12

    add-float/2addr v4, v6

    add-float/2addr v5, v7

    sub-float/2addr v8, v4

    div-float/2addr v8, v6

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    float-to-double v14, v4

    move-object/from16 p0, v1

    float-to-double v0, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v12, v14

    double-to-float v8, v12

    sub-float/2addr v9, v5

    div-float/2addr v9, v7

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    move/from16 p5, v2

    move-object/from16 p6, v3

    float-to-double v2, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v12, v2

    double-to-float v9, v12

    sub-float/2addr v10, v4

    div-float/2addr v10, v6

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v0

    add-double/2addr v12, v14

    double-to-float v10, v12

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v0, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v4, v6

    float-to-double v4, v4

    float-to-double v6, v8

    float-to-double v8, v9

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-wide v11, v14

    move-wide v14, v4

    move-wide/from16 v16, v2

    move-wide/from16 v18, v11

    move-wide/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    invoke-static/range {v14 .. v28}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v10

    float-to-double v13, v0

    const/16 v28, 0x0

    move-wide/from16 v24, v13

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v22, v4

    move/from16 v27, v1

    invoke-static/range {v14 .. v28}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getLeft()F

    move-result v2

    add-float v2, p1, v2

    mul-float v2, v2, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getTop()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getRight()F

    move-result v4

    add-float v4, p1, v4

    mul-float v4, v4, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getBottom()F

    move-result v5

    add-float v5, p2, v5

    mul-float v5, v5, p4

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    add-float v2, p1, v2

    mul-float v2, v2, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v4

    add-float v4, p1, v4

    mul-float v4, v4, p3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArc$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v5

    add-float v5, p2, v5

    mul-float v5, v5, p4

    move-object/from16 v7, p9

    if-nez p5, :cond_1

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    sput v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move/from16 v2, p5

    :goto_2
    invoke-virtual {v7, v6, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sput v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    move-object/from16 v1, p0

    move-object v0, v7

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getLeft()F

    move-result v2

    add-float v2, p1, v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getTop()F

    move-result v3

    add-float v3, p2, v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getRight()F

    move-result v4

    add-float v4, p1, v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getBottom()F

    move-result v5

    add-float v5, p2, v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v6

    add-float v6, p1, v6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v7

    add-float v7, p2, v7

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v8

    add-float v8, p1, v8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v9

    add-float v9, p2, v9

    sub-float/2addr v4, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    sub-float/2addr v5, v3

    div-float/2addr v5, v10

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    sub-float/2addr v6, v2

    div-float/2addr v6, v4

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    float-to-double v14, v2

    float-to-double v12, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v14

    double-to-float v6, v10

    sub-float/2addr v7, v3

    div-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    float-to-double v0, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v0

    double-to-float v7, v10

    sub-float/2addr v8, v2

    div-float/2addr v8, v4

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v10, v14

    double-to-float v8, v10

    sub-float/2addr v9, v3

    div-float/2addr v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v12, v9

    add-double/2addr v12, v0

    double-to-float v3, v12

    add-float/2addr v2, v4

    float-to-double v12, v2

    float-to-double v4, v6

    float-to-double v6, v7

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-wide v9, v14

    move-wide v14, v0

    move-wide/from16 v16, v9

    move-wide/from16 v18, v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-static/range {v12 .. v26}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v11

    double-to-float v2, v11

    float-to-double v14, v8

    float-to-double v11, v3

    const/16 v26, 0x0

    move-wide/from16 v22, v11

    move-wide v12, v4

    move-wide v3, v14

    move-wide v14, v6

    move-wide/from16 v20, v3

    move/from16 v25, v2

    invoke-static/range {v12 .. v26}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getThreePointDegree(DDDDDDZFZ)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getLeft()F

    move-result v1

    add-float v1, p1, v1

    mul-float v1, v1, p3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getTop()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getRight()F

    move-result v4

    add-float v4, p1, v4

    mul-float v4, v4, p3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getBottom()F

    move-result v5

    add-float v5, p2, v5

    mul-float v5, v5, p4

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getStart()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v1

    add-float v1, p1, v1

    mul-float v1, v1, p3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClockWiseArcTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    move-object/from16 v4, p9

    invoke-virtual {v4, v6, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataClose;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p9}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {p0, p5, v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    add-float/2addr v2, p1

    mul-float v4, v2, p3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v2

    add-float/2addr v2, p2

    mul-float v5, v2, p4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    add-float/2addr v2, p1

    mul-float v6, v2, p3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v2

    add-float/2addr v2, p2

    mul-float v7, v2, p4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    add-float/2addr v2, p1

    mul-float/2addr v2, p3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v1

    add-float/2addr v1, p2

    mul-float/2addr v1, p4

    move-object/from16 v3, p9

    move v8, v2

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sput v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantX;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    sget v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sget v5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v6

    add-float v6, p1, v6

    mul-float v6, v6, p3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    rem-int/lit8 v7, v2, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v7, :cond_3

    cmpl-float v7, v5, v3

    if-lez v7, :cond_1

    move v11, v10

    goto :goto_2

    :cond_1
    move v11, v1

    :goto_2
    cmpg-float v12, v4, v6

    if-gez v12, :cond_2

    cmpg-float v12, v5, v3

    if-ltz v12, :cond_7

    :cond_2
    cmpl-float v12, v4, v6

    if-lez v12, :cond_6

    if-lez v7, :cond_6

    goto :goto_4

    :cond_3
    cmpl-float v7, v4, v6

    if-lez v7, :cond_4

    move v11, v8

    goto :goto_3

    :cond_4
    move v11, v9

    :goto_3
    cmpg-float v12, v4, v6

    if-gez v12, :cond_5

    cmpg-float v12, v5, v3

    if-ltz v12, :cond_6

    :cond_5
    if-lez v7, :cond_7

    cmpl-float v7, v5, v3

    if-lez v7, :cond_7

    :cond_6
    move v7, v1

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v10

    :goto_5
    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x43870000    # 270.0f

    const/high16 v14, 0x42b40000    # 90.0f

    const/4 v15, 0x0

    if-eqz v7, :cond_c

    if-eqz v11, :cond_b

    if-eq v11, v10, :cond_a

    if-eq v11, v9, :cond_9

    if-eq v11, v8, :cond_8

    goto :goto_6

    :cond_8
    sub-float v7, v4, v6

    sub-float v7, v6, v7

    sub-float v8, v3, v5

    sub-float/2addr v5, v8

    move v12, v15

    move v15, v3

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_9
    sub-float v7, v4, v6

    sub-float v7, v6, v7

    sub-float v8, v3, v5

    sub-float/2addr v5, v8

    move v15, v5

    goto :goto_7

    :cond_a
    sub-float v7, v5, v3

    sub-float v7, v3, v7

    sub-float v8, v6, v4

    sub-float/2addr v4, v8

    move v15, v5

    move v5, v7

    move v12, v14

    goto/16 :goto_9

    :cond_b
    sub-float v7, v6, v4

    sub-float/2addr v4, v7

    sub-float v7, v5, v3

    sub-float v7, v3, v7

    move v15, v7

    move v12, v13

    goto :goto_8

    :cond_c
    const/high16 v7, -0x3d4c0000    # -90.0f

    if-eqz v11, :cond_10

    if-eq v11, v10, :cond_f

    if-eq v11, v9, :cond_e

    if-eq v11, v8, :cond_d

    move v14, v7

    :goto_6
    move v4, v15

    move v5, v4

    move v7, v5

    move v12, v7

    goto :goto_a

    :cond_d
    sub-float v8, v4, v6

    sub-float v8, v6, v8

    sub-float v9, v3, v5

    sub-float/2addr v5, v9

    move v14, v7

    move v12, v15

    move v7, v4

    move v15, v5

    move v4, v8

    :goto_7
    move v5, v3

    goto :goto_a

    :cond_e
    sub-float v8, v3, v5

    sub-float/2addr v5, v8

    sub-float v8, v4, v6

    sub-float v8, v6, v8

    move v15, v3

    move v14, v7

    move v7, v8

    goto :goto_a

    :cond_f
    sub-float v8, v6, v4

    sub-float/2addr v4, v8

    sub-float v8, v5, v3

    sub-float v8, v3, v8

    move v15, v5

    move v5, v8

    move v12, v14

    move v14, v7

    :goto_8
    move v7, v6

    goto :goto_a

    :cond_10
    sub-float v8, v6, v4

    sub-float/2addr v4, v8

    sub-float v8, v5, v3

    sub-float v8, v3, v8

    move v14, v7

    move v15, v8

    move v12, v13

    :goto_9
    move v7, v4

    move v4, v6

    :goto_a
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v4, v5, v7, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v4, p9

    invoke-virtual {v4, v8, v12, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sput v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEllipticalQaudrantY;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    sget v4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sget v5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v6

    add-float v6, p1, v6

    mul-float v6, v6, p3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v3

    add-float v3, p2, v3

    mul-float v3, v3, p4

    rem-int/lit8 v7, v2, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v7, :cond_3

    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    move v11, v8

    goto :goto_2

    :cond_1
    move v11, v9

    :goto_2
    cmpg-float v12, v4, v6

    if-gez v12, :cond_2

    cmpg-float v12, v5, v3

    if-ltz v12, :cond_7

    :cond_2
    if-lez v7, :cond_6

    cmpl-float v7, v5, v3

    if-lez v7, :cond_6

    goto :goto_4

    :cond_3
    cmpl-float v7, v5, v3

    if-lez v7, :cond_4

    move v11, v10

    goto :goto_3

    :cond_4
    move v11, v1

    :goto_3
    cmpg-float v12, v4, v6

    if-gez v12, :cond_5

    cmpg-float v12, v5, v3

    if-ltz v12, :cond_6

    :cond_5
    cmpl-float v12, v4, v6

    if-lez v12, :cond_7

    if-lez v7, :cond_7

    :cond_6
    move v7, v10

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v1

    :goto_5
    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x43870000    # 270.0f

    const/high16 v14, 0x42b40000    # 90.0f

    const/4 v15, 0x0

    if-eqz v7, :cond_c

    if-eqz v11, :cond_b

    if-eq v11, v10, :cond_a

    if-eq v11, v9, :cond_9

    if-eq v11, v8, :cond_8

    goto :goto_6

    :cond_8
    sub-float v7, v4, v6

    sub-float v7, v6, v7

    sub-float v8, v3, v5

    sub-float/2addr v5, v8

    move v12, v15

    move v15, v3

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_9
    sub-float v7, v4, v6

    sub-float v7, v6, v7

    sub-float v8, v3, v5

    sub-float/2addr v5, v8

    move v15, v5

    goto :goto_7

    :cond_a
    sub-float v7, v5, v3

    sub-float v7, v3, v7

    sub-float v8, v6, v4

    sub-float/2addr v4, v8

    move v15, v5

    move v5, v7

    move v12, v14

    goto/16 :goto_9

    :cond_b
    sub-float v7, v6, v4

    sub-float/2addr v4, v7

    sub-float v7, v5, v3

    sub-float v7, v3, v7

    move v15, v7

    move v12, v13

    goto :goto_8

    :cond_c
    const/high16 v7, -0x3d4c0000    # -90.0f

    if-eqz v11, :cond_10

    if-eq v11, v10, :cond_f

    if-eq v11, v9, :cond_e

    if-eq v11, v8, :cond_d

    move v14, v7

    :goto_6
    move v4, v15

    move v5, v4

    move v7, v5

    move v12, v7

    goto :goto_a

    :cond_d
    sub-float v8, v4, v6

    sub-float v8, v6, v8

    sub-float v9, v3, v5

    sub-float/2addr v5, v9

    move v14, v7

    move v12, v15

    move v7, v4

    move v15, v5

    move v4, v8

    :goto_7
    move v5, v3

    goto :goto_a

    :cond_e
    sub-float v8, v3, v5

    sub-float/2addr v5, v8

    sub-float v8, v4, v6

    sub-float v8, v6, v8

    move v15, v3

    move v14, v7

    move v7, v8

    goto :goto_a

    :cond_f
    sub-float v8, v6, v4

    sub-float/2addr v4, v8

    sub-float v8, v5, v3

    sub-float v8, v3, v8

    move v15, v5

    move v5, v8

    move v12, v14

    move v14, v7

    :goto_8
    move v7, v6

    goto :goto_a

    :cond_10
    sub-float v8, v6, v4

    sub-float/2addr v4, v8

    sub-float v8, v5, v3

    sub-float v8, v3, v8

    move v14, v7

    move v15, v8

    move v12, v13

    :goto_9
    move v7, v4

    move v4, v6

    :goto_a
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v4, v5, v7, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v4, p9

    invoke-virtual {v4, v8, v12, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sput v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataEnd;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 0

    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p6

    add-float/2addr p6, p1

    mul-float/2addr p6, p3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p5

    add-float/2addr p5, p2

    mul-float/2addr p5, p4

    invoke-virtual {p9, p6, p5}, Landroid/graphics/Path;->lineTo(FF)V

    sput p6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p6

    add-float/2addr p6, p1

    mul-float/2addr p6, p3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p5

    add-float/2addr p5, p2

    mul-float/2addr p5, p4

    invoke-virtual {p9, p6, p5}, Landroid/graphics/Path;->moveTo(FF)V

    sput p6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    sget p7, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mSx:F

    const/4 p8, 0x0

    cmpl-float p7, p7, p8

    if-nez p7, :cond_2

    sput p6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mSx:F

    :cond_2
    sget p6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mSy:F

    cmpl-float p6, p6, p8

    if-nez p6, :cond_1

    sput p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->mSy:F

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoFill;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 0

    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataNoStroke;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 0

    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->getList()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p6

    invoke-virtual {p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p6

    add-float/2addr p6, p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataQuadraticbezier;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p0

    add-float/2addr p0, p2

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p8

    add-float/2addr p8, p1

    mul-float/2addr p8, p3

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p7

    add-float/2addr p7, p2

    mul-float/2addr p7, p4

    invoke-virtual {p9, p8, p7, p6, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_1
    sput p6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sput p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {p0, p5, v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    mul-float v4, v2, p3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v2

    mul-float v5, v2, p4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    mul-float v6, v2, p3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v2

    mul-float v7, v2, p4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v2

    mul-float/2addr v2, p3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v1

    mul-float/2addr v1, p4

    move-object/from16 v3, p9

    move v8, v2

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    sget v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    add-float/2addr v3, v2

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sget v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    add-float/2addr v2, v1

    sput v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;->getFullCmd()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;->getFullCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRLineTo;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p2

    mul-float/2addr p2, p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p1

    mul-float/2addr p1, p4

    invoke-virtual {p9, p2, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    sget p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    add-float/2addr p5, p2

    sput p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sget p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    add-float/2addr p2, p1

    sput p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createPathDraw(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;->getFullCmd()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;->getFullCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataRMoveTo;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result p2

    mul-float/2addr p2, p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result p1

    mul-float/2addr p1, p4

    invoke-virtual {p9, p2, p1}, Landroid/graphics/Path;->rMoveTo(FF)V

    sget p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    add-float/2addr p5, p2

    sput p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currX:F

    sget p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    add-float/2addr p2, p1

    sput p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->currY:F

    goto :goto_0

    :cond_1
    return-void
.end method
