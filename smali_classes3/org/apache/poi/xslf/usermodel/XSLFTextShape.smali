.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/TextShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p2

    array-length v0, p2

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v1, p2, p1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic appendText(Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/TextRun;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->appendText(Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object p1

    return-object p1
.end method

.method public appendText(Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    move-object v5, v1

    move-object v6, v5

    move p2, v2

    goto :goto_0

    :cond_1
    xor-int/2addr p2, v3

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v6, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    :cond_3
    :goto_0
    const-string v4, "\\r\\n?|\\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_a

    aget-object v8, p1, v7

    if-nez p2, :cond_6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_4

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object p2

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->setPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_5
    move-object v1, p2

    :cond_6
    const-string p2, "[\u000b]"

    invoke-virtual {v8, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v8, p2

    move v9, v2

    move v10, v3

    :goto_2
    if-ge v9, v8, :cond_9

    aget-object v0, p2, v9

    if-nez v10, :cond_7

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addLineBreak()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    :cond_7
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    if-eqz v6, :cond_8

    invoke-virtual {v10, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object v0, v10

    move v10, v2

    goto :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move p2, v2

    goto :goto_1

    :cond_a
    return-object v0
.end method

.method public clearText()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    return-void
.end method

.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setBodyPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->unsetLstStyle()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setLstStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getWordWrap()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getWordWrap()Z

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setWordWrap(Z)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getLeftInset()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getLeftInset()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setLeftInset(D)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getRightInset()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getRightInset()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setRightInset(D)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTopInset()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTopInset()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setTopInset(D)V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getBottomInset()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getBottomInset()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setBottomInset(D)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->clearText()V

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->copy(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method public getBottomInset()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

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

.method public getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 10

    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTopInset()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getLeftInset()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getBottomInset()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getRightInset()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    return-object v9
.end method

.method public getLeftInset()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v0, 0x401ccccccccccccdL    # 7.2

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

.method public getRightInset()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v0, 0x401ccccccccccccdL    # 7.2

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

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAutofit()Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NONE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->SHAPE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v0
.end method

.method public abstract getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    return-object v0
.end method

.method public getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->STACKED:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getTextHeight()D
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextHeight(Lorg/apache/poi/java/awt/Graphics2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextHeight(Lorg/apache/poi/java/awt/Graphics2D;)D
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Lorg/apache/poi/java/awt/Graphics2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getTextPlaceholder()Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v0

    :cond_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v0
.end method

.method public getTextRotation()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getRot()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    return-object v0
.end method

.method public getTopInset()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$6;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

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

.method public getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    :goto_0
    return-object v0
.end method

.method public getWordWrap()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$7;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

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

.method public isHorizontalCentered()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

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

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-object v0
.end method

.method public resizeToFitText()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->resizeToFitText(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public resizeToFitText(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextHeight(Lorg/apache/poi/java/awt/Graphics2D;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object p1

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    iget-wide v10, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v0, v10

    iget-wide v10, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v10, v0

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->setRect(DDDD)V

    invoke-virtual {p0, v9}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v9

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "Anchor of the shape was not set."

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBottomInset(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetBIns()V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setBIns(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHorizontalCentered(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchorCtr()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchorCtr()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchorCtr(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInsets(Lorg/apache/poi/sl/usermodel/Insets2D;)V
    .locals 2

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setTopInset(D)V

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setLeftInset(D)V

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setBottomInset(D)V

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setRightInset(D)V

    return-void
.end method

.method public setLeftInset(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetLIns()V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setLIns(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method

.method public setRightInset(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetRIns()V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRIns(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextRun;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setText(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->removeP(I)V

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->clearButKeepProperties()V

    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->appendText(Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object p1

    return-object p1
.end method

.method public setTextAutofit(Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetSpAutoFit()V

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNoAutofit()V

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNormAutofit()V

    :cond_2
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextAutofit:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;

    :cond_6
    :goto_0
    return-void
.end method

.method public setTextDirection(Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVert()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetVert()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextPlaceholder(Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    sget-object p1, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/apache/poi/sl/usermodel/Placeholder;->CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/poi/sl/usermodel/Placeholder;->CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setTextRotation(Ljava/lang/Double;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v1, v3

    double-to-int p1, v1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRot(I)V

    :cond_0
    return-void
.end method

.method public setTopInset(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetTIns()V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setTIns(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;)V

    :cond_1
    return-void
.end method
