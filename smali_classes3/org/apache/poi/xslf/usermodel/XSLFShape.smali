.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field public static final PML_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/presentationml/2006/main"


# instance fields
.field private _nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

.field private _parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

.field private _ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

.field private final _shape:Lorg/apache/xmlbeans/XmlObject;

.field private final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private _spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_shape:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-void
.end method

.method private static getPlaceholderType(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)I
    .locals 4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method public static selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetMatrixStyle()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isLineStyle()Z

    move-result p0

    invoke-static {p1, p3, p0, p4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;Lorg/apache/poi/xslf/usermodel/XSLFTheme;ZZ)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object v0
.end method

.method public static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 9

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->getGsArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFShape$3;

    invoke-direct {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/sl/usermodel/ColorStyle;

    array-length v2, v0

    new-array v2, v2, [F

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v0, v4

    if-nez p1, :cond_0

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSchemeClr()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, p1

    :goto_1
    new-instance v8, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v8, v6, p2, v7}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v8}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getPos()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x47c35000    # 100000.0f

    div-float/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape$4;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;[Lorg/apache/poi/sl/usermodel/ColorStyle;[F)V

    return-object p1
.end method

.method public static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSchemeClr()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object p1

    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public static selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;Lorg/apache/poi/xslf/usermodel/XSLFTheme;ZZ)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v2

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    const/16 v4, 0x3e7

    if-gt v1, v4, :cond_2

    sub-int/2addr v1, v3

    if-eqz p2, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x3e9

    if-lt v1, p2, :cond_5

    sub-int/2addr v1, p2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getBgFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/XmlCursor;->toChild(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    :cond_3
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-static {v0, p2, v1, p1, p3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p3, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {p3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->drawShape(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/model/PropertyFetcher<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-virtual {v3, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v3

    :cond_3
    instance-of v4, v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderType(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
    .locals 3

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "bgPr"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    return-object v0
.end method

.method public getBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 3

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "bgRef"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-object v0
.end method

.method public getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    if-nez v0, :cond_0

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:cNvPr"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    return-object v0
.end method

.method public getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    if-nez v0, :cond_0

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:nvPr/p:ph"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    return-object v0
.end method

.method public getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-interface {p1, v0, p3}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p2
.end method

.method public getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
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
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v0
.end method

.method public getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    .locals 3

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v2, "grpSpPr"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    return-object v0
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShapeId()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string/jumbo v2, "spPr"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-object v0
.end method

.method public getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    if-nez v0, :cond_0

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string/jumbo v2, "style"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    return-object v0
.end method

.method public final getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_shape:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object v1, p2, v0

    :cond_1
    return-object v1
.end method

.method public setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:nvPr"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetPh()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->unsetPh()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->addNewPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    iget p1, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;)V

    :goto_0
    return-void
.end method
