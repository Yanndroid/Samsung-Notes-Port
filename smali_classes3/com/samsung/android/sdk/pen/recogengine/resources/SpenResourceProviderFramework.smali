.class public Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenResourceProviderFramework"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenResourceProviderFramework"

    const-string v1, "close : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-nez v1, :cond_0

    const-string v1, "close : language manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

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

    const-string v1, "SpenResourceProviderFramework"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-nez v0, :cond_0

    const-string p1, "getDefaultLocale : language manager is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResourceData(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)[[B
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getResourceData : language = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenResourceProviderFramework"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-nez p1, :cond_0

    const-string p1, "getResourceData : language manager is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getResourcesByBuffer(Ljava/lang/String;)[[B

    move-result-object p1

    return-object p1
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .locals 2

    const-string v0, "SpenResourceProviderFramework"

    const-string v1, "getSupportedLanguages : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-nez v1, :cond_0

    const-string v1, "getSupportedLanguages : language manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->getSupportedLanguages()[Ljava/lang/String;

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

    const-string v1, "SpenResourceProviderFramework"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFramework;->mLangManager:Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;

    if-nez v0, :cond_0

    const-string p1, "isSupportedLanguage : language manager is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManager;->isSupportedLanguage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setRootDirectory(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRootDirectory : do not use in framework! root dir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenResourceProviderFramework"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
