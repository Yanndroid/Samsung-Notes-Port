.class public Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$CategoryData;,
        Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;
    }
.end annotation


# static fields
.field private static final CHECK_NO:Ljava/lang/String; = "\u2b1c"

.field private static final CHECK_YES:Ljava/lang/String; = "\u2b1b"

.field private static final COMPRESS_QUALITY:I

.field private static final IMAGE_CONTENT_STARTER:Ljava/lang/String; = "<img src="

.field private static final MEMO_DRAW:Ljava/lang/String; = "MemoDraw"

.field private static final TAG:Ljava/lang/String; = "Converter"

.field private static final TODO_ID_STARTER:I = 0x2710

.field private static final TODO_LINE_ENDER:Ljava/lang/String; = "\t</p>"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getThumbnailCompressQuality()I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->COMPRESS_QUALITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->addCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static containImage(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string v1, "<img src="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Converter"

    iget-object v4, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    if-nez v5, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v18, p3

    goto/16 :goto_15

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "yyyyMMdd_HHmmss"

    invoke-direct {v8, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "].sdoc"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object/from16 v4, p3

    :goto_1
    const/4 v7, 0x0

    :try_start_0
    new-instance v14, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-direct {v14, v0, v4, v7, v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_3

    invoke-virtual {v14}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    :cond_3
    iget-object v5, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->favorite:Ljava/lang/String;

    const/4 v15, 0x1

    if-eqz v5, :cond_4

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v14, v15}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setFavorite(Z)V

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSDoc() : image file cnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v7

    const/4 v9, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_18

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    iget-object v13, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    iget-object v7, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->uuid:Ljava/lang/String;

    iget-object v15, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->mime_type:Ljava/lang/String;

    iget-object v12, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->orientation:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    const-string v10, "createSDoc - file info : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "90"

    invoke-virtual {v12, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x5a

    goto :goto_3

    :cond_5
    const-string v1, "180"

    invoke-virtual {v12, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0xb4

    goto :goto_3

    :cond_6
    const-string v1, "270"

    invoke-virtual {v12, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x10e

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v15, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x5

    const/4 v12, 0x0

    invoke-virtual {v15, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->fileType:Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "/file_OldMemo_"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->fileType:Ljava/lang/String;

    move-object/from16 v18, v4

    const-string v4, "image"

    invoke-virtual {v15, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v14

    const-string v14, ".png"

    if-nez v15, :cond_9

    invoke-virtual {v2, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v1, :cond_9

    invoke-static {v0, v13, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getSamplingRate(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v13, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getResizeImageRect(Landroid/content/Context;Landroid/graphics/Bitmap;I)F

    move-result v4

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v10, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v26, 0x1

    move-object/from16 v20, v2

    move-object/from16 v25, v10

    invoke-static/range {v20 .. v26}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v14, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->COMPRESS_QUALITY:I

    invoke-virtual {v1, v13, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    goto/16 :goto_9

    :cond_9
    iget-object v15, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->fileType:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/file_OldMemo"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpeg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v1, "Fail to decode bitmap"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    goto/16 :goto_b

    :cond_a
    if-eqz v1, :cond_b

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v26, 0x1

    move-object/from16 v20, v2

    move-object/from16 v25, v4

    invoke-static/range {v20 .. v26}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v1

    :cond_b
    invoke-static {v2, v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->savePNGBitmapToJPEGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "createSDoc, fail to savePNGBitmapToJPEGFile!"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v1}, Lcom/samsung/android/support/senl/document/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    move-object v4, v1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    :cond_d
    iget-object v2, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->display_name:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string v4, "MemoDraw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move/from16 v16, v4

    goto :goto_6

    :cond_e
    const/4 v4, 0x1

    :cond_f
    const/16 v16, 0x0

    :goto_6
    if-nez v16, :cond_13

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v13, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getMaxTextureSize()I

    move-result v4

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget v15, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v15, v4, :cond_10

    int-to-float v4, v4

    int-to-float v15, v15

    div-float/2addr v4, v15

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v15, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v26, 0x1

    move-object/from16 v20, v4

    move-object/from16 v25, v15

    invoke-static/range {v20 .. v26}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v20, v6

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v21, v9

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v22, v6

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v23, v5

    sget v5, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->COMPRESS_QUALITY:I

    invoke-virtual {v15, v6, v5, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v6, v22

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_7
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, v14, :cond_12

    invoke-static {v0, v13, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getSamplingRate(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v13, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-static {v0, v4, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getResizeImageRect(Landroid/content/Context;Landroid/graphics/Bitmap;I)F

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSDoc, resize width : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    const/16 v30, 0x1

    move-object/from16 v24, v4

    move-object/from16 v29, v6

    invoke-static/range {v24 .. v30}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v9, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->COMPRESS_QUALITY:I

    invoke-virtual {v1, v5, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    move-object v4, v6

    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    move v1, v4

    move-object v4, v6

    goto :goto_8

    :cond_13
    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_8
    if-nez v1, :cond_14

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v4}, Lcom/samsung/android/support/senl/document/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_14
    :goto_9
    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->fileType:Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setState(I)V

    iget-object v2, v11, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->attachFile(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getVoiceRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->setPlayTime(Ljava/lang/String;)V

    move-object v10, v1

    goto :goto_a

    :cond_15
    move-object/from16 v10, v17

    :goto_a
    move-object/from16 v1, v23

    if-eqz v4, :cond_17

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    move-object/from16 v18, v4

    move-object v1, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    move-object/from16 v19, v14

    :goto_b
    move-object/from16 v10, v17

    :cond_17
    :goto_c
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v2, p2

    move-object v5, v1

    move-object/from16 v4, v18

    move-object/from16 v14, v19

    move-object/from16 v6, v20

    const/4 v7, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_18
    move-object/from16 v18, v4

    move-object v1, v5

    move-object/from16 v20, v6

    move-object/from16 v17, v10

    move-object/from16 v19, v14

    move-object/from16 v7, v17

    goto :goto_d

    :cond_19
    move-object/from16 v18, v4

    move-object v1, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v14

    const/4 v7, 0x0

    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v20, :cond_1c

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->isTodo(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1b

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1a

    goto :goto_f

    :cond_1a
    move-object/from16 v6, v19

    move-object/from16 v5, v20

    invoke-static {v0, v6, v5, v4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->parseTextImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    :goto_e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_1b
    :goto_f
    move-object/from16 v6, v19

    move-object/from16 v5, v20

    invoke-static {v0, v6, v5, v4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->devideContentWithTodo(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    goto :goto_e

    :cond_1c
    move-object/from16 v6, v19

    const/4 v12, 0x0

    :cond_1d
    :goto_10
    if-eqz v7, :cond_1e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    move v4, v12

    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1f

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    :goto_12
    const-string v5, "createSDoc"

    invoke-static {v3, v5, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSDoc() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object v7, v6

    move-object/from16 v8, v18

    move v4, v12

    move-wide v12, v2

    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;JJ)V

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    move v12, v4

    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_21

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_20
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_21
    :goto_15
    return-object v18

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSDoc() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static devideContentWithTodo(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "</p>"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const-string v4, ""

    move v5, v3

    move v7, v5

    move-object v6, v4

    :goto_0
    array-length v8, p2

    if-ge v5, v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p2, v5

    aget-object v8, p2, v5

    invoke-static {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->isTodo(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {p0, p1, v6, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->parseTextImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v6, v7, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->fillToDoData(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-ne v8, v9, :cond_4

    aget-object v6, p2, v5

    const-string v7, "\u2b1c"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v5

    goto :goto_2

    :cond_4
    aget-object v6, p2, v5

    const-string v7, "\u2b1b"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v5

    :goto_2
    move-object v6, v4

    move v7, v8

    :cond_5
    aget-object v8, p2, v5

    const-string v10, "\t</p>"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v8, v9, :cond_6

    aget-object v8, p2, v5

    const-string v10, "\t"

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p2, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v5

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p1, v6, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->parseTextImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6, v7, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->fillToDoData(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v7, v3

    move v8, v7

    move-object v6, v4

    goto :goto_3

    :cond_6
    move v8, v9

    :goto_3
    if-ne v8, v9, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v5

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_9

    invoke-static {p0, p1, v6, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->parseTextImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object v0

    :cond_a
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fillToDoData(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setTaskId(I)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setTaskStyle(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getDrawingContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "NMEMO_DRAWING_TO_PAINTING"

    const-string v3, "MemoDraw"

    const-string v4, "."

    const-string v5, "/"

    const-string v6, "Converter"

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->charUtils_fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/ImageSpan;

    const/4 v11, 0x0

    invoke-interface {v8, v11, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ImageSpan;

    array-length v10, v9

    const/4 v12, 0x1

    if-eq v10, v12, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDrawingContent() - Error!! Img cnt is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_0
    aget-object v8, v9, v11

    invoke-virtual {v8}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "getDrawingContent() - image path is null "

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v12

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v12, :cond_c

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v0, "getDrawingContent() ; image file is null"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    invoke-static {v1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawingContent() ; image file( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ) can not decode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_3
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8, v9, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int v14, v10, v15

    new-array v13, v14, [I

    new-array v12, v14, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v13

    move-object v13, v8

    move v7, v14

    move-object/from16 v14, v21

    move/from16 p4, v15

    move/from16 v15, v16

    move/from16 v16, v10

    move/from16 v19, v10

    move/from16 v20, p4

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v9

    move-object v14, v12

    move/from16 v16, v10

    move/from16 v19, v10

    move/from16 v20, p4

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/samsung/android/support/senl/document/R$color;->drawing_canvas_background_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    move v13, v11

    :goto_0
    if-ge v13, v7, :cond_5

    aget v14, v21, v13

    const v11, -0x50506

    if-ne v14, v11, :cond_4

    aput v15, v21, v13

    const/4 v11, 0x0

    aput v11, v12, v13

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v14, v21

    move v11, v15

    move v15, v7

    move/from16 v16, v10

    move/from16 v19, v10

    move/from16 v20, p4

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v9

    move-object v14, v12

    move/from16 v16, v10

    move/from16 v19, v10

    move/from16 v20, p4

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getMaxTextureSize()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v13, p4

    if-le v13, v7, :cond_6

    int-to-float v7, v7

    int-to-float v13, v13

    div-float/2addr v7, v13

    goto :goto_1

    :cond_6
    move v7, v15

    :goto_1
    if-le v10, v12, :cond_7

    int-to-float v13, v12

    int-to-float v14, v10

    div-float/2addr v13, v14

    cmpl-float v14, v7, v13

    if-lez v14, :cond_7

    move v7, v13

    :cond_7
    cmpg-float v13, v7, v15

    if-gez v13, :cond_9

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v14, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDrawingContent, resize width : "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object v13, v8

    move-object v12, v14

    move v14, v7

    move v7, v15

    move v15, v10

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eq v8, v10, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v10

    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object v13, v9

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eq v9, v10, :cond_a

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object v9, v10

    goto :goto_2

    :cond_9
    move v7, v15

    :cond_a
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "THUMBNAIL"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v12, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->COMPRESS_QUALITY:I

    invoke-virtual {v8, v4, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v8}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v4, v10, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    :goto_3
    div-int/lit8 v8, v4, 0x2

    mul-int/lit8 v8, v8, 0x3

    goto :goto_4

    :cond_b
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_3

    :goto_4
    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    const/4 v12, 0x0

    invoke-direct {v10, v0, v4, v8, v12}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->setBackgroundColor(I)V

    invoke-virtual {v10, v9}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->setForegroundImage(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->setReplayable(Z)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getCachePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".spp"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v9, v9, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v7, 0x0

    invoke-virtual {v8, v11, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual {v8, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setSelectable(Z)V

    invoke-virtual {v8, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setColor(I)V

    invoke-virtual {v8, v2, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v10, v5}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->save(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->close()V

    new-instance v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;

    invoke-direct {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setItemHeight(I)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->setObjectRect(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentDrawing;->attachFile(Ljava/lang/String;)V

    return-object v2

    :cond_c
    const-string v0, "getDrawingContent() - No image id"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawingContent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->charUtils_fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageContent toString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Converter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x0

    invoke-interface {p2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    array-length v3, v1

    if-gtz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImageContent() - Error!! Img cnt is "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    move v3, v4

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-interface {p2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->sortByValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "getImageContent() temp( "

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v7, v1, v5

    invoke-interface {p2, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getImageContent() span parse( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v8, v7, v4

    if-lez v8, :cond_3

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getTextContent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;

    invoke-direct {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;-><init>()V

    aget-object v6, v1, v5

    invoke-virtual {v6}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImageContent() - Error!! no attached file!! SKIP"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v4, v1, v5

    :goto_2
    invoke-interface {p2, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_6

    add-int/lit8 p2, p1, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p4, 0xa

    if-ne p2, p4, :cond_6

    add-int/lit8 p2, p1, -0x2

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, p4, :cond_6

    add-int/lit8 p1, p1, -0x2

    :cond_6
    sub-int p2, p1, v4

    if-lez p2, :cond_7

    new-instance p2, Landroid/text/SpannedString;

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ) ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getTextContent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-object v3
.end method

.method private static getResizeImageRect(Landroid/content/Context;Landroid/graphics/Bitmap;I)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/16 v1, 0xb4

    if-eq p2, v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-le v0, p0, :cond_2

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    return p0
.end method

.method private static getSamplingRate(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0xb4

    if-ne p2, p1, :cond_0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    div-int/2addr p1, p0

    :goto_1
    const/4 p0, 0x2

    if-lt p1, p0, :cond_1

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return v1
.end method

.method private static getTextContent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    const-string v1, "<p></p>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\r?\\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    :goto_1
    array-length v1, p1

    if-ge p0, v1, :cond_3

    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTextContent : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Converter"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getVoiceRuntime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Converter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :cond_0
    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    long-to-int p0, v4

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "%02d:%02d:%02d"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initSpenSdk(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Converter"

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    :try_start_0
    const-string v2, "initSpenSdk() start"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;I)V

    const-string p0, "initSpenSdk() end"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vendor is not SAMSUNG"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is not supported"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static isTodo(Ljava/lang/String;)I
    .locals 2

    const-string v0, "\u2b1c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u2b1b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static loadSpenSDK(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->initSpenSdk(Landroid/content/Context;)V

    return-void
.end method

.method private static parseTextImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->containImage(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const-string v1, "</p>"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    aget-object v4, p2, v3

    invoke-static {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->containImage(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v2, :cond_2

    aget-object v4, p2, v3

    const-string v5, "MemoDraw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v2, :cond_1

    aget-object v4, p2, v3

    invoke-static {p0, p1, v4, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getDrawingContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    aget-object v4, p2, v3

    invoke-static {p0, p1, v4, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getImageContent(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_2
    aget-object v4, p2, v3

    invoke-static {p0, v4, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getTextContent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getTextContent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static savePNGBitmapToJPEGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Converter"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapToFileCache, start path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v2, p0, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBitmapToFileCache, done path: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string p1, "saveBitmapToFileCache"

    invoke-static {v0, p1, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    return v1

    :catchall_2
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    :goto_1
    return v1
.end method

.method private static sortByValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$1;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;Ljava/lang/String;)V

    return-void
.end method

.method public static updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;Ljava/lang/String;)V
    .locals 5

    if-nez p3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->category:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->category:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->createBuilderInstance()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setSaveDoc(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->saveSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z

    iget-object p1, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->favorite:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p1

    iget-object p2, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->favorite:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, p0, p3, v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->setNoteFavorite(Landroid/content/Context;Ljava/lang/String;Z)I

    :cond_4
    return-void
.end method

.method public static updateSDocDBWithUuid(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;Ljava/lang/String;)V

    return-void
.end method
