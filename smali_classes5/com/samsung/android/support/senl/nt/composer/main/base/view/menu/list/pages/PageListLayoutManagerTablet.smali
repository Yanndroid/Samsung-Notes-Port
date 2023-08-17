.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;
.source "SourceFile"


# instance fields
.field private final mEditBtn:Landroid/widget/TextView;

.field private mPageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

.field private final mViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;-><init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mViewContainer:Landroid/view/ViewGroup;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_page_list_edit_btn:I

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mEditBtn:Landroid/widget/TextView;

    return-void
.end method

.method private updateContainerWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_container_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_menu_edit_button_max_width:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_container_width_land:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_menu_edit_button_max_width_land:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mEditBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->getGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mLastConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->updateContainerWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mPageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;->onOrientationChanged()V

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->getSpanCount(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->setSpanCount(I)V

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->mPageAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    return-void
.end method

.method public updateContainerWidth()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mLastConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerTablet;->updateContainerWidth(I)V

    return-void
.end method
