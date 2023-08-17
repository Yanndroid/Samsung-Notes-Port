.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/HtmlToBitmapForConvert;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtmlToBitmapForConvert"

.field public static mShapeBitmap:Landroid/graphics/Bitmap;

.field public static mirror:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShapeBitmap(Landroid/content/Context;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;FFFFI)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    const-string v8, "HtmlToBitmapForConvert"

    const-string v9, "getShapeBitmap"

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-nez p0, :cond_0

    const-string v0, "mContext is null"

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "get mVmlCode start"

    invoke-static {v8, v11}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v11

    if-lez v11, :cond_d

    new-array v12, v11, [B

    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_c

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    const/4 v15, 0x0

    invoke-direct {v13, v12, v15, v11, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v10, "get mVmlCode done"

    invoke-static {v8, v10}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;-><init>()V

    invoke-virtual {v10, v13}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->setVmlData(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->parse()V

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->getMetaDataInfos()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;

    invoke-direct {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;-><init>()V

    invoke-virtual {v11, v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setMetaDataInfos(Ljava/util/ArrayList;)V

    move/from16 v10, p2

    invoke-virtual {v11, v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setStrokeSize(F)V

    invoke-virtual {v11, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setStrokeColor(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setFillColor(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stroke color : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / fill color : "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preload/shape/panel_shape_icon_01_01_normal.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "preload/shape/panel_shape_icon_01_03_normal.html"

    const-string v8, "preload/shape/panel_shape_icon_01_02_normal.html"

    const/4 v10, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setIsLineObject(Z)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v11, v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setIsLineObject(Z)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v11, v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setIsArrowEd(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setIsArrowSt(Z)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getIsLineObject()Z

    move-result v0

    if-eqz v0, :cond_5

    float-to-int v0, v3

    int-to-float v0, v0

    float-to-int v1, v4

    int-to-float v1, v1

    float-to-int v2, v5

    int-to-float v2, v2

    float-to-int v3, v6

    int-to-float v3, v3

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->makeLineBitmap(FFFF)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/HtmlToBitmapForConvert;->mShapeBitmap:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->makePictureDrawable(Landroid/graphics/RectF;)Z

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getPictureDrawable()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilBitmap;->toBitmap(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_6
    :goto_4
    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/HtmlToBitmapForConvert;->mShapeBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_7

    return-object v0

    :cond_7
    if-nez v0, :cond_8

    return-object v9

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/HtmlToBitmapForConvert;->mShapeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v7, v10, :cond_b

    const/4 v5, 0x2

    if-eq v7, v5, :cond_a

    const/4 v3, 0x3

    if-eq v7, v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_5
    sget-object v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/HtmlToBitmapForConvert;->mShapeBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p0, v3

    move/from16 p1, v4

    move/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p6, v6

    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/HtmlToBitmapForConvert;->mirror:Landroid/graphics/Bitmap;

    return-object v0

    :cond_c
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    return-object v9

    :cond_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v9

    :catch_0
    move-object v10, v9

    :catch_1
    if-eqz v10, :cond_e

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_e
    return-object v9
.end method
