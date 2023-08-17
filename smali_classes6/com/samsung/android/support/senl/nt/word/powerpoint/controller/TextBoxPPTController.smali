.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;
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
.field public textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    array-length v4, v3

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v5, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v7, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v8

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v9

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v11

    invoke-static/range {v5 .. v11}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v6

    invoke-static {v5, v4, v6, v10}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-double v7, v5

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-double v9, v5

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    float-to-double v11, v5

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v4

    float-to-double v13, v5

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    new-instance v5, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setRotation(D)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    if-ne v4, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    sget-object v4, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->MIDDLE:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    invoke-virtual {v1, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    :cond_3
    new-instance v1, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v5, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-direct {v1, v5, v0, v4}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_7

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;->textBox:Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->addNewTextParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpan()Z

    move-result v7

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6, v4, v5}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addRunToParagraph(Ljava/lang/Object;II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v10, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v10, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpenTextParagraph()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v1, v0, v6, v7}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addSpenTextParagraph(ILorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Z)V

    :cond_6
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
