.class public Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextRun;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
    }
.end annotation


# instance fields
.field private final _p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

.field private final _r:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    instance-of p2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported text run of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    move-result p0

    return p0
.end method

.method private fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getDefaultParagraphStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v4

    :cond_3
    return v2
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontFamily(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBold(Z)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setItalic(Z)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isUnderlined()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isUnderlined()Z

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setUnderlined(Z)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isStrikethrough()Z

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isStrikethrough()Z

    move-result v0

    if-eq p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setStrikethrough(Z)V

    :cond_6
    return-void
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public getCharacterSpacing()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$3;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slidenum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;IZ)V

    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getFontScale()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$2;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    return-object v0
.end method

.method public getPitchAndFamily()B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    :cond_1
    invoke-static {v0, v1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result v0

    return v0
.end method

.method public getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRawText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_1

    const-string v0, "\n"

    return-object v0

    :cond_1
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderableText()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "slidenum"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_2

    const-string v0, "\n"

    return-object v0

    :cond_2
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->NONE:Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    :goto_0
    return-object v0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public isBold()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$8;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isItalic()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$9;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isStrikethrough()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$4;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isSubscript()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$6;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isSuperscript()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$5;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isUnderlined()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$10;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_p:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->fetchCharacterProperty(Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setBaselineOffset(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    double-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBaseline(I)V

    return-void
.end method

.method public setBold(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    return-void
.end method

.method public setCharacterSpacing(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSpc()V

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSpc(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontColor(Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/java/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParentParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Lorg/apache/poi/java/awt/Color;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Currently only SolidPaint is supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->copyFrom(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V

    return-void
.end method

.method public setFontSize(Ljava/lang/Double;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSz()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int p1, v3

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum font size is 1pt but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setItalic(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->SNG_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    return-void
.end method

.method public setSubscript(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/high16 v0, -0x3fc7000000000000L    # -25.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBaselineOffset(D)V

    return-void
.end method

.method public setSuperscript(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBaselineOffset(D)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->_r:Lorg/apache/xmlbeans/XmlObject;

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->setT(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUnderlined(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
