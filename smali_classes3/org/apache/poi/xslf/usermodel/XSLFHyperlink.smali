.class public Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Hyperlink<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field public final _link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

.field public final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-void
.end method

.method private linkToExternal(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetAction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetAction()V

    :cond_1
    return-void
.end method

.method private linkToRelativeSlide(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ppaction://hlinkshowjump?jump="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v0

    return v0
.end method

.method public getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "ppaction://hlinksldjump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ppaction://hlinkshowjump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const-string v0, "mailto:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0

    :cond_3
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0

    :cond_4
    :goto_1
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-object v0
.end method

.method public linkToEmail(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public linkToFirstSlide()V
    .locals 1

    const-string v0, "firstslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToLastSlide()V
    .locals 1

    const-string v0, "lastslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToNextSlide()V
    .locals 1

    const-string v0, "nextslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToPreviousSlide()V
    .locals 1

    const-string v0, "previousslide"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToRelativeSlide(Ljava/lang/String;)V

    return-void
.end method

.method public linkToSlide(Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    const-string v0, "ppaction://hlinksldjump"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method public linkToUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToExternal(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->linkToUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;->_link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    return-void
.end method
