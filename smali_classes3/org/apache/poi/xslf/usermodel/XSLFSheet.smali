.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/Sheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocumentPart;",
        "Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/Sheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

.field private _drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

.field private _placeholderByIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
            ">;"
        }
    .end annotation
.end field

.field private _placeholderByTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
            ">;"
        }
    .end annotation
.end field

.field private _placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextShape;",
            ">;"
        }
    .end annotation
.end field

.field private _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation
.end field

.field private _spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public static buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-direct {v2, v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    invoke-direct {v2, v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-direct {v2, v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    goto :goto_2

    :cond_3
    instance-of v2, v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v1, v1, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v1, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    const-string v1, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string v2, "Choice"

    invoke-interface {p0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape$Factory;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "unparsable alternate content"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    :cond_6
    :goto_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method private getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    return-object v0
.end method

.method private initDrawingAndShapes()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Adding a shape from a different container is not supported - create it from scratch witht XSLFSheet.create* methods"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v7, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v7

    :goto_1
    invoke-interface {v7, v6}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    :cond_0
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v7, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v7

    goto :goto_1

    :cond_1
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v7, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v7

    goto :goto_1

    :cond_2
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v7, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v7

    goto :goto_1

    :cond_3
    instance-of v7, v6, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v7, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v7

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    add-int v3, v1, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public canDraw(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final commit()V
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getRootElementName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    return-object v0
.end method

.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    return-object v0
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    return-object v0
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    return-object v0
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p1

    return-object p1
.end method

.method public createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize()V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pictureData needs to be of type XSLFPictureData"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createTable(II)Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object p1

    return-object p1
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->addRow()Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    move-result-object v3

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->addCell()Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numRows and numCols must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    return-object v0
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public draw(Lorg/apache/poi/java/awt/Graphics2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Lorg/apache/poi/java/awt/Graphics2D;)V

    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommonSlideData()Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    return-object v0
.end method

.method public getFollowMasterGraphics()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getIdx()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderById(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPlaceholder(I)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object p1
.end method

.method public getPlaceholderById(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object p1
.end method

.method public getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object p1
.end method

.method public getPlaceholders()[Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object v0
.end method

.method public abstract getRootElementName()Ljava/lang/String;
.end method

.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    return-object v0
.end method

.method public getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlideShow was not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:spTree"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CTGroupShape was not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    return-object v0
.end method

.method public getTextShapeByType(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getXmlObject()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v3, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public initPlaceholders()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getIdx()J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    return-void
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result p1

    return p1
.end method

.method public removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpList()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getCxnSpList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGraphicFrameList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported shape: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_commonSlideData:Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;

    :goto_0
    return-void
.end method
