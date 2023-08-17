.class public Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextParagraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private final _shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    instance-of v0, p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-direct {v1, p2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {v1, p2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p2
.end method

.method private static doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getDefaultParagraphStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_4

    return v4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v2

    :cond_5
    if-eqz v2, :cond_6

    return v4

    :cond_6
    return v3
.end method


# virtual methods
.method public addLineBreak()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 5

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    const-string v2, "en-US"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTabStop(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(I)V

    return-void
.end method

.method public clearButKeepProperties()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v1

    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 7

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetPPr()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v2

    :goto_0
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result v2

    :goto_1
    if-lez v2, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v2

    :goto_2
    if-lez v2, :cond_5

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getRArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v5, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->copy(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)V

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    :cond_a
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontSize(D)V

    :cond_b
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setLeftMargin(Ljava/lang/Double;)V

    :cond_c
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setIndent(Ljava/lang/Double;)V

    :cond_d
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpaceAfter(Ljava/lang/Double;)V

    :cond_e
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpaceBefore(Ljava/lang/Double;)V

    :cond_f
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setLineSpacing(Ljava/lang/Double;)V

    :cond_10
    return-void
.end method

.method public getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object v0
.end method

.method public getAutoNumberingStartAt()Ljava/lang/Integer;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$8;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$4;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$3;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;ILorg/apache/poi/xslf/usermodel/XSLFTheme;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Color;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/java/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBulletFontSize()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$6;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public getDefaultFontFamily()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Arial"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultFontSize()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 8

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v1

    :goto_0
    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const-string v1, "bodyStyle"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "titleStyle"

    goto :goto_1

    :cond_2
    const-string v1, "otherStyle"

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    const-string/jumbo v5, "txStyles"

    invoke-interface {v4, v0, v5}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "notesStyle"

    invoke-interface {v4, v0, v5}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    :goto_3
    if-ltz v2, :cond_6

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    const-string v5, "http://schemas.openxmlformats.org/drawingml/2006/main"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lvl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "pPr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v0

    :cond_5
    :try_start_1
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultTabSize()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$12;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$12;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getFontAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$2;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object v0
.end method

.method public getIndent()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$9;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getIndentLevel()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getLeftMargin()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$10;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getLineSpacing()Ljava/lang/Double;
    .locals 8

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$14;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$14;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getLnSpcReduction()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    return-object v0
.end method

.method public getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object v0
.end method

.method public getRenderableText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRenderableText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightMargin()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$11;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$11;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getSpaceAfter()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$16;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$16;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getSpaceBefore()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$15;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$15;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getTabStop(I)D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$13;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;II)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object v0
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    return-object v0
.end method

.method public isBullet()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$17;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$17;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;)Z

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

.method public isHeaderOrFooter()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public setBullet(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string v1, "Arial"

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p1

    const-string/jumbo v0, "\u2022"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    :cond_8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    :cond_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    :cond_c
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    :cond_d
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    :goto_1
    return-void
.end method

.method public setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v0

    :goto_1
    iget p1, p1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start Number must be greater or equal that 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBulletCharacter(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v0

    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFontColor(Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/java/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    :goto_2
    const/4 v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getRed()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getGreen()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Currently XSLF only supports SolidPaint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBulletFontSize(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    :goto_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v1

    :goto_2
    neg-double p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_4
    :goto_3
    return-void
.end method

.method public varargs setBulletStyle([Ljava/lang/Object;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontSize(D)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lorg/apache/poi/java/awt/Color;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/apache/poi/java/awt/Color;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/java/awt/Color;)V

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public setFontAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIndent(Ljava/lang/Double;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setIndentLevel(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    return-void
.end method

.method public setLeftMargin(Ljava/lang/Double;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineSpacing(Ljava/lang/Double;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLnSpc()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetLnSpc()V

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLnSpc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPts()V

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPct()V

    :cond_7
    :goto_4
    return-void
.end method

.method public setRightMargin(Ljava/lang/Double;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setSpaceAfter(Ljava/lang/Double;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcAft()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcAft()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setSpaceBefore(Ljava/lang/Double;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcBef()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcBef()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    :cond_2
    :goto_1
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

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
