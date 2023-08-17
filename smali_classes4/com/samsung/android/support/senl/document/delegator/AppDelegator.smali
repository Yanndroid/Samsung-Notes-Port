.class public Lcom/samsung/android/support/senl/document/delegator/AppDelegator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/document/delegator/AppDelegator;


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

.field private mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->a:I

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :goto_2
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_5

    :goto_3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_5
    :try_start_1
    const-class v1, Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_6

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_6

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mInstance:Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mInstance:Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mInstance:Lcom/samsung/android/support/senl/document/delegator/AppDelegator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->addCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public charUtils_fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->charUtils_fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public deleteSDoc(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->deleteSDoc(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->detourUtils_commitEditor(Landroid/content/SharedPreferences$Editor;)Z

    move-result p1

    return p1
.end method

.method public fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->getCategoryUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocInitModeAppWidget()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getDocInitModeAppWidget()I

    move-result v0

    return v0
.end method

.method public getExtraValueLockConfirmed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getExtraValueLockConfirmed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockTypeSNB()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getLockTypeSNB()I

    move-result v0

    return v0
.end method

.method public getLockTypeSPD()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getLockTypeSPD()I

    move-result v0

    return v0
.end method

.method public getLockTypeTMEMO()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getLockTypeTMEMO()I

    move-result v0

    return v0
.end method

.method public getMaxTextureSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getMaxTextureSize()I

    move-result v0

    return v0
.end method

.method public getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNoteFilePathList(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->getNoteFilePathList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getPrivateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getScreenDimension(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailCompressQuality()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->getThumbnailCompressQuality()I

    move-result v0

    return v0
.end method

.method public imageUtils_saveToCache(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->imageUtils_saveToCache(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public isAllActivityFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->isAllActivityFinished()Z

    move-result v0

    return v0
.end method

.method public isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public logger_d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->logger_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logger_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->logger_e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logger_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->logger_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logger_getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->logger_getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logger_getLogFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->logger_getLogFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logger_i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->logger_i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public makeWebCardData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->makeWebCardData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V

    return-void
.end method

.method public newUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mContract:Lcom/samsung/android/support/senl/document/contract/DocumentContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentContract;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->saveDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z

    move-result p1

    return p1
.end method

.method public setNoteFavorite(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->setNoteFavorite(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setNoteLock(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->mDataContract:Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->setNoteLock(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
