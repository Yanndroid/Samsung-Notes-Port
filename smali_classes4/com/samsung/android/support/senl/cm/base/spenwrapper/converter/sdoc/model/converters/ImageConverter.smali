.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_MIN_SIZE:I = 0x4a

.field private static final TAG:Ljava/lang/String; = "SDocXConverter$ImageConverter"


# instance fields
.field private mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "SDocXConverter$ImageConverter"

    const-string v2, "convert content"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "copy(), imagePath is null"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    new-instance v4, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    iget-object v6, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getResourceGetter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-nez v7, :cond_1

    return v3

    :cond_1
    iget v8, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float v11, v8, v9

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/16 v9, 0x4a

    if-nez v8, :cond_2

    const-string v8, "decoding bitmap failed, apply min width"

    invoke-static {v1, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v9

    move v13, v12

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v12, v1

    move v13, v8

    :goto_0
    iget v1, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v7, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->getHorizontalSpace()I

    move-result v1

    int-to-float v1, v1

    iget-object v7, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getDPI()F

    move-result v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;->getRatio()F

    move-result v14

    sub-int v15, v6, v1

    iget v1, v4, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v6, :cond_4

    move/from16 v16, v7

    goto :goto_2

    :cond_4
    move/from16 v16, v3

    :goto_2
    invoke-static/range {v10 .. v16}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->getImageViewSize(IFIIFIZ)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v8, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v8}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    iget-object v6, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v6, v8

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    iget v9, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    new-instance v6, Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v6, v10, v1, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v6

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectImage()Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual {v6, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v1, v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    invoke-interface {v1, v6, v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendTaskObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    :goto_3
    return v7
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ImageConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    return-void
.end method
