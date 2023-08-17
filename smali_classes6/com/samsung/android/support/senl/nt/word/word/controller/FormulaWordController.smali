.class public Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;
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
.field private final TAG:Ljava/lang/String;

.field private indexTextbox:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    const-string p1, "FormulaWordController"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;->TAG:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;->indexTextbox:I

    return-void
.end method


# virtual methods
.method public getOMML(Lcom/samsung/android/support/senl/nt/word/word/WordView;Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
    .locals 2

    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p2, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/word/WordView;->transformer:Ljavax/xml/transform/Transformer;

    invoke-virtual {v1, p2, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/StringWriter;->close()V

    invoke-static {p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath$Factory;->parse(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;->getOMathArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object p1

    return-object p1
.end method

.method public processItem()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;->getLatex()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v9

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v4, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v5

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v6, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v7

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v8

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v3

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v5

    invoke-static {v4, v3, v5, v9}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    :goto_0
    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {}, Lcom/microsoft/schemas/vml/CTGroup$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTGroup;

    move-result-object v5

    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v8

    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-double v10, v7

    invoke-static {v10, v11}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v10

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v12, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v12

    float-to-double v12, v7

    invoke-static {v12, v13}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v12

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v3

    float-to-double v14, v7

    invoke-static {v14, v15}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v7, v5

    invoke-static/range {v7 .. v18}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->createCTTxbxContent(Lcom/microsoft/schemas/vml/CTGroup;DDDDFZZ)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;->getLatexResult()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "\\color{blue}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "\\color{blue}{"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v10, 0x24

    invoke-virtual {v0, v8, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v10, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v11

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-virtual {v10, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingAfterLines(I)V

    invoke-virtual {v10, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBeforeLines(I)V

    new-instance v11, Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-direct {v11}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>()V

    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object v11

    new-instance v12, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v11, v12}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z

    invoke-virtual {v11}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    check-cast v11, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    invoke-virtual {v1, v11, v0}, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;->getOMML(Lcom/samsung/android/support/senl/nt/word/word/WordView;Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    move-result-object v0

    invoke-virtual {v10}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v10

    new-array v11, v6, [Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    aput-object v0, v11, v8

    invoke-interface {v10, v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setOMathArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parser latex error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture$Factory;->parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v0

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    iget v3, v1, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;->indexTextbox:I

    invoke-interface {v2, v3, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->setPictArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add text box latex error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v2, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    :cond_6
    :goto_4
    return-void
.end method
