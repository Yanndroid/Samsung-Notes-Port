.class public Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRecognizer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

.field private mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mContext:Landroid/content/Context;

    const-string p1, "SpenRecognizer"

    const-string v0, "SpenRecognizer(Context context) : create default mResProvider"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->createResourceProvider(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    const-string p1, "SpenRecognizer"

    const-string p2, "SpenRecognizer(Context context, SpenRecognizerInterface pluginObject) : create default mResProvider"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    sget-object p2, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->createResourceProvider(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'pluginObject\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkPluginObject()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenRecognizer"

    const-string v1, "handwriting recognizer is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : handwriting recognizer is not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkResourceProvider()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenRecognizer"

    const-string v1, "resource provider is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE : resource provider is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSupportedLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SpenRecognizer"

    const-string v1, "getSupportedLanguage by static"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addHwrDataWith(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->addHwrDataWith(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    const-string v0, "SpenRecognizer"

    if-nez p1, :cond_0

    const-string p1, "Null stroke: skip it!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Empty stroke: skip it!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    const-string v0, "SpenRecognizer"

    if-nez p1, :cond_0

    const-string p1, "Null stroke: skip it!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$1;-><init>(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Empty stroke: skip it!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addStroke([F[F)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    const-string v0, "SpenRecognizer"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    if-eqz v1, :cond_2

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->addStroke([F[F)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p1, "wrong input data!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string p1, "null input: skip!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->cancel()V

    return-void
.end method

.method public clearHwrDataList()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->clearHwrDataList()V

    return-void
.end method

.method public clearStrokes()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->clearStrokes()V

    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenRecognizer"

    const-string v1, "close : mPluginObject and mResProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public createResourceProvider(Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    return-void
.end method

.method public getDisplayMetrics()[F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->getDisplayMetrics()[F

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    return-object v0
.end method

.method public getRecognizerType()Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->getRecognizerType()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->getValue()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->DEFAULT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    return-object v0
.end method

.method public getResourceProvider()Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    return-object v0
.end method

.method public getTextEngineVersion()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->getTextEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recognize()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->recognize()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object v0

    return-object v0
.end method

.method public recognize(FF)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->recognize(FF)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object p1

    return-object p1
.end method

.method public recognize(I)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->recognize(I)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object p1

    return-object p1
.end method

.method public request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V

    return-void
.end method

.method public request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;FF)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;FF)V

    return-void
.end method

.method public request(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$2;-><init>(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V

    return-void
.end method

.method public request(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;FF)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$3;-><init>(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;FF)V

    return-void
.end method

.method public setAnalyzerData([B)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setAnalyzerData([B)V

    return-void
.end method

.method public setConfigurationItem(Ljava/lang/String;F)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConfigurationItem : [name, value] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setConfigurationItem(Ljava/lang/String;F)V

    return-void
.end method

.method public setDisplayMetrics(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setDisplayMetrics(FF)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLanguage : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkResourceProvider()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguageData(Ljava/lang/String;[B[B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLanguageData : language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkResourceProvider()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mResProvider:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setLanguageData(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public setMathData([B)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setMathData([B)V

    return-void
.end method

.method public setPluginObject(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    return-void
.end method

.method public setRecognizerType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setRecognizerType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;)V

    return-void
.end method

.method public setRecognizerType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->getValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setRecognizerType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;)V

    return-void
.end method

.method public setStrokeModeEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setStrokeModeEnabled(Z)V

    return-void
.end method

.method public setTextRecognionType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setTextRecognitionType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;)Z

    move-result p1

    return p1
.end method

.method public setTextRecognitionMode(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->getValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setTextRecognitionMode(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;)Z

    move-result p1

    return p1
.end method

.method public setTextRecognitionType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->getValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setTextRecognitionType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;)Z

    move-result p1

    return p1
.end method

.method public setUserDictionary(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->checkPluginObject()V

    const-string v0, "SpenRecognizer"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userWords size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->mPluginObject:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;->setUserDictionary(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p1, "wrong input parameter -> userWords"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
