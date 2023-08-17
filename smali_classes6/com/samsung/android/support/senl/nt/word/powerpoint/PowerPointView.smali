.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;
.super Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
        "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
        "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILE_EXTENSION:Ljava/lang/String; = ".pptx"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PowerPointView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->setElementId(I)V

    :try_start_0
    const-string p1, "/ppt/media/image2.png"

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    const-string p3, "image/png"

    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to create content type"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->addAudioToHashMap()V

    return-void
.end method

.method private addAudioToHashMap()V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    const-string v1, "checkEnoughSpaceForVoice()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sound_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v6

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->addToVoiceHashMap(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->addToVoiceHashMap(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    move v2, v4

    goto :goto_2

    :cond_5
    return-void
.end method

.method private addToVoiceHashMap(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getAttachedFile()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BackgroundPPTController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BackgroundPPTController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    return-void
.end method

.method public addBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;IIILjava/lang/String;)V
    .locals 25

    move-object/from16 v12, p0

    move/from16 v13, p3

    move-object/from16 v0, p6

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    const-string v2, "addBodyText()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v3, v13}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v14

    if-eqz v2, :cond_7

    if-eqz v14, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content page :\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v2, p4

    move/from16 v3, p5

    if-ne v2, v3, :cond_0

    iget v2, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual {v12, v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->countLinesBefore(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v11, p1

    invoke-virtual {v11, v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v0

    if-eqz v15, :cond_7

    array-length v2, v15

    if-lez v2, :cond_7

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_0
    array-length v3, v15

    if-ge v2, v3, :cond_1

    aget-object v3, v15, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v3, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v3

    iput-object v3, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    :cond_3
    invoke-virtual/range {p2 .. p3}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v5

    invoke-virtual {v12, v4, v3, v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->createBodyText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;FZ)Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v17

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    move/from16 v18, v1

    move v10, v2

    :goto_2
    array-length v1, v15

    if-ge v10, v1, :cond_7

    if-eqz v10, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    move/from16 v19, v0

    aget-object v0, v15, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v8, v19, v0

    new-instance v20, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;

    iget-object v0, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    iget-object v0, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

    move-object/from16 v21, v0

    check-cast v21, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    const/16 v22, 0x1

    if-eqz v13, :cond_6

    if-lez v10, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v23, v16

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v23, v22

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v6, v17

    move/from16 v7, v19

    move/from16 v9, v18

    move/from16 v24, v10

    move-object/from16 v10, v21

    move/from16 v11, v23

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;IIILcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;Z)V

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->processItem()V

    aget-object v0, v15, v24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v19, v0

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v10, v24, 0x1

    move-object/from16 v11, p1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public addBodyTextContinuous(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;ILcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "I",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">.ContinueIndex;II)V"
        }
    .end annotation

    move-object/from16 v12, p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    const-string v1, "addBodyTextContinuous()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getStartIndex()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getEndIndex()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getHeight()F

    move-result v2

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v3, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move/from16 v4, p5

    move/from16 v5, p6

    if-ne v4, v5, :cond_1

    iget v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual {v12, v1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->countLinesBefore(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    :cond_1
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    array-length v1, v13

    if-lez v1, :cond_5

    const/4 v14, 0x0

    aget-object v1, v13, v14

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v1, v15

    goto :goto_0

    :cond_2
    move v1, v14

    :goto_0
    iget-object v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v4, :cond_3

    iget-object v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v4

    iput-object v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    :cond_3
    iget v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v12, v4, v2, v14}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->createBodyText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;FZ)Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v16

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    move v11, v1

    move/from16 v17, v3

    :goto_1
    array-length v1, v13

    if-ge v11, v1, :cond_5

    if-eqz v11, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    move/from16 v18, v0

    aget-object v0, v13, v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v8, v18, v0

    new-instance v19, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;

    iget-object v0, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    iget-object v0, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    iget-object v0, v12, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

    move-object v10, v0

    check-cast v10, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v6, v16

    move/from16 v7, v18

    move/from16 v9, v17

    move/from16 v21, v11

    move/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;IIILcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/BodyTextPPTController;->processItem()V

    aget-object v0, v13, v21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v18, v0

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v11, v21, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/HandwritingPPTController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/HandwritingPPTController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    return-void
.end method

.method public addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    sget-object p4, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    const-string v0, "addItemsOfPage()"

    invoke-static {p4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast p4, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p4}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/16 p4, 0xa

    if-eqz p5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-eq v0, p4, :cond_3

    :cond_2
    if-nez p5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_3
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v2, p4

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->processItem(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public addRecognizeText(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "I)V"
        }
    .end annotation

    return-void
.end method

.method public addVoiceDataToView(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 6

    sget-object p2, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    const-string v0, "addVoiceDataToView()"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoiceDataPPTController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-object v0, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoiceDataPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoiceDataPPTController;->processItem()V

    return-void
.end method

.method public createBodyText(Lorg/apache/poi/xslf/usermodel/XSLFSlide;FZ)Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 11

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v0, p3, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    int-to-float v1, v0

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sub-int v1, v0, p2

    add-int/lit8 v2, p2, 0x3c

    if-le v2, v0, :cond_0

    add-int/lit8 p2, p2, -0x14

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x14

    :goto_0
    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result p3

    int-to-double v3, p3

    int-to-double v5, p2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget p3, p2, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result p2

    sub-int/2addr p3, p2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginRight()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-double v7, p3

    int-to-double v9, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object p1
.end method

.method public bridge synthetic createDocument()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->createDocument()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    return-object v0
.end method

.method public createDocument()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .locals 4

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-direct {v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v1, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    new-instance v2, Lorg/apache/poi/java/awt/Dimension;

    iget v3, v1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    iget v1, v1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->setPageSize(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v0
.end method

.method public getContinueIndex(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;I)Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "I)",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">.ContinueIndex;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v2

    move v6, v3

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    int-to-float v9, v8

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    int-to-float v9, p2

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_3

    cmpl-float v4, v5, v2

    if-nez v4, :cond_1

    move v5, v7

    :cond_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineStartIndex(I)I

    move-result v4

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineEndIndex(I)I

    move-result v7

    if-ne v6, v3, :cond_2

    move v6, v4

    :cond_2
    iget v4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    add-int/lit8 v7, v7, 0x1

    move v4, v7

    goto :goto_1

    :cond_3
    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    iget v7, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    goto :goto_1

    :cond_4
    int-to-float v8, p2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;

    invoke-direct {p1, p0, v6, v4, v5}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;IIF)V

    return-object p1
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".pptx"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initHelper(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v1, Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

    return-void
.end method

.method public processItem(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 8

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v6, 0x7

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v6, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/LinkPPTController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/LinkPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/WebPPTController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/WebPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoicePPTController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/VoicePPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->processItem()V

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/ImagePPTController;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/ImagePPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->processItem()V

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-ne v0, v6, :cond_5

    new-instance v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/TextBoxPPTController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFTextBox;)V

    :goto_1
    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->processItem()V

    :cond_5
    :goto_2
    return-void
.end method

.method public updateMargin(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v1, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    mul-int/2addr p1, v1

    div-int/2addr p1, p2

    iget p2, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    if-ge p1, p2, :cond_0

    sub-int v1, p2, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginLeft:I

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginRight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginLeft:I

    iput p1, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginRight:I

    :goto_0
    return-void
.end method

.method public bridge synthetic writeToFile(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;->writeToFile(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/io/BufferedOutputStream;)V

    return-void
.end method

.method public writeToFile(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/io/BufferedOutputStream;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/POIXMLDocument;->write(Ljava/io/OutputStream;)V

    return-void
.end method
