.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MasterSheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/MasterSheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

.field private _master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;->getSldLayout()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    return-void
.end method


# virtual methods
.method public canDraw(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public copyLayout(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V
    .locals 4

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

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getFollowMasterGraphics()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getShowMasterSp()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sldLayout"

    return-object v0
.end method

.method public getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlideMaster was not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/apache/poi/xslf/usermodel/SlideLayout;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/SlideLayout;->values()[Lorg/apache/poi/xslf/usermodel/SlideLayout;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    return-object v0
.end method
