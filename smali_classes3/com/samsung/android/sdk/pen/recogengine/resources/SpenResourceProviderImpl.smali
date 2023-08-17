.class public Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenResourceProviderImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

.field private mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

.field private mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mContext:Landroid/content/Context;

    const-string p1, "SpenResourceProviderImpl"

    const-string v0, "SpenResourceProviderImpl : set resource provider"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->setEngineAndResourceType(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createResourceProvider : create resource provider, engineType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->ASSETS:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    if-ne p3, v0, :cond_0

    new-instance p3, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderAssets;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderAssets;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)V

    return-object p3

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->FILE:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    if-ne p3, v0, :cond_1

    new-instance p3, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)V

    return-object p3

    :cond_1
    new-instance p2, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;-><init>(Landroid/content/Context;)V

    return-object p2
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenResourceProviderImpl"

    const-string v1, "close : SpenResourceProviderImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    return-void
.end method

.method public getAvailableLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableLocale : input language code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-nez v0, :cond_0

    const-string v0, "getAvailableLocale : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultLocale : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-nez v0, :cond_0

    const-string v0, "getDefaultLocale : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentData(Landroid/content/Context;)[[B
    .locals 2

    const-string v0, "SpenResourceProviderImpl"

    const-string v1, "getDocumentData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-nez v1, :cond_0

    const-string v1, "getDocumentData : create mResProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    const-string v1, "en_US"

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->getResourceData(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getLanguageData(Landroid/content/Context;Ljava/lang/String;)[[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLanguageData : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-nez v0, :cond_0

    const-string v0, "getLanguageData : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->isSupportedLanguage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getLanguageData : supported languages = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->getResourceData(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .locals 3

    const-string v0, "SpenResourceProviderImpl"

    const-string v1, "getSupportedLanguages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-nez v1, :cond_0

    const-string v1, "getSupportedLanguages : create mResProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedLanguage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportedLanguage : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-nez v0, :cond_0

    const-string v0, "isSupportedLanguage : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->isSupportedLanguage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setEngineAndResourceType(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEngineAndResourceType : engineType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mResType:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    return-void
.end method

.method public setRootDirectory(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SpenResourceProviderImpl"

    const-string/jumbo v1, "setRootDirectory : SpenResourceProviderImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->mInstance:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;->setRootDirectory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
