.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFLICT_TEMP_FOLDER_NAME:Ljava/lang/String; = "conflict"

.field public static final DOCUMENT_SCAN_FOLDER_NAME:Ljava/lang/String; = "docScan"

.field private static final MAX_COUNT_PDFWRITER_MAINTAIN:I = 0xa

.field private static final MAX_DAYS_PDFWRITER_MAINTAIN:I = 0x7

.field private static final MAX_PAGE_THUMBNAIL_COUNT:I = 0x5dc

.field public static final PAGE_CACHE_INFO_DAT:Ljava/lang/String; = "info.dat"

.field public static final PAGE_SEARCH_FOLDER_NAME:Ljava/lang/String; = "pageSearch"

.field public static final PAINTING_FOLDER_NAME:Ljava/lang/String; = "painting"

.field public static final RECENT_SEARCH_KEYWORD_DAT:Ljava/lang/String; = "searchInfo.dat"

.field public static final SAVE_INSTANCES_FOLDER_NAME:Ljava/lang/String; = "saveInstances"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerCacheFileUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getCacheInfoData(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/util/List;Ljava/io/FilenameFilter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimAbnormalUuidDir(Ljava/util/List;Ljava/io/FilenameFilter;)V

    return-void
.end method

.method public static bridge synthetic d(Landroid/content/Context;Ljava/util/List;Ljava/io/FilenameFilter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimScreenSizeDir(Landroid/content/Context;Ljava/util/List;Ljava/io/FilenameFilter;)V

    return-void
.end method

.method public static deleteNoteAppAttachFolder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getRootCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$4;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length p1, p0

    if-gtz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    aget-object v0, p0, p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$5;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeNoteAppAttachFolder# sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_4

    :cond_3
    :try_start_1
    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNoteAppAttachFolder# dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static deleteThumbnailDir(Ljava/io/File;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimPageThumbnail# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getCacheInfoData(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConflictTempDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "conflict"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDayFromLast(JJ)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    div-long/2addr p0, p2

    return-wide p0
.end method

.method private static getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    const-string p1, "getDir# fail to get cacheDir"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDir# fail to get dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDocScanDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "docScan"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPageSearchDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "pageSearch"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPaintingDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "painting"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSaveInstancesFolderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "saveInstances"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeConflictTempDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getConflictTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    const-string p1, "makeConflictTempDir# fail to make conflictFolderPath"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".sdocx"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    const-string p1, "makeConflictTempDir# fail to make dir"

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static trimAbnormalUuidDir(Ljava/util/List;Ljava/io/FilenameFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/FilenameFilter;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trimPageThumbnail# fail to delete noCacheInfoDirs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static trimCache(Landroid/content/Context;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    const-string v1, "trimCache# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v3, v1, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimDir(Ljava/lang/String;JI)V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getPageSearchDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    if-eqz v3, :cond_1

    invoke-static {v3, v1, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimDir(Ljava/lang/String;JI)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getPaintingDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, v1, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimDir(Ljava/lang/String;JI)V

    :cond_2
    invoke-static {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimPdfWriterDir(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDocScanDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v6, 0x0

    invoke-static {v3, v1, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimDir(Ljava/lang/String;JI)V

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getSaveInstancesFolderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3, v1, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimDir(Ljava/lang/String;JI)V

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimPageThumbnail(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getConflictTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0, v1, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimDir(Ljava/lang/String;JI)V

    :cond_5
    const-string p0, "trimCache# end"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static trimDir(Ljava/lang/String;JI)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDayFromLast(JJ)J

    move-result-wide v3

    int-to-long v5, p3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static trimPageThumbnail(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getRootCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    const-string v2, "trimPageThumbnail# execute"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;-><init>([Ljava/io/File;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static trimPdfWriterDir(Landroid/content/Context;J)V
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCacheFolderFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    const-string p1, "trimPdfWriterDir(), fail to make a directory"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$2;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$2;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/repository/pdfwriter/PDFWriterRepositoryFactory;->createPDFWriterRepository()Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {p1, p2, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getDayFromLast(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->delete(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v3, " p: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trimPdfWriterDir# p: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " e: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trimPdfWriterDir:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static trimScreenSizeDir(Landroid/content/Context;Ljava/util/List;Ljava/io/FilenameFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/io/FilenameFilter;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimThumbnailDir([Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static trimThumbnailDir([Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)I
    .locals 11

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v4, p0, v2

    const/4 v5, 0x1

    const/16 v6, 0x5dc

    if-ge p1, v6, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "thumbnail"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    array-length v7, v4

    add-int/2addr v7, p1

    if-gt v7, v6, :cond_3

    array-length v4, v4

    add-int/2addr p1, v4

    goto :goto_3

    :cond_3
    array-length v7, v4

    add-int/2addr v7, p1

    sub-int/2addr v7, v6

    int-to-long v7, v7

    move p1, v1

    :goto_1
    int-to-long v9, p1

    cmp-long v9, v9, v7

    if-gez v9, :cond_4

    aget-object v9, v4, p1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-lez p1, :cond_5

    move v3, v5

    :cond_5
    move p1, v6

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->deleteThumbnailDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v5

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trimPageThumbnail# trim "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return p1
.end method
