.class public Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final data:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->data:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    return-void
.end method

.method private processShape(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/DrawingTextBody;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetPh()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->getPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;

    invoke-direct {v4, v3}, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    :goto_1
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDrawingText()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/DrawingTextBody;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->data:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->processShape(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Ljava/util/List;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    invoke-direct {p0, v6, v1}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->processShape(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGraphicFrameArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    array-length v2, v0

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v5, v0, v3

    invoke-interface {v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "declare namespace pic=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' .//pic:tbl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    instance-of v7, v6, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v6
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_2
    instance-of v7, v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    if-eqz v7, :cond_1

    new-instance v7, Lorg/apache/poi/xslf/usermodel/DrawingTable;

    check-cast v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-direct {v7, v6}, Lorg/apache/poi/xslf/usermodel/DrawingTable;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;)V

    invoke-virtual {v7}, Lorg/apache/poi/xslf/usermodel/DrawingTable;->getRows()[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;->getCells()[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;

    move-result-object v9

    array-length v10, v9

    move v11, v4

    :goto_4
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    invoke-virtual {v12}, Lorg/apache/poi/xslf/usermodel/DrawingTableCell;->getTextBody()Lorg/apache/poi/xslf/usermodel/DrawingTextBody;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    return-object v1
.end method

.method public getText()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/DrawingParagraph;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFCommonSlideData;->getDrawingText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;->getParagraphs()[Lorg/apache/poi/xslf/usermodel/DrawingParagraph;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
