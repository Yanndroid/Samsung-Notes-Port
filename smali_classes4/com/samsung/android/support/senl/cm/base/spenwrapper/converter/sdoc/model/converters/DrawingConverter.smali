.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/DrawingConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDocXConverter$DrawingConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/DrawingConverter;->convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 18

    const-string v1, "SDocXConverter$DrawingConverter"

    const-string v0, "convert content"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->getAttachedFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->getHorizontalSpace()I

    move-result v7

    int-to-float v7, v7

    invoke-interface {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getDPI()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-interface {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getWidth()I

    move-result v8

    invoke-interface {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getHeight()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getDocCreator()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ISpenDocCreator;

    move-result-object v10

    invoke-interface {v10, v8, v9, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ISpenDocCreator;->createPaintingDoc(IILjava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "can\'t add ContentDrawing : failed painting doc creation"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v13, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v9, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    const/high16 v11, 0x43200000    # 160.0f

    div-float v12, v9, v11

    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->getRatio()F

    move-result v15

    invoke-interface {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result v2

    sub-int v16, v2, v7

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->getImageViewSize(IFIIFIZ)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectPainting()Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object v2

    invoke-interface {v2, v4, v0, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v8, v10}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertContent, close() - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v10

    :cond_4
    :goto_3
    const-string v0, "can\'t add ContentDrawing : not file"

    goto/16 :goto_0
.end method
