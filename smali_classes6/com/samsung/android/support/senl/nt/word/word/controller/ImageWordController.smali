.class public Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;
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

    const-string p1, "ImageWordController"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processItem()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->getObjectSpanOfPage()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->getInlineImageRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    :cond_1
    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->calculateSize()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getLayoutType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    move v13, v4

    goto :goto_0

    :cond_2
    move v13, v2

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget-wide v4, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->left:D

    const-wide/high16 v6, -0x3fbb000000000000L    # -42.0

    add-double/2addr v4, v6

    iget-wide v6, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->top:D

    iget-wide v8, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    iget-wide v10, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    const/4 v12, 0x0

    iget-boolean v14, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    sget v15, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    const/16 v16, 0x0

    invoke-static/range {v3 .. v16}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->addImageToRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;DDDDZZZII)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v0

    iget-boolean v3, v1, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->removeInline(I)V

    :cond_3
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

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process Image, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
