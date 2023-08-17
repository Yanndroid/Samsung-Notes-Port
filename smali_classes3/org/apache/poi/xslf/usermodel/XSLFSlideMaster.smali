.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
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
.field private _layouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

.field private _theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

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

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->getSldMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    return-void
.end method

.method private getLayouts()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

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

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    return-object v0
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

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    return-object p1
.end method

.method public getLayout(Lorg/apache/poi/xslf/usermodel/SlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getType()Lorg/apache/poi/xslf/usermodel/SlideLayout;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sldMaster"

    return-object v0
.end method

.method public getSlideLayouts()[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    return-object v0
.end method

.method public getTextProperties(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getTxStyles()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getOtherStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getBodyStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getTitleStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->initColorMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    return-object v0
.end method
