.class public abstract Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoaderBase"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    return-void
.end method

.method private getFileDescriptor(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->getFileDescriptorTuple(Landroid/content/res/AssetFileDescriptor;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized loadDBby([Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;

    invoke-direct {v0, p3, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenDBType;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mContext:Landroid/content/Context;

    invoke-interface {p3, v1, p1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;->loadDB(Landroid/content/Context;[Ljava/lang/Object;Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "LoaderBase"

    const-string p2, "loadDBby(Object[] fileDescriptor, ...) Fail to load"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "LoaderBase"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadDBby(Object[] fileDescriptor, ...) success to load : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized loadLanguageModel(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->supportedLanguages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->AUTO:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->toLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/pen/ocr/SpenDBType;->OCR:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->loadOcrModel(Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "LoaderBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLanguageModel() fail to loadOcrModel("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    const-string p1, "LoaderBase"

    const-string v0, "loadLanguageModel() all languages are loaded!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3
    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LoaderBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLanguageModel() not supported language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenDBType;->OCR:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->loadOcrModel(Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :cond_5
    :goto_0
    :try_start_4
    const-string p1, "LoaderBase"

    const-string v0, "loadLanguageModel() there is no supported languages"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getFileDescriptorTuple(Landroid/content/res/AssetFileDescriptor;)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->supportedLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadCommonDB()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenDBType;->BlockAnalyzer:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    const-string v1, "ba"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->loadOcrModel(Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadDBby(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;

    invoke-direct {v0, p3, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenDBType;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mContext:Landroid/content/Context;

    invoke-interface {p2, p3, p1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;->loadDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;)I

    move-result p1

    if-gez p1, :cond_0

    const-string p1, "LoaderBase"

    const-string p2, "loadDBby(String filePath, ...) Fail to load"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadLanguageDB(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->loadLanguageModel(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized loadOcrModel(Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrDataProviderHelper;->getAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    :try_start_1
    const-string p1, "LoaderBase"

    const-string p2, "AssetFileDescriptor is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_3
    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->getFileDescriptor(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "LoaderBase"

    const-string p2, "loadOcrModel() Failed to get FileDescriptor"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return v0

    :cond_2
    :try_start_5
    const-string v3, "ba"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "common"

    :cond_3
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->loadDBby([Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_a
    const-string p2, "LoaderBase"

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public abstract supportedLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
