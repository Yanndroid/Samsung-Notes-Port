.class public Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FreeformShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;",
        "Lorg/apache/poi/sl/usermodel/FreeformShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .locals 5

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeform "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setR(Ljava/lang/Object;)V

    const-string v2, "b"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setB(Ljava/lang/Object;)V

    const-string/jumbo v2, "t"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setT(Ljava/lang/Object;)V

    const-string v2, "l"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->setL(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    return-object v0
.end method


# virtual methods
.method public getPath()Lorg/apache/poi/java/awt/geom/Path2D$Double;
    .locals 28

    new-instance v13, Lorg/apache/poi/java/awt/geom/Path2D$Double;

    invoke-direct {v13}, Lorg/apache/poi/java/awt/geom/Path2D$Double;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v15

    array-length v11, v15

    const/4 v12, 0x0

    move v9, v12

    :goto_0
    if-ge v9, v11, :cond_7

    aget-object v0, v15, v9

    invoke-virtual {v14}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getW()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    div-double v16, v1, v3

    invoke-virtual {v14}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->getH()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    div-double v18, v1, v3

    const-string v1, "*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v10

    array-length v7, v10

    move v8, v12

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v0, v10, v8

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    mul-double v1, v1, v16

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    mul-double v3, v3, v18

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-virtual {v13, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->moveTo(DD)V

    :goto_2
    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v25, v12

    move-object/from16 v22, v13

    :goto_3
    move v13, v11

    goto/16 :goto_4

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->getPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-virtual {v13, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    invoke-interface {v0, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v2

    mul-double v2, v2, v16

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    mul-double v4, v4, v18

    double-to-float v1, v4

    float-to-double v4, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v20

    move-object/from16 v22, v13

    mul-double v12, v20, v16

    double-to-float v1, v12

    float-to-double v12, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    mul-double v0, v0, v18

    double-to-float v0, v0

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v22

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v12

    move v13, v7

    move/from16 v24, v8

    move-wide/from16 v7, v20

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->quadTo(DDDD)V

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v13

    const/16 v25, 0x0

    goto/16 :goto_3

    :cond_3
    move/from16 v24, v8

    move-object/from16 v22, v13

    move v13, v7

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    mul-double v3, v3, v16

    double-to-float v3, v3

    float-to-double v3, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v5

    mul-double v5, v5, v18

    double-to-float v1, v5

    float-to-double v5, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v7

    mul-double v7, v7, v16

    double-to-float v1, v7

    float-to-double v7, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    mul-double v1, v1, v18

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getX()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v20

    move/from16 v23, v13

    mul-double v12, v20, v16

    double-to-float v12, v12

    float-to-double v12, v12

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v20

    move-wide/from16 v26, v1

    mul-double v0, v20, v18

    double-to-float v0, v0

    float-to-double v1, v0

    move-object/from16 v0, v22

    move-wide/from16 v20, v26

    move-wide/from16 v26, v1

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide/from16 v7, v20

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-wide v9, v12

    move v13, v11

    const/16 v25, 0x0

    move-wide/from16 v11, v26

    invoke-virtual/range {v0 .. v12}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    goto :goto_4

    :cond_4
    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v13

    const/16 v25, 0x0

    move v13, v11

    instance-of v0, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    if-eqz v0, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/apache/poi/java/awt/geom/Path2D;->closePath()V

    :cond_5
    :goto_4
    add-int/lit8 v8, v24, 0x1

    move v11, v13

    move/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move/from16 v7, v23

    move/from16 v12, v25

    goto/16 :goto_1

    :cond_6
    move/from16 v20, v9

    move/from16 v25, v12

    move-object/from16 v22, v13

    move v13, v11

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v13, v22

    goto/16 :goto_0

    :cond_7
    move-object/from16 v22, v13

    new-instance v0, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v14}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {v14}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    new-instance v1, Lorg/apache/poi/java/awt/geom/Path2D$Double;

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/geom/Path2D$Double;-><init>(Lorg/apache/poi/java/awt/Shape;)V

    return-object v1
.end method

.method public setPath(Lorg/apache/poi/java/awt/geom/Path2D$Double;)I
    .locals 16

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    new-instance v4, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v4}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v0, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setH(J)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v0, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->setW(J)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Lorg/apache/poi/java/awt/geom/PathIterator;->isDone()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    const/4 v7, 0x6

    new-array v7, v7, [D

    invoke-interface {v4, v7}, Lorg/apache/poi/java/awt/geom/PathIterator;->currentSegment([D)I

    move-result v9

    if-eqz v9, :cond_4

    if-eq v9, v8, :cond_3

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2

    const/4 v12, 0x4

    if-eq v9, v10, :cond_1

    if-ne v9, v12, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewClose()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized path segment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewCubicBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v13

    aget-wide v14, v7, v5

    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v14

    sub-int/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    aget-wide v14, v7, v8

    invoke-static {v14, v15}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    aget-wide v13, v7, v11

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v10

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    aget-wide v9, v7, v12

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    const/4 v9, 0x5

    aget-wide v9, v7, v9

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewQuadBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v12

    aget-wide v13, v7, v5

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    aget-wide v13, v7, v8

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v8

    aget-wide v11, v7, v11

    invoke-static {v11, v12}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    aget-wide v9, v7, v10

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewLnTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v9

    aget-wide v10, v7, v5

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v10

    sub-int/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    aget-wide v10, v7, v8

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->addNewMoveTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object v9

    aget-wide v10, v7, v5

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v10

    sub-int/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setX(Ljava/lang/Object;)V

    aget-wide v10, v7, v8

    :goto_1
    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;->setY(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    :goto_2
    invoke-interface {v4}, Lorg/apache/poi/java/awt/geom/PathIterator;->next()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v3, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object v2

    new-array v3, v8, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    aput-object v0, v3, v5

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->setPathArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return v6
.end method
