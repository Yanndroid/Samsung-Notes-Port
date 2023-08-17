.class public Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;
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


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTextboxIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextBoxWordController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    iput p5, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;->mTextboxIndex:I

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 30

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "\n"

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    array-length v2, v9

    if-lez v2, :cond_6

    iget-object v2, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v15

    iget-object v2, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v3, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v3, :cond_2

    iget v10, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    iget-object v2, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v11

    iget-object v2, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v12, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v13

    iget-object v2, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v14

    iget-object v2, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v16

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v2

    iget-object v4, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v4

    invoke-static {v3, v2, v4, v15}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    :goto_0
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    iget v6, v2, Landroid/graphics/RectF;->top:F

    float-to-double v10, v6

    iget v12, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v3

    float-to-double v12, v12

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v6

    float-to-double v2, v2

    iget-object v6, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v6, v1, :cond_3

    move/from16 v27, v15

    goto :goto_1

    :cond_3
    move/from16 v27, v14

    :goto_1
    iget-object v1, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {}, Lcom/microsoft/schemas/vml/CTGroup$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTGroup;

    move-result-object v29

    const-wide/high16 v16, -0x3fbb000000000000L    # -42.0

    add-double v4, v4, v16

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v17

    const-wide/high16 v4, -0x3fce000000000000L    # -18.0

    add-double/2addr v10, v4

    invoke-static {v10, v11}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v19

    invoke-static {v12, v13}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v21

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v23

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v16, v29

    invoke-static/range {v16 .. v27}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->createCTTxbxContent(Lcom/microsoft/schemas/vml/CTGroup;DDDDFZZ)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    iget-object v1, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;

    invoke-direct {v11, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    move v0, v15

    move v12, v0

    :goto_2
    array-length v1, v9

    if-ge v0, v1, :cond_5

    new-instance v13, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-virtual/range {v28 .. v28}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    const-wide/16 v1, 0x0

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AT_LEAST:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    invoke-virtual {v13, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V

    invoke-virtual {v13, v15}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBefore(I)V

    invoke-virtual {v13, v15}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingAfter(I)V

    aget-object v1, v9, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v12, v1

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v8

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;->processLine(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;Ljava/lang/String;II)V

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpenTextParagraph()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11, v0, v13, v14}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->addSpenTextParagraph(ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    :cond_4
    aget-object v1, v9, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v14

    add-int/2addr v12, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-interface/range {v29 .. v29}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture$Factory;->parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    iget v2, v7, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;->mTextboxIndex:I

    invoke-interface {v1, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->setPictArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error text box : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, v7, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v1, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    :cond_6
    return-void
.end method

.method public processLine(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;Ljava/lang/String;II)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p4, p5}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addRunToParagraph(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p1

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
