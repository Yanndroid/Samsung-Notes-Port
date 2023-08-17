.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDocXConverter$HandWritingConverter"

.field private static final VOICE_MEMO_TYPE:I = 0x17


# instance fields
.field private mNewDocumentPixel:F

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;-><init>()V

    return-void
.end method

.method private appendObjectToBottom(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->moveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V

    return-void
.end method

.method private convertBackgroundColor(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;I)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;",
            "Lcom/samsung/android/sdk/pen/document/SpenPageDoc;",
            "Landroid/graphics/RectF;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getBackgroundColor()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirstHandWritingColor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SDocXConverter$HandWritingConverter"

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handWritingBGColor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->updateMagicPenColor(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_4

    mul-int/lit8 v7, p4, 0x2

    const/4 v8, 0x1

    shr-int/lit8 v9, p4, 0x1

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    int-to-float v12, v7

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handWritingBGColor : Height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;

    invoke-direct {v12}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;-><init>()V

    invoke-virtual {v12, v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->setSolidColor(I)V

    new-instance v3, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;-><init>()V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->setSolidColor(I)V

    const-string v14, "NONE"

    move v15, v4

    :goto_0
    if-ge v15, v11, :cond_3

    mul-int v8, v15, v7

    int-to-float v8, v8

    add-float/2addr v8, v10

    add-int/lit8 v16, v15, 0x1

    mul-int v4, v16, v7

    int-to-float v4, v4

    add-float/2addr v4, v10

    move/from16 v17, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v18, v4, v7

    if-lez v18, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handWritingBGColor : shorten - "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    move-object v14, v4

    move v4, v7

    move/from16 v18, v10

    goto :goto_1

    :cond_1
    move/from16 v18, v10

    int-to-float v10, v9

    add-float/2addr v10, v4

    cmpl-float v7, v10, v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handWritingBGColor : merge left - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v11, v11, -0x1

    move-object v14, v4

    move v4, v7

    :cond_2
    :goto_1
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectShape(I)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v7

    new-instance v10, Landroid/graphics/RectF;

    move/from16 p4, v9

    iget v9, v2, Landroid/graphics/RectF;->left:F

    move/from16 v19, v11

    iget v11, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {v10, v9, v8, v11, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    invoke-virtual {v7, v10, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual {v7, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setFillEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;)V

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->setLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V

    const-string v8, "extra_key_converted_type"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataInt(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->appendObjectToBottom(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-interface {v6, v15, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v9

    move/from16 v15, v16

    move/from16 v7, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, p4

    goto/16 :goto_0

    :cond_3
    invoke-static {v5, v14}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private convertBackgroundImage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    invoke-interface {p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getDocCreator()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ISpenDocCreator;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ISpenDocCreator;->createCapturePage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->appendObjectList(Ljava/util/ArrayList;)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setVisibility(Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->appendObjectToBottom(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->close()V

    return-object v0
.end method

.method private convertObjectContainer(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    goto :goto_0

    :cond_2
    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjectContainer(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;)V

    goto :goto_0

    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->removeObject(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->appendObjectList(Ljava/util/ArrayList;)V

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_6
    return-void
.end method

.method private convertObjectLayoutType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getLayoutType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setLayoutType(I)V

    :cond_0
    return-void
.end method

.method private convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v2, 0x3fa66666    # 1.3f

    div-float/2addr v1, v2

    const v2, 0x3faccccd    # 1.35f

    mul-float/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    div-float/2addr v3, v4

    new-instance v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result v7

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->getLineSpacingType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->getLineSpacing()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    div-float/2addr v4, v5

    new-instance v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v3

    invoke-direct {v5, v6, v3, v0, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;-><init>(IIIF)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getLeftMargin()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTopMargin()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getRightMargin()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getBottomMargin()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    div-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    return-void
.end method

.method private convertObjects()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjectLayoutType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjectContainer(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;)V

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private convertRect(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;)Landroid/graphics/RectF;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->hasBackgroundImage()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getObjectRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getObjectRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getObjectRect()Landroid/graphics/RectF;

    move-result-object p1

    iput v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float p1, p2, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".spi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SDocXConverter$HandWritingConverter"

    const-string v0, "convertRect : .spi case !!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/BaseImageUtils;->getImageRatio(Ljava/lang/String;)F

    move-result p1

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v2, v2, p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/constructor/AndroidInstanceConstructor;->makeRectF(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private init(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;)Z
    .locals 1

    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getOldObjectMaxWidth()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getItemHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->createNoteDoc(II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t add ContentHandWriting : failed note doc creation : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDocXConverter$HandWritingConverter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private updateMagicPenColor(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getColor()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr v2, p2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setColor(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 7

    const-string v0, "SDocXConverter$HandWritingConverter"

    const-string v1, "convert content"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->init(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mNewDocumentPixel:F

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertObjects()V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertRect(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertBackgroundImage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v4

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getHeight()I

    move-result v6

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->convertBackgroundColor(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;I)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-interface {v1, v6, v3, v4, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/util/List;)V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->invertBackgroundColor(Z)V

    :cond_3
    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertContent, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p2

    :cond_4
    :goto_1
    const-string p1, "can\'t add ContentHandWriting : not file"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/HandWritingConverter;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-void
.end method
