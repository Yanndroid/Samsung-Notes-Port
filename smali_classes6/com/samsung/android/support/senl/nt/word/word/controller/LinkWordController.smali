.class public Lcom/samsung/android/support/senl/nt/word/word/controller/LinkWordController;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LinkWordController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/controller/LinkWordController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/word/WordView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->getObjectRectF()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectSpanOfPage()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->getInlineImageRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    const-wide/high16 v6, -0x3fbb000000000000L    # -42.0

    add-double v5, v4, v6

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-double v7, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v9, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v11, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-boolean v15, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    sget v16, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    const/16 v17, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v17}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->addImageToRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;DDDDZZZII)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v0

    sget v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->getNewName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->imageHashMap:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v7, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    sget-object v8, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v8}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v2

    invoke-interface {v2, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->setAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;)V

    iget-boolean v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    if-nez v2, :cond_4

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->removeInline(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/word/word/controller/LinkWordController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process Link, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
