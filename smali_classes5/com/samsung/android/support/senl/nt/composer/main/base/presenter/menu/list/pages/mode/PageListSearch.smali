.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private final mController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

.field private mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

.field private mIsRestoring:Z

.field private final mIsSearching:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;"
        }
    .end annotation
.end field

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private volatile mSearchMode:Z

.field private mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageListSearch"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsSearching:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->cancelSearchByEdit(Ljava/lang/String;)V

    return-void
.end method

.method private cancelSearchByEdit(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSearchByEdit# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->updateNoResultState()V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private releaseHistoryEventListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    :cond_0
    return-void
.end method

.method private updateNoResultState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->updateNoResultView(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public deleteAllSearchKeyword()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;->getRecentSearchKeywords()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;->getInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->updateNoResultView(Z)V

    return-void
.end method

.method public deleteSearchKeyword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;->getRecentSearchKeywords()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;->remove(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->updateNoResultView(Z)V

    return-void
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentSearchKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;->getRecentSearchKeywords()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;->getInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)V

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCachePath:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->init(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Ljava/lang/String;)V

    return-void
.end method

.method public onAfterSearchOnThread()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string v1, "onAfterSearchOnThread#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->waitToFinish()V

    return-void
.end method

.method public onBeforeSearchOnThread(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string v1, "onBeforeSearchOnThread#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setSearchData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->ready()V

    return-void
.end method

.method public onPreSearchCancel()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string v1, "onPreCancelSearch#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->cancel()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->updateNoResultState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsSearching:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    return-void
.end method

.method public onSearchDone(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchDone# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsSearching:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getSearchResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->updateNoResultView(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->updateScrollbar(I)V

    return-void

    :cond_2
    const-string p1, "update# result is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->updateNoResultState()V

    return-void

    :cond_3
    :goto_0
    const-string p1, "onSearchDone# search mode off"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchReady()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string v1, "onSearchReady#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->updateNoResultView(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsSearching:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    return-void
.end method

.method public onUpdateSearchingResult(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->setCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->addSearchResults(Lcom/samsung/android/sdk/composer/search/SearchData;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->submit(Lcom/samsung/android/sdk/composer/search/SearchData;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string p2, "onSearchDone# search mode off"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchResultUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->releaseHistoryEventListener()V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsRestoring:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;Z)V

    return-void
.end method

.method public setCachePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->getPageSearchDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCachePath:Ljava/lang/String;

    return-void
.end method

.method public setRestoring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsRestoring:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSearchMode# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchMode:Z

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mSearchMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mIsSearching:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mHistoryEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch$HistoryEventListenerImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterHistoryEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$HistoryEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->releaseHistoryEventListener()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    :goto_0
    return-void
.end method

.method public submitSearchKeyword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;->getRecentSearchKeywords()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywords;->add(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageIndexList([I[Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    const-string v1, "updatePageIndexList#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mPageIdList:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePageIndexList# result "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
