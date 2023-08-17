.class public Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

.field private mRootDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenResourceProviderFile"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "hwrdb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mRootDir:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->initialize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenResourceProviderFile"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "hwrdb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mRootDir:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->initialize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)V

    return-void
.end method

.method private getFileDataBuffer(Ljava/util/List;)[[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[[B"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SpenResourceProviderFile"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [[B

    :goto_0
    if-ge v0, v2, :cond_2

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mRootDir:Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;->getResourceBuffer(Ljava/io/InputStream;)[B

    move-result-object v6

    aput-object v6, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAssetsDataBuffer : cannot open asset file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    aput-object v4, v3, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_3
    const-string p1, "getFileDataBuffer : fileNameList is wrong!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [[B

    return-object p1
.end method

.method private getFileNameList(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getHWRDBfilenames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;->getDefaultLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sr_RS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p1, "sr_Latn_RS"

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hwr_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dat"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getHWRDBfilenames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;->getSecondaryLanguage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v3, 0x1

    if-le p2, v3, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    if-ne p1, p2, :cond_2

    const-string p1, "model.bin"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ls_model.bin"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->MATH:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    if-ne p1, p2, :cond_3

    const-string p1, "hme_model.dat"

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileNameList : not supported engine type , engineType = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenResourceProviderFile"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getHWRDBfilenames()[Ljava/lang/String;
    .locals 2

    const-string v0, "SpenResourceProviderFile"

    const-string v1, "getHWRDBfilenames : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mRootDir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mRootDir:Ljava/io/File;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile$1;-><init>(Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialize : engineType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenResourceProviderFile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    sget-object p1, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    if-ne p2, p1, :cond_0

    const-string p1, "hwrdb_document"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->setRootDirectory(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->MATH:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    if-ne p2, p1, :cond_1

    const-string p1, "hwrdb_math"

    goto :goto_0

    :cond_1
    const-string p1, "hwrdb"

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenResourceProviderFile"

    const-string v1, "close : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultLocale : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderFile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getHWRDBfilenames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;->getDefaultLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResourceData(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)[[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResourceData : engineType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderFile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getFileNameList(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getFileDataBuffer(Ljava/util/List;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .locals 2

    const-string v0, "SpenResourceProviderFile"

    const-string v1, "getSupportedLanguages : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getHWRDBfilenames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;->getSupportedLanguages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedLanguage(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportedLanguage : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderFile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mCommon:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getHWRDBfilenames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderCommon;->isSupportedLanguage(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setRootDirectory(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->mRootDir:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRootDirectory : root dir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenResourceProviderFile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
