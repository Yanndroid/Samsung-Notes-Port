.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

.field private final mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

.field private final mHandler:Landroid/os/Handler;

.field private mPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;"
        }
    .end annotation
.end field

.field private mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private mSkipBookmarkUpdated:Z

.field private final mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageListDataManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    return-object p0
.end method


# virtual methods
.method public adjustCurrentPageIndex(I)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCurrentPageIndex# pageIndex / result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAllPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    return-object v0
.end method

.method public getPageIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPageInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    return-object v0
.end method

.method public getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object v0
.end method

.method public insertSALogWithMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->insertSALogWithMode(Ljava/lang/String;)V

    return-void
.end method

.method public isBookmarked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->isBookmarked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isLastPage(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->isMode(I)Z

    move-result p1

    return p1
.end method

.method public isNotNeededToUpdatePageState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPrepared()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrepared#,  page list size is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBookmarkPageUpdated(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public onBookmarkUpdated(Ljava/lang/String;IZZ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mSkipBookmarkUpdated:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p4

    invoke-virtual {p1, p2, p4, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onBookmarkUpdated(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDeletedPages(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isNotNeededToUpdatePageState()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;->isThread()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageDeleted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void
.end method

.method public onInsertedPages(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isNotNeededToUpdatePageState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;->isThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageInserted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    return-void
.end method

.method public onPageIndexChanged(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isNotNeededToUpdatePageState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageIndexChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isAvailableToUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->adjustCurrentPageIndex(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->notifyCurrentPageIndexChanged(IZZ)V

    :cond_1
    return-void
.end method

.method public onUpdatePage(IIILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isNotNeededToUpdatePageState()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageListChanged(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageMoved(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;

    invoke-interface {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-result-object p4

    invoke-virtual {p1, p3, p4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageUpdated(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;I)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public resetData()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageIdList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    return-void
.end method

.method public setBookmarkModel(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->addListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;)V

    return-void
.end method

.method public setPageListMode(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageListMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    return-void
.end method

.method public setPageManager(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->addListener(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->addPageIndexObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$PageIndexObserver;)V

    return-void
.end method

.method public updateBookmark(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mSkipBookmarkUpdated:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->update(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->mSkipBookmarkUpdated:Z

    :cond_0
    return-void
.end method
