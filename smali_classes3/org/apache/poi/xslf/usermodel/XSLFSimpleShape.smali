.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SimpleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/SimpleShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    return-object v0
.end method

.method private static getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v1, :cond_0

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have line properties"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setFillColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p1, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v11

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->sizeOfLnArray()I

    move-result v3

    if-ge v3, v0, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    return-object v1
.end method

.method public getFillColor()Lorg/apache/poi/java/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getFlipHorizontal()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipH()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipH()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getFlipVertical()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipV()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipV()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown shape geometry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", available geometries are: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->convertCustomGeometry(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred while closing a Custom Geometry XML Stream Reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "rect"

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    :goto_0
    return-object v2
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->isSetHlinkClick()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$6;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLineColor()Lorg/apache/poi/java/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->TRIPLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THIN_THICK:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THICK_THIN:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->DOUBLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getLineHeadDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v0
.end method

.method public getLineTailDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineWidth()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getW()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getRotation()D
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetRot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public bridge synthetic getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    move-result-object v0

    return-object v0
.end method

.method public getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getEffectStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;->getEffectStyleArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->getOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/sl/usermodel/ShapeType;->forId(IZ)Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t have xfrm element."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public isPlaceholder()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    int-to-long v3, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-void
.end method

.method public setFillColor(Lorg/apache/poi/java/awt/Color;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_5

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetSolidFill()V

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetGradFill()V

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetPattFill()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetGradFill()V

    :cond_3
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetBlipFill()V

    :cond_4
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetNoFill()V

    :cond_6
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipH(Z)V

    :cond_0
    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipV(Z)V

    :cond_0
    return-void
.end method

.method public setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCap()V

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLineColor(Lorg/apache/poi/java/awt/Color;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    :cond_4
    if-nez p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Lorg/apache/poi/java/awt/Color;)V

    :goto_0
    return-void
.end method

.method public setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCmpd()V

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$11;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCompound:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->TRI:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->THIN_THICK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->THICK_THIN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_5
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPrstDash()V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    :goto_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetType()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetLen()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetW()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetType()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetLen()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetW()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineWidth(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetW()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    :cond_6
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method

.method public setRotation(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setRot(I)V

    :cond_0
    return-void
.end method

.method public setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->unsetCustGeom()V

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    :goto_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/ShapeType;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    return-void
.end method

.method public varargs setStrokeStyle([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Lorg/apache/poi/java/awt/Color;)V

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    goto :goto_1

    :cond_4
    instance-of v3, v2, Lorg/apache/poi/java/awt/Color;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/apache/poi/java/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
