.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRLanguageManager"


# instance fields
.field private mDownloadableLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

.field private mLanguagePack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->initialize()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public awake()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    const-string v1, "awake : mLanguageManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->awakeContentProvider()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->unregisterReceiver()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->registerReceiver()V

    return-void
.end method

.method public isSupportedLanguage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public update()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageManager()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    const-string v1, "[HWRLanguageManager : updateList] Fail to update list!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->getLanguagePacks()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Language list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isDownloaded()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mInstalledLanguage:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installed Language list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguagePack:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isInstallable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mDownloadableLanguage:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloadable Language list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "update() : download the latest resource list from server!"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResourceListFromServer()V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageManager(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;)V

    return-void
.end method
