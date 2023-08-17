.class public Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _shapeId:I

.field private _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private _spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p1

    const-string p2, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:cNvPr"

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    iget v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    int-to-long v2, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    sget-object v0, Lorg/apache/poi/java/awt/Color;->black:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Lorg/apache/poi/java/awt/Color;)V

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    return-object v1
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object p1
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_shapeId:I

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v1
.end method
