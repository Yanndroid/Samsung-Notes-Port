.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/LinkPPTController;
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
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    const-string p1, "LinkPPTController"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/LinkPPTController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v2, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v4, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v3

    invoke-static {v2, v0, v3, v7}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result v3

    add-int v5, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginTop()I

    move-result v3

    add-int v6, v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v7, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v8, v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    sget v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/PPTUtils;->createPicture(Lorg/apache/poi/xslf/usermodel/XSLFSlide;IIIII)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->getNewName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getOption()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/LinkPPTController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error add link : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
