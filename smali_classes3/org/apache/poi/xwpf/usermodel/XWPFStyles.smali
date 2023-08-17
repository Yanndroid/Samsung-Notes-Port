.class public Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

.field private defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

.field private defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

.field private latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

.field private listStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    return-void
.end method

.method private getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getBasisStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getLinkStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getNextStyleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-object p2
.end method


# virtual methods
.method public addStyle(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->addNewStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->sizeOfStyleArray()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->setStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V

    return-void
.end method

.method public commit()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "styles"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v2, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to write out styles that were never read in!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureDocDefaults()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->isSetDocDefaults()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->addNewDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetPPrDefault()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->addNewPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetRPrDefault()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->addNewRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->isSetPPr()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->isSetRPr()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    :cond_4
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    return-void
.end method

.method public getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetLang()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultParagraphStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    return-object v0
.end method

.method public getDefaultRunStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    return-object v0
.end method

.method public getLatentStyles()Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

    return-object v0
.end method

.method public getNumberOfStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getStyleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStyleWithSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->hasSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onDocumentRead()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->getStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getLatentStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lorg/apache/poi/POIXMLException;

    const-string v3, "Unable to read styles"

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public setDefaultFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->setRFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V

    return-void
.end method

.method public setEastAsia(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setEastAsia(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpellingLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setVal(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setBidi(Ljava/lang/Object;)V

    return-void
.end method

.method public setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V
    .locals 5

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-direct {v4, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->isSetDocDefaults()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetRPrDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetPPrDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    :cond_2
    return-void
.end method

.method public styleExist(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getStyleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
