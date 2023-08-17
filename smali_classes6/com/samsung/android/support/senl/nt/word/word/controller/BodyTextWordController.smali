.class public Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;
.super Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private endPosition:I

.field private helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

.field private isNewLine:Z

.field private line:I

.field private startPosition:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;IIILcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;Z)V
    .locals 8

    move-object v7, p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    move v0, p7

    iput v0, v7, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->startPosition:I

    move/from16 v0, p8

    iput v0, v7, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->endPosition:I

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    move v0, p6

    iput v0, v7, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->line:I

    move/from16 v0, p10

    iput-boolean v0, v7, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->isNewLine:Z

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpan()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->startPosition:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->endPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addRunToParagraph(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->startPosition:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->endPosition:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\ufffc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/UnicodeUtils;->removeUnicodeFromText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getFontSize(I)D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->setFontSize(Lorg/apache/poi/xwpf/usermodel/XWPFRun;D)V

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpenTextParagraph()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->helper:Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->line:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->isNewLine:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->addSpenTextParagraph(ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    :cond_3
    return-void
.end method
