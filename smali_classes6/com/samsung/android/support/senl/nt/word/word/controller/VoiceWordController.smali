.class public Lcom/samsung/android/support/senl/nt/word/word/controller/VoiceWordController;
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


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V

    const-string p1, "VoiceWordController"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/VoiceWordController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->getObjectRectF()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

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
    move-object v4, v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v5, v2

    const-wide/high16 v7, -0x3fbb000000000000L    # -42.0

    add-double/2addr v5, v7

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v7, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v9, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v11, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-boolean v15, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    sget v16, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    const/16 v17, 0x0

    invoke-static/range {v4 .. v17}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->addImageToRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;DDDDZZZII)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v0

    iget-boolean v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    if-nez v2, :cond_2

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->removeInline(I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->imageHashMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/word/controller/VoiceWordController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process Voice, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
