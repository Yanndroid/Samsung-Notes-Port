.class public Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenResourceProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

.field private mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

.field private mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mContext:Landroid/content/Context;

    const-string p1, "SpenResourceProvider"

    const-string v0, "SpenResourceProvider : set resource provider"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->setEngineAndResourceType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mContext:Landroid/content/Context;

    const-string p1, "SpenResourceProvider"

    const-string v0, "SpenResourceProvider : set resource provider"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->setEngineAndResourceType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convertEngineType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$1;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenResourceProvider$EngineType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->MATH:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->SHAPE:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    :goto_0
    return-object v0
.end method

.method private convertResourceType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$1;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenResourceProvider$ResourceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->FILE:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->ASSETS:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    :goto_0
    return-object v0
.end method

.method private createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createResourceProvider : create ResourceProviderImpl, engineType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->convertEngineType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->convertResourceType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenResourceProvider"

    const-string v1, "close : SpenResourceProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    return-void
.end method

.method public getAvailableLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableLocale : input language code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "ar"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-nez v0, :cond_1

    const-string v0, "getAvailableLocale : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getAvailableLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p2
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

    const-string v1, "SpenResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-nez v0, :cond_0

    const-string v0, "getDefaultLocale : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentData(Landroid/content/Context;)[[B
    .locals 2

    const-string v0, "SpenResourceProvider"

    const-string v1, "getDocumentData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-nez v1, :cond_0

    const-string v1, "getDocumentData : create mResProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getDocumentData(Landroid/content/Context;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getLanguageData(Landroid/content/Context;Ljava/lang/String;)[[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLanguageData : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-nez v0, :cond_0

    const-string v0, "getLanguageData : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getLanguageData(Landroid/content/Context;Ljava/lang/String;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .locals 3

    const-string v0, "SpenResourceProvider"

    const-string v1, "getSupportedLanguages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-nez v1, :cond_0

    const-string v1, "getSupportedLanguages : create mResProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getSupportedLanguages()[Ljava/lang/String;

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

    const-string v1, "SpenResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-nez v0, :cond_0

    const-string v0, "isSupportedLanguage : create mResProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->isSupportedLanguage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setEngineAndResourceType(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V
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

    const-string v1, "SpenResourceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mEngineType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResType:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->createResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    return-void
.end method

.method public setRootDirectory(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SpenResourceProvider"

    const-string/jumbo v1, "setRootDirectory : SpenResourceProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->setRootDirectory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
