.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "HWLanguagePresenter"


# instance fields
.field private mCaller:Ljava/lang/String;

.field private final mDeleteListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadInQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

.field private mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

.field private final mListenableDownloadComplete:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

.field private final mListenableDownloadProgress:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

.field private final mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDeleteListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadInQueue:Ljava/util/List;

    const-string v0, "callee_settings"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mCaller:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mListenableDownloadProgress:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mListenableDownloadComplete:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    return-object p0
.end method

.method private addHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->setType(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->addLanguageInfo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->hasDownloadedLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->setType(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->addLanguageInfo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->hasAvailableLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->setType(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->addLanguageInfo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)V

    :cond_1
    return-void
.end method

.method private addLanguageInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->isPreloadedLanguage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;)V

    const/4 v0, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->isCallFromComposer()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;)V

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->setType(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->addLanguageInfo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getDeleteListener(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDeleteListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDeleteListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getDownloadListener(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initLanguageDownloadHelper()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->init(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mListenableDownloadProgress:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mListenableDownloadComplete:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    :cond_0
    return-void
.end method

.method private isPreloadedLanguage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isPreloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->isPreloadedLang(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private notifyLoadFinished()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->sortHWLanguageHolderInfos()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/PresenterContract;->onDataLoadFinished(I)V

    return-void
.end method


# virtual methods
.method public getHWLanguageAdapter()Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->init()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->initLanguageDownloadHelper()V

    return-void
.end method

.method public isCallFromComposer()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mCaller:Ljava/lang/String;

    const-string v1, "callee_composer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDownloadInProgress(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isDownloadInProgress(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDownloadInQueue(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->getLocaleListInQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadInQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isDownloaded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isDownloaded(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isDownloaded(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInstallable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isInstallable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPreloaded(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->isPreloadedLanguage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUpdateAvailable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isUpdateAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->getDeleteListener(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->deleteLanguage(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$DeleteListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDeleteListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->release()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDeleteListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadInQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mListenableDownloadProgress:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mListenableDownloadComplete:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    return-void
.end method

.method public onDownload(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->getLocaleListInQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->getDownloadListener(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->download(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$DownloadListener;)V

    return-void
.end method

.method public onDownloadCancel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadLanguageData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language list size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HWLanguagePresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mHWLanguageAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->clearData()V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->addLanguageInfo(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->addHeaderInfo()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->notifyLoadFinished()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "settings_handwriting_download_in_queue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mDownloadInQueue:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->isInitFinished(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$InitFinishedListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mLanguageDownloadHelper:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;->getLocaleListInQueue()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "settings_handwriting_download_in_queue"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->mCaller:Ljava/lang/String;

    return-void
.end method
