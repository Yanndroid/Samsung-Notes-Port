.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRLanguagePackManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

.field private mDownloadSizeReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDownloadSizeReceiver;

.field private mIsRegisterReceiver:Z

.field private mIsUpdateInProgress:Z

.field private mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

.field private mLanguagePacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePacksNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

.field private mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

.field private final mRefreshListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServerConnection:Z

.field private mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mServerConnection:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->setOnLanguagePackListener(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;Ljava/util/Map;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateAvailableLanguageList(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;Ljava/util/Map;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateInstalledLanguageList(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;Ljava/util/Map;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateDownloadingLanguageList(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private updateAvailableLanguageList(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[updateAvailableLanguageList] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "[updateAvailableLanguageList] input is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAvailableLanguageList] Available List, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v0, "[updateAvailableLanguageList] Completed!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private updateDownloadingLanguageList(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[updateDownloadingLanguageList] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "[updateDownloadingLanguageList] input is null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDownloadingLanguageList] Downloading List, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDownloadingLanguageList] There is no language in map : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v0, "[updateDownloadingLanguageList] Completed!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_4
    const-string p1, "[updateDownloadingLanguageList] mLanguagePacksNew is null or zero size when updating downloading list."

    goto/16 :goto_0
.end method

.method private updateInstalledLanguageList(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "[updateInstalledLanguageList] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "[updateInstalledLanguageList] input is null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateInstalledLanguageList] Installed List, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Samsung HWR Language : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Latest : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isLatest()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isLatest()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v0, "[updateInstalledLanguageList] Completed!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_3
    const-string p1, "[updateInstalledLanguageList] mLanguagePacksNew is null when updating installed list."

    goto/16 :goto_0
.end method


# virtual methods
.method public awakeContentProvider()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "awakeContentProvider : mRMHelper is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->awakeContentProvider()Z

    move-result v0

    return v0
.end method

.method public deleteResult(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteResult: lang = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyDeleteResult(Z)V

    :cond_0
    return-void
.end method

.method public downloadSizeResult(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadSizeResult: lang = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyDownloadSizeResult(J)V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    return-object p1
.end method

.method public getLanguagePacks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public registerReceiver()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver: mIsRegisterReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_DOWNLOAD_LANG_SIZE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDownloadSizeReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDownloadSizeReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadSizeReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDownloadSizeReceiver;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadSizeReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDownloadSizeReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver: receivers are registered, mIsRegisterReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setProgressLanguage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Receiver is not unregistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress Receiver is not unregistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete Receiver is not unregistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadSizeReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDownloadSizeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadSize Receiver is not unregistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver: receivers are unregistered, mIsRegisterReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLanguageManager(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v1, "Language list is updating... just return"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageManager()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v0, "[updateLanguageManager] All language list updated."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    move p1, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v2, "[updateLanguageManager] Fail to update language list!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;->onComplete(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized updateLanguageManager()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->isContentProviderAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v2, "[updateLanguageManagerSync] ContentProvider is not available!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string v2, "[updateLanguageManagerSync] ContentProvider is available!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetAvailableList()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetInstalledLangList()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetDownloadingLangList()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateLanguageManagerSync] availableListUpdated, installedListUpdated, downloadingListUpdated : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateResourceListFromServer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->updateResourceList()V

    :cond_0
    return-void
.end method

.method public updateResult(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateResult: lang = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyUpdateResult(I)V

    :cond_0
    return-void
.end method
