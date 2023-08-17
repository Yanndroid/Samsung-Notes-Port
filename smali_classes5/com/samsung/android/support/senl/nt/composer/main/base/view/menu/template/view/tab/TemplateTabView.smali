.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mContainer:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field public mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TemplateTabView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_dialog_template_change:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_default_template_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_added_template_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mRootView:Landroid/view/View;

    return-void
.end method

.method private getTemplateListHeight(Landroid/content/res/Resources;ZI)I
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_essential_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_essential_item_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_essential_item_margin_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getDefaultViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getAddedViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    mul-int/2addr v0, p2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getTopBottomMarginFromView(Landroid/view/View;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method


# virtual methods
.method public getAddedViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    return-object v0
.end method

.method public getDefaultViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    return-object v0
.end method

.method public getGridLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getDefaultViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getAddedViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    if-lez v0, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mRootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getTopBottomMarginFromView(Landroid/view/View;)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getTopBottomMarginFromView(Landroid/view/View;)F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getTopBottomMarginFromView(Landroid/view/View;)F

    move-result v3

    add-float/2addr v1, v3

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public initLayout(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getGridLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getGridLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public abstract initOptionView(Landroid/os/Bundle;)V
.end method

.method public scrollToPosition(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract setBottomPadding(IZ)V
.end method

.method public setEnableNestedScroll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startExpandableListAnimation(ZI)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getDefaultViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getAddedViewLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->TAG:Ljava/lang/String;

    const-string p2, "startExpandableListAnimation(). gridLayoutManager is null"

    :goto_2
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_recyclerview_menu_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_recyclerview_menu_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->getTemplateListHeight(Landroid/content/res/Resources;ZI)I

    move-result p2

    add-int/2addr v1, p2

    :goto_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p2

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startExpandableListAnimation(). currentHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", targetHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v0

    const/4 p2, 0x1

    aput v1, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;)V

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;)V

    :goto_4
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_7
    :goto_5
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->TAG:Ljava/lang/String;

    const-string p2, "startExpandableListAnimation(). menuHolder is null"

    goto/16 :goto_2
.end method
