.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$View;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

.field private mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

.field private mTagAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TagListView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public getHideAnimator()Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getShowAnimator()Landroid/animation/Animator;
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView$1;

    invoke-direct {v7, p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x32

    int-to-long v9, v3

    mul-long/2addr v9, v7

    invoke-virtual {v6, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array v7, v5, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView$2;

    invoke-direct {v8, p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0xc8

    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    new-array v4, v5, [Landroid/animation/Animator;

    aput-object v6, v4, v2

    const/4 v5, 0x1

    aput-object v7, v4, v5

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :array_0
    .array-data 4
        0x50
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getTag()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public init(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;F)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_tag_list:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$View;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mTagAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getTagList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->setTagList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mTagAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {p1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    new-instance p1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-direct {p1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_title_tag_item_background:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public isDarkTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mTagAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->isDarkTheme()Z

    move-result v0

    return v0
.end method

.method public setDarkTheme(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mTagAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mTagAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->setEditable(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateTagListView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getTagList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagAdapter;->setTagList(Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
