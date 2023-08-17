.class public final Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocumentPart;",
        "Lorg/apache/poi/ss/usermodel/Drawing<",
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field public static final NAMESPACE_A:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final NAMESPACE_C:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"


# instance fields
.field private drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

.field private numOfGraphicFrames:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlCursor;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;)V"
        }
    .end annotation

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->hasOleLink(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    if-eqz v1, :cond_7

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    if-eqz v1, :cond_8

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getAnchorFromParent(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    instance-of v0, v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v0, :cond_c

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "trying to parse AlternateContent, this unlinks the returned Shapes from the underlying xml content, so those shapes can\'t be used to modify the drawing, i.e. modifications will be ignored!"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :try_start_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :cond_a
    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unable to parse CTDrawing in alternate content."

    aput-object v7, v6, v4

    aput-object v2, v6, v1

    invoke-virtual {v5, v3, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_a

    :try_start_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :cond_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    throw p2

    :cond_c
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_d
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_1
    move-exception p2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p2
.end method

.method private createGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    iget-wide v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    invoke-direct {v3, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)V

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setId(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Diagramm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setName(Ljava/lang/String;)V

    return-object v3
.end method

.method private createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->addNewTwoCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing$1;->$SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ONE_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->TWO_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ABSOLUTE:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setEditAs(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;)V

    return-object v0
.end method

.method private createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 9

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidthInPixels(I)F

    move-result v7

    float-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v7

    add-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    double-to-int v1, v5

    invoke-static {v1}, Lorg/apache/poi/util/Units;->pixelToEMU(I)I

    move-result v1

    int-to-long v1, v1

    double-to-int v3, v3

    invoke-static {v3}, Lorg/apache/poi/util/Units;->pixelToEMU(I)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v1, v6

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    invoke-interface {v5, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v3, v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result p1

    int-to-long v1, p1

    add-long/2addr v3, v1

    invoke-interface {v5, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-object v0
.end method

.method private getAnchorFromParent(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 3

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    if-eqz v0, :cond_3

    instance-of p1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    if-eqz p1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    goto :goto_1

    :cond_1
    instance-of p1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    if-eqz p1, :cond_2

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    goto :goto_1

    :cond_2
    instance-of p1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    if-eqz p1, :cond_3

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method private hasOleLink(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v1, 0x0

    const-string/jumbo v2, "uri"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v1, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//a:extLst/a:ext"

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{63B3BB69-23CF-44E3-9099-C40C66FF867C}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0
.end method

.method private static newDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    return-object v0
.end method

.method private newShapeId()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfAbsoluteAnchorArray()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfOneCellAnchorArray()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfTwoCellAnchorArray()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    return-object p1
.end method

.method public commit()V
    .locals 5

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wsDr"

    const-string/jumbo v4, "xdr"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v2, v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public bridge synthetic createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p1

    return-object p1
.end method

.method public createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 10

    new-instance v9, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public bridge synthetic createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 8

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCommentsTable(Z)Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newCommentShape()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v1

    div-int/lit16 v1, v1, 0x2535

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v3

    div-int/lit16 v3, v3, 0x2535

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v4

    div-int/lit16 v4, v4, 0x2535

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result v5

    div-int/lit16 v5, v5, 0x2535

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->setAnchorArray(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p1

    invoke-direct {v1, v3, p1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->newComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v1

    invoke-direct {p1, v2, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple cell comments in one cell are not allowed, cell: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Chart;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object p1

    return-object p1
.end method

.method public createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object p1

    return-object p1
.end method

.method public createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setChart(Lorg/apache/poi/xssf/usermodel/XSSFChart;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getCTGraphicalObjectFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    return-object v1
.end method

.method public createConnector(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFConnector;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v1
.end method

.method public createGroup(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setOff(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setChExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v1
.end method

.method public bridge synthetic createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-result-object p1

    return-object p1
.end method

.method public createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v4

    add-long/2addr v2, v4

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/xl/embeddings/oleObject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".bin"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-virtual {v1, p2, v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-virtual {p3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p3

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    invoke-virtual {v1, p3, v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v6, p3, v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p3

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetOleObjects()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->addNewOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v0

    const-string v4, "Package"

    invoke-interface {v0, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setProgId(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setShapeId(J)V

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setId(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v0, "objectPr"

    const-string v4, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-interface {p2, v0, v4}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    invoke-interface {p2, v1, v5, v0}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "defaultSize"

    const-string v1, "0"

    invoke-interface {p2, v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-interface {p2, v0, v4}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "moveWithCells"

    const-string v1, "1"

    invoke-interface {p2, v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v5, "from"

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/XmlCursor;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string/jumbo v5, "to"

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/XmlCursor;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object p2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p3

    invoke-interface {p3, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string/jumbo v1, "spid"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_x0000_s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->setAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Z

    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    new-instance p3, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-direct {p3, p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iput-object p1, p3, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object p1

    return-object p1
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object p1

    return-object p1
.end method

.method public createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 4

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    iput-object p1, v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    return-object v0
.end method

.method public createSimpleShape(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iput-object p1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v0
.end method

.method public createTextbox(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iput-object p1, v0, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v0
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    return-object v0
.end method

.method public getCharts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFChart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0
.end method

.method public getShapes(Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getCTGroupShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Lorg/apache/xmlbeans/XmlCursor;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
