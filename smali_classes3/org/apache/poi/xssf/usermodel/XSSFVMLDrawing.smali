.class public final Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field private static final COMMENT_SHAPE_TYPE_ID:Ljava/lang/String; = "_x0000_t202"

.field private static final QNAME_SHAPE:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final QNAME_SHAPE_LAYOUT:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final QNAME_SHAPE_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final ptrn_shapeId:Ljava/util/regex/Pattern;


# instance fields
.field private _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end field

.field private _qnames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private _shapeId:I

.field private _shapeTypeId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string/jumbo v1, "urn:schemas-microsoft-com:office:office"

    const-string/jumbo v2, "shapelayout"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_LAYOUT:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string/jumbo v1, "urn:schemas-microsoft-com:vml"

    const-string/jumbo v2, "shapetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string/jumbo v2, "shape"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE:Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v0, "_x0000_s(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newDrawing()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    const/16 p1, 0x400

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->read(Ljava/io/InputStream;)V

    return-void
.end method

.method private newDrawing()V
    .locals 3

    invoke-static {}, Lcom/microsoft/schemas/office/office/CTShapeLayout$Factory;->newInstance()Lcom/microsoft/schemas/office/office/CTShapeLayout;

    move-result-object v0

    sget-object v1, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/office/office/CTShapeLayout;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/office/office/CTShapeLayout;->addNewIdmap()Lcom/microsoft/schemas/office/office/CTIdMap;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/office/CTIdMap;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/office/CTIdMap;->setData(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_LAYOUT:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/microsoft/schemas/vml/CTShapetype$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTShapetype;

    move-result-object v0

    const-string v1, "_x0000_t202"

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShapetype;->setId(Ljava/lang/String;)V

    const-string v1, "21600,21600"

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShapetype;->setCoordsize(Ljava/lang/String;)V

    const/high16 v1, 0x434a0000    # 202.0f

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShapetype;->setSpt(F)V

    const-string v1, "m,l,21600r21600,l21600,xe"

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShapetype;->setPath2(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewStroke()Lcom/microsoft/schemas/vml/CTStroke;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->MITER:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTStroke;->setJoinstyle(Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTPath;->setGradientshapeok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    sget-object v2, Lcom/microsoft/schemas/office/office/STConnectType;->RECT:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlObject;

    instance-of v2, v1, Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/microsoft/schemas/vml/CTShape;

    invoke-interface {v1}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v3

    invoke-interface {v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->getObjectType()Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v4

    sget-object v5, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    if-ne v4, v5, :cond_0

    invoke-interface {v3, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->getRowArray(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-interface {v3, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->getColumnArray(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v4, p1, :cond_0

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    return-object v0
.end method

.method public newCommentShape()Lcom/microsoft/schemas/vml/CTShape;
    .locals 5

    invoke-static {}, Lcom/microsoft/schemas/vml/CTShape$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_x0000_s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setType(Ljava/lang/String;)V

    const-string v1, "position:absolute; visibility:hidden"

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    const-string v1, "#ffffe1"

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setFillcolor(Ljava/lang/String;)V

    sget-object v2, Lcom/microsoft/schemas/office/office/STInsetMode;->AUTO:Lcom/microsoft/schemas/office/office/STInsetMode$Enum;

    invoke-interface {v0, v2}, Lcom/microsoft/schemas/vml/CTShape;->setInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode$Enum;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewFill()Lcom/microsoft/schemas/vml/CTFill;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/microsoft/schemas/vml/CTFill;->setColor(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewShadow()Lcom/microsoft/schemas/vml/CTShadow;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShadow;->setOn(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    const-string v3, "black"

    invoke-interface {v1, v3}, Lcom/microsoft/schemas/vml/CTShadow;->setColor(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShadow;->setObscured(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/office/office/STConnectType;->NONE:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewTextbox()Lcom/microsoft/schemas/vml/CTTextbox;

    move-result-object v1

    const-string v2, "mso-direction-alt:auto"

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTTextbox;->setStyle(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewClientData()Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v1

    sget-object v2, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->setObjectType(Lcom/microsoft/schemas/office/excel/STObjectType$Enum;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewMoveWithCells()Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewSizeWithCells()Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewAnchor()Lorg/apache/xmlbeans/XmlString;

    move-result-object v2

    const-string v3, "1, 15, 0, 2, 3, 15, 3, 16"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewAutoFill()Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;

    move-result-object v2

    const-string v3, "False"

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewRow()Lorg/apache/xmlbeans/XmlInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlInteger;->setBigIntegerValue(Ljava/math/BigInteger;)V

    invoke-interface {v1}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewColumn()Lorg/apache/xmlbeans/XmlInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlInteger;->setBigIntegerValue(Ljava/math/BigInteger;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/apache/poi/util/ReplacingInputStream;

    const-string v1, "<br>"

    const-string v2, "<br/>"

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    const-string v0, "$this/xml/*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_LAYOUT:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v4, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v5}, Lcom/microsoft/schemas/office/office/CTShapeLayout$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/office/CTShapeLayout;

    move-result-object v2

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v4, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v3}, Lcom/microsoft/schemas/vml/CTShapetype$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/vml/CTShapetype;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShapetype;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v4, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v3}, Lcom/microsoft/schemas/vml/CTShape$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShape;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v3}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    sget-object v5, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v5}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    return-void

    :catch_1
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeCommentShape(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7

    invoke-static {}, Lorg/apache/xmlbeans/XmlObject$Factory;->newInstance()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string/jumbo v2, "xml"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v4

    sget-object v5, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v6, v4}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toStartDoc()V

    invoke-interface {v3, v1}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
