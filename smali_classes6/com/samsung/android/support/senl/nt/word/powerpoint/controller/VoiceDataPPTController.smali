.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoiceDataPPTController;
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

    const-string p1, "VoiceDataPPT"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoiceDataPPTController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextSize()I

    move-result v2

    const/4 v0, 0x0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v3

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v7

    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v2

    const/high16 v9, 0x408c0000    # 4.375f

    mul-float/2addr v8, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v6, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v8, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v9

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v11

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v12

    move v7, v8

    move v8, v9

    move v9, v11

    move v11, v12

    invoke-static/range {v5 .. v11}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v5

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v7

    invoke-static {v6, v5, v7, v10}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    :goto_1
    move-object v10, v5

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v5

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v8, v7, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceHashMap:Ljava/util/HashMap;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->partHashMap:Ljava/util/HashMap;

    invoke-static {v6, v5, v8, v7}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/VoiceUtils;->writeFile(Ljava/lang/String;Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/HashMap;Ljava/util/HashMap;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget v6, v10, Landroid/graphics/RectF;->right:F

    iget v7, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v14, v6

    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    iget v7, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v7, v7, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    sub-int v12, v7, v14

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    add-int/lit8 v13, v3, 0xa

    sget v16, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    move v15, v6

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/PPTUtils;->createPicture(Lorg/apache/poi/xslf/usermodel/XSLFSlide;IIIII)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v9, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    const-wide/16 v11, 0x0

    invoke-static {v9, v5, v7, v11, v12}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/VoiceUtils;->addAudio(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;D)V

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-static {v5, v7}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/VoiceUtils;->addTimingInfo(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V

    add-int/2addr v3, v6

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceData:Ljava/util/HashMap;

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoiceDataPPTController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add voice recording into pptx error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method
