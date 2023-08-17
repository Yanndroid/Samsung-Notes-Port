.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private mMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScrollGestureListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;

.field private mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

.field private mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

.field private rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SearchModePresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->moveToFirstSearchResult()V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private moveToFirstSearchResult()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;->run()V

    :cond_0
    return-void
.end method

.method private releaseView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public backward()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canBackward()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;->searchBackward()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->setCurrent(I)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backward# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getCurrent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canForward()Z

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canBackward()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->updateMoveButton(ZZ)V

    :cond_0
    return-void
.end method

.method public clearSearchInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setSearchData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;->search(Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method public disableComposerFocusableInTouchMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public enableComposerFocusableInTouchMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public forward()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canForward()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;->searchForward()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->setCurrent(I)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forward# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getCurrent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canForward()Z

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canBackward()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->updateMoveButton(ZZ)V

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public hasBackgroundImage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->hasBackgroundImage()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->hide()V

    return-void
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    const-string v1, "hideSoftInput#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/b;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mScrollGestureListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mScrollGestureListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;Landroid/view/GestureDetector;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->addBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;)V

    return-void
.end method

.method public isBackgroundColorInverted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v0

    return v0
.end method

.method public onAfterSearchOnThread()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    const-string v3, "search hide"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBeforeSearchOnThread(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setSearchData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onChangedBackgroundColor(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->setColorTheme(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->releaseView()V

    return-void
.end method

.method public onDetachView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->releaseView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    return-void
.end method

.method public onPreSearchCancel()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    return-void
.end method

.method public onSearchDone(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSearchDone#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setSearchData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canForward()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->canBackward()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->updateMoveButton(ZZ)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->moveToFirstSearchResult()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;->onSearchDone(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchReady()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onUpdateSearchingResult(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getSearchData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getCount()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->setCount(I)V

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->hasFocusSearchText()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->hideSoftInput(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public releaseListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;Z)V

    return-void
.end method

.method public setListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mScrollGestureListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;

    const-string v1, "Composer"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "Scrolling_Direction"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$ScrollGestureListener;->setDirection(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    const-string v1, "show# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->rMoveToFirstSearchResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$MoveToFirstSearchResult;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->TAG:Ljava/lang/String;

    const-string v1, "showSoftInput#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->blockToHide(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->show(Landroid/view/View;)I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopActionMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->setContextMenu(Z)V

    return-void
.end method
