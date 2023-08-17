.class public Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/PictureShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 6

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr p0, v3

    int-to-long v4, p0

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object p0

    invoke-interface {p0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    return-object v0
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 10

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetCustDataLst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->unsetCustDataLst()V

    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, "declare namespace a14=\'http://schemas.microsoft.com/office/drawing/2010/main\' $this//a14:imgProps/a14:imgLayer"

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v7, "embed"

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v8, v6, v7}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8, v5}, Lorg/apache/xmlbeans/XmlCursor;->setAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Z

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    return-object v0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lorg/apache/xmlbeans/XmlObject;

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\'; declare namespace mc=\'http://schemas.openxmlformats.org/markup-compatibility/2006\' .//mc:Fallback/p:blipFill"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture$Factory;->parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlipId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getBlipLink()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getClipping()Lorg/apache/poi/java/awt/Insets;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getSrcRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/Insets;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getT()I

    move-result v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getL()I

    move-result v3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getB()I

    move-result v4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->getR()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/java/awt/Insets;-><init>(IIII)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    return-object v0
.end method

.method public getPictureLink()Ljava/net/URI;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public isExternalLinkedPicture()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method
