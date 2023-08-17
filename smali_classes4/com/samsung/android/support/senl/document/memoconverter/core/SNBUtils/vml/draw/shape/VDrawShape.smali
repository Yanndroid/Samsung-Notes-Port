.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static dh:I

.field private static dw:I

.field private static vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;


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

.method public static createMultiPicture(Landroid/graphics/Canvas;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)V
    .locals 6

    invoke-static/range {p1 .. p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->createPictureSub(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)Landroid/graphics/Path;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->drawCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Z

    return-void
.end method

.method public static createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)Landroid/graphics/Picture;
    .locals 6

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->createPictureSub(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)Landroid/graphics/Path;

    move-result-object v5

    new-instance p0, Landroid/graphics/Picture;

    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    sget p5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->dw:I

    sget p6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->dh:I

    invoke-virtual {p0, p5, p6}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->drawCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    return-object p0
.end method

.method public static createPictureSub(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)Landroid/graphics/Path;
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getAdj()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "stroke"

    const-string v5, "formulas"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getAdj()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getElements()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;

    invoke-virtual {v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    goto :goto_1

    :cond_5
    invoke-virtual {v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_8
    invoke-static {v2, v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    invoke-static {v2, v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v2

    invoke-static {v1, v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValueFloat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v7, v13}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->getList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v3, v1, v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->calculate(Ljava/util/ArrayList;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->getValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilArray;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilArray;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object v1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-static {v8, v14}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v7, v4

    sput v7, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->dw:I

    float-to-int v7, v5

    sput v7, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->dh:I

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getWidth()F

    move-result v7

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getHeight()F

    move-result v8

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathCmd()Ljava/lang/String;

    move-result-object v13

    const-string v14, "#001"

    invoke-virtual {v14, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b

    invoke-virtual {v10, v1, v6, v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_b
    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getMaxPoint()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v11

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataMoveTo;->getMaxPoint()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v10

    :goto_4
    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSy()F

    move-result v10

    move/from16 v24, v11

    move v11, v10

    move/from16 v10, v24

    goto :goto_5

    :cond_c
    const-string v14, "#002"

    invoke-virtual {v14, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;->getPathData()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getFullCmd()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getFullCmd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d

    invoke-virtual {v10, v1, v6, v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z

    :cond_d
    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getMaxPoint()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->getSx()F

    move-result v11

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataLineTo;->getMaxPoint()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v10

    goto :goto_4

    :cond_e
    :goto_5
    cmpg-float v12, v7, v10

    if-gez v12, :cond_f

    move v7, v10

    :cond_f
    cmpg-float v12, v8, v11

    if-gez v12, :cond_a

    move v8, v11

    goto :goto_3

    :cond_10
    const/high16 v17, 0x45870000    # 4320.0f

    const/high16 v9, 0x46070000    # 8640.0f

    add-float/2addr v7, v9

    add-float/2addr v8, v9

    div-float v18, v4, v7

    div-float v19, v5, v8

    if-eqz p6, :cond_11

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static {v4, v5, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->getLinePath(Landroid/graphics/RectF;FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_6

    :cond_11
    const/high16 v16, 0x45870000    # 4320.0f

    move-object/from16 v20, v1

    move-object/from16 v21, v6

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-static/range {v15 .. v23}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawPath;->createPath(Ljava/util/ArrayList;FFFF[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Landroid/graphics/Path;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method private static drawCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Z
    .locals 3

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-nez p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeWeight()F

    move-result p2

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFillColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getFill()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    :cond_3
    const-string p4, "#00000000"

    invoke-static {p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result p4

    :goto_0
    int-to-float p4, p4

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-int p4, p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p5, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    sget-object p4, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->vShapeattr:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->getStrokeColor()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->insertValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v1, p2, p4

    if-ltz v1, :cond_5

    if-eqz p3, :cond_5

    invoke-static {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    float-to-int p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p5, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return v0
.end method

.method private static getLinePath(Landroid/graphics/RectF;FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;)Landroid/graphics/Path;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->getStartArrow()Z

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->getEndArrow()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p0, v1, p1, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;->createPath(Landroid/graphics/RectF;FFZZ)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;
    .locals 0

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private static insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;
    .locals 0

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private static insertValue(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static insertValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static insertValue(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static insertValueFloat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method
