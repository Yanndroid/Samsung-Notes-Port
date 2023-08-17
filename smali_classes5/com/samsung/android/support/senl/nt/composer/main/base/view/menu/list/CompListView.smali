.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListContract;


# instance fields
.field private mAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;

.field private mCompListViewBorder:Landroid/view/View;

.field private mComposerContainer:Landroid/view/ViewGroup;

.field private mIsTabletLayout:Z

.field private mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

.field private mPageList:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

.field private mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mIsTabletLayout:Z

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_list_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_list_container_border:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mCompListViewBorder:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->composer_fragment_content:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mComposerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_list_menu_layout:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->updateAntiGreenishColor(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mIsTabletLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->initTabletLayout(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->initPhoneLayout(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    return-object p0
.end method

.method private addPageList(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListResourceUtils;->setDescriptions(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPageList:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->hideWithoutAnim()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->setVisibleOfComposerContainer(Z)V

    return-void
.end method

.method private hideWithoutAnim()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;->hideAnimationView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mCompListViewBorder:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->onPostHide()V

    return-void
.end method

.method private initPhoneLayout(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->addPageList(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_list_background_view:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListPhoneAnimator;-><init>(Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;

    return-void
.end method

.method private initTabletLayout(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_list_internal_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->addPageList(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/ListTabletAnimator;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator$IAnimatorListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;

    return-void
.end method

.method private isVisibleOfComposerContainer()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mComposerContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setVisibleOfComposerContainer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mComposerContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->onPreHide()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->setVisibleOfComposerContainer(Z)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mIsTabletLayout:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;->startHidingAnim()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->hideWithoutAnim()V

    :goto_0
    return-void
.end method

.method public hideForActivityResult()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mIsTabletLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->isVisibleOfComposerContainer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->hide(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isShown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListContract;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPageList:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V

    return-void
.end method

.method public show(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mCompListViewBorder:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mIsTabletLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->setVisibleOfComposerContainer(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/animator/IListAnimator;->startShowingAnim()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->mPageList:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->updateView()V

    return-void
.end method
