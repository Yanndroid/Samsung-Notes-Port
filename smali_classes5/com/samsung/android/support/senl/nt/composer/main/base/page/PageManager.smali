.class public Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockingInsert:Z

.field private mBlockingNotiToInsert:Z

.field private mCacheDirPath:Ljava/lang/String;

.field private mDefaultThumbnailWidth:F

.field private mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

.field private final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

.field private mSkipToSaveCache:Z

.field private mThumbnailCacheDirPath:Ljava/lang/String;

.field private mThumbnailRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mBlockingInsert:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mSkipToSaveCache:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mBlockingNotiToInsert:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mListeners:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setCacheDirPath(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->updateThumbnailRatio(IF)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PageManager, cacheDir : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mCacheDirPath:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mThumbnailCacheDirPath : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createPageInfo(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;
    .locals 10

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getModifiedTime()J

    move-result-wide v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;ZJ)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailRatio:F

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setThumbnailRatio(F)V

    const/4 p1, 0x1

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setDirty(Z)V

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->makeThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setThumbnailFilePath(Ljava/lang/String;)V

    return-object v9
.end method

.method private loadCache()Z
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v1, "loadCache# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mCacheDirPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "info.dat"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    iput-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    return v4

    :cond_2
    :try_start_5
    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->init()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->clearPositionAfterDays()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v4, 0x1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_9
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_b
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCache# end "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private makeThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailCacheDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private notifyDataInserted(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyDataInserted# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;->onInsertedPages(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveThumbnail(Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IF)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v1, "saveThumbnail#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p1, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->isEnabledDarkTheme()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setColorTheme(I)V

    invoke-virtual {p1, p6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "saveThumbnail# capture done"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->makeThumbnailFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x64

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "fail to make thumbnail"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailRatio:F

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setThumbnailRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearData(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->saveCacheToFile(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataSetChanged(III)V

    return-void
.end method

.method public getDefaultThumbnailWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDefaultThumbnailWidth:F

    return v0
.end method

.method public getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageCountExcludedDummy()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPageInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailRatio:F

    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public init(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->init(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Z)V

    return-void
.end method

.method public init(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->loadCache()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-direct {p3, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;-><init>(ILcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object p3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->loadPageLayoutDefaultForSingle()V

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    return-void
.end method

.method public initPageInfoList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v2, "initPageInfoList# start"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "initPageInfoList# return"

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initPageInfoList# in: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " note: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-ge v3, v5, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->createPageInfo(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v1, "initPageInfoList# end"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;ILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->insert(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void
.end method

.method public insert(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mBlockingInsert:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string p2, "insert# blocking"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailRatio:F

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setThumbnailRatio(F)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mBlockingNotiToInsert:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataInserted(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSkipToSaveCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mSkipToSaveCache:Z

    return v0
.end method

.method public move(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ge p1, p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    :goto_0
    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataSetChanged(III)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyDataRemoved(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 2
    .param p2    # Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyDataRemoved# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;->onDeletedPages(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged(III)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataSetChanged(IIILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void
.end method

.method public notifyDataSetChanged(IIILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 3
    .param p4    # Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataSetChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;->onUpdatePage(IIILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mPageList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove# not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string p2, "remove# None "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataRemoved(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public saveCacheToFile(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    const-string v1, "saveCache#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mSkipToSaveCache:Z

    if-eqz v1, :cond_0

    const-string p1, "saveCache# skip"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mCacheDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "saveCache# cannot get the cacheDir"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "info.dat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setTotalPageCount(I)V

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->copy()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCache# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDocPageInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBlockNotiToInsert(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockNotiToInsert# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mBlockingNotiToInsert:Z

    return-void
.end method

.method public setBlockToInsert(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockToInsert# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mBlockingInsert:Z

    return-void
.end method

.method public setCacheDirPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mCacheDirPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailCacheDirPath:Ljava/lang/String;

    return-void
.end method

.method public setDestroyFlag()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setSkipToSaveCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mSkipToSaveCache:Z

    return-void
.end method

.method public setThumbnail(Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)V
    .locals 13

    move-object v7, p0

    move/from16 v8, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v11, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnail# start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnail# destroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnail# getInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnail# getInfo end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v7, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailRatio:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->saveThumbnail(Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IF)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v12, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setThumbnailFilePath(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getModifiedTime()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setPageModifiedTime(J)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->setDirty(Z)V

    if-eqz p6, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v8, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataSetChanged(III)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnail# end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateThumbnailRatio(IF)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mDefaultThumbnailWidth:F

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->mThumbnailRatio:F

    return-void
.end method
