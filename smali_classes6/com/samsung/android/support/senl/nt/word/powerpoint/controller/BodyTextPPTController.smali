.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;
.super Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController<",
        "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
        ">;"
    }
.end annotation


# instance fields
.field public endContent:I

.field public helper:Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

.field public indexLine:I

.field public isNewLine:Z

.field public startContent:I

.field public textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;IIILcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;Z)V
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

    move-object v0, p6

    iput-object v0, v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move v0, p7

    iput v0, v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->startContent:I

    move/from16 v0, p8

    iput v0, v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->endContent:I

    move/from16 v0, p9

    iput v0, v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->indexLine:I

    move-object/from16 v0, p10

    iput-object v0, v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->helper:Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    move/from16 v0, p11

    iput-boolean v0, v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->isNewLine:Z

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->helper:Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpan()Z

    move-result v2

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->helper:Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->startContent:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->endContent:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addRunToParagraph(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v5, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->startContent:I

    iget v6, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->endContent:I

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\ufffc"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/UnicodeUtils;->removeUnicodeFromText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->helper:Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpenTextParagraph()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->helper:Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->indexLine:I

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->isNewLine:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addSpenTextParagraph(ILorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Z)V

    :cond_3
    return-void
.end method
