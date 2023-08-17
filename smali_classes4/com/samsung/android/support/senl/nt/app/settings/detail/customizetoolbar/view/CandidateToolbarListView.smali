.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;
.super Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateToolbarDragShadowBuilder;,
        Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;
    }
.end annotation


# static fields
.field private static final COLUMN_NUM:I = 0x6

.field private static final DIVIDER_NUM:I = 0x5

.field private static final ITEM_WIDTH_PERCENT:F = 0.16666667f

.field private static final TAG:Ljava/lang/String; = "CandidateToolbarListView"


# instance fields
.field private final mFlow:Landroidx/constraintlayout/helper/widget/Flow;

.field private mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mNotice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->candidate_list:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mParent:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->candidate_empty_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mNotice:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mList:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->candidate_list_flow:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/helper/widget/Flow;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mFlow:Landroidx/constraintlayout/helper/widget/Flow;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->setMaxElementsWrap(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mList:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->getToolbarList(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->initChild(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->initItemDivider()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->updateNotice()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/a;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;->playAnimation()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->dragEnterItem()V

    return-void
.end method

.method private dragEnterItem()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragEnterItem# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CandidateToolbarListView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->addEmptyItem(II)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->updateAllChild()V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->getDragNDropDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->setDragNDropDescription(Ljava/lang/String;)V

    return-void
.end method

.method private getDragNDropDescription(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->setting_custom_move_to_row_column:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, p1, 0x6

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    rem-int/lit8 p1, p1, 0x6

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initItemDivider()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->candidate_list_item_divider_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v1, 0x5

    new-array v6, v1, [I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->settings_toolbar_item_divider_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_customize_toolbar_item_divider:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    aput v4, v6, v3

    aget v4, v6, v3

    invoke-virtual {v0, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    aget v4, v6, v3

    invoke-virtual {v0, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChainRtl(IIII[I[FI)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateGridParam(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->settings_toolbar_candidate_container_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const v0, 0x3e2aaaab

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addEmptyItem(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->getEmptyIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "EmptyItem"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->createToolbarItem(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mList:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mStartDragListener:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mEndDragListener:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->setOnDragListener(Landroid/view/View$OnDragListener;Landroid/view/View$OnDragListener;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->clearEmptyData(Z)V

    return-void
.end method

.method public dragEnterItem(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mType:Ljava/lang/String;

    const-string v1, "EmptySpace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->isEmptyExist()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->dragEnterItem(II)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->getDragNDropDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->setDragNDropDescription(Ljava/lang/String;)V

    return-void
.end method

.method public getDragShadowBuilder(Landroid/view/View;)Landroid/view/View$DragShadowBuilder;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateToolbarDragShadowBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateToolbarDragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public initChildItem(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->isUnsupportedFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->createToolbarItem(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mStartDragListener:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mEndDragListener:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->setOnDragListener(Landroid/view/View$OnDragListener;Landroid/view/View$OnDragListener;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mList:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public initDragListener()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mStartDragListener:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mEndDragListener:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;

    return-void
.end method

.method public isDefaultState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isOtherEmptyExist()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->isEmptyExist(Z)Z

    move-result v0

    return v0
.end method

.method public setSelectItem(ILjava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->setSelectedItem(ZILjava/lang/String;)V

    return-void
.end method

.method public updateChildParams(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemResource:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIcon:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIconName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "EmptyItem"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->toolbar_icon_empty_drawable:I

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIconName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIconName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mList:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemResource:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->getItemDescription(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mList:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mIconName:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p2, v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilMediumSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->toolbar_icon_drawable:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mItemContainer:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->updateGridParam(Landroid/view/View;)V

    return-void
.end method

.method public updateChildReference([I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChildReference# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CandidateToolbarListView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mFlow:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    return-void
.end method

.method public updateNotice()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->updateNotice()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mNotice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->setting_custom_candidate_empty_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mNotice:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->mItemDivider:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
