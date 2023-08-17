.class public Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/document/contract/DocumentContract;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DocumentContractImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->getCropBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getCropBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCropBitmap w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCropBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int v1, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const-string p1, "left + width must be <= bitmap.width()"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    add-int v1, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    const-string p1, "y + height must be <= bitmap.height()"

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1
.end method

.method private static saveToCache(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->saveToCacheDL(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveToCacheDL(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;
    .locals 1

    const-string v0, "IOException"

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->getCropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p5, 0x64

    invoke-virtual {p1, p3, p5, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    const-string p5, "image not saved"

    invoke-static {p3, p5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-object p0, p2

    :catch_2
    :try_start_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t save image"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, p0

    :goto_1
    if-eqz p2, :cond_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    throw p1

    :cond_3
    :goto_3
    return-object p2
.end method


# virtual methods
.method public charUtils_fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocInitModeAppWidget()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getExtraValueLockConfirmed()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIRMED_PASSWORD"

    return-object v0
.end method

.method public getLockTypeSNB()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getLockTypeSPD()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getLockTypeTMEMO()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMaxTextureSize()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->getMaxTextureSize()I

    move-result v0

    return v0
.end method

.method public getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getMainCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailCompressQuality()I
    .locals 1

    const/16 v0, 0x5f

    return v0
.end method

.method public imageUtils_saveToCache(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->saveToCache(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public isAllActivityFinished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logger_d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logger_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logger_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logger_getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logger_getLogFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getLogFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logger_i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public makeWebCardData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getURL()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/TextCrawler;->makePreview(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/web/LinkSourceContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LinkSourceContentVer3;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v0, 0x1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->setBody(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getImageFile()Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setState(I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->setImageTypeId(I)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->setUri(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getScrapBookHTMLPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->attachHTMLFile(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public newUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
