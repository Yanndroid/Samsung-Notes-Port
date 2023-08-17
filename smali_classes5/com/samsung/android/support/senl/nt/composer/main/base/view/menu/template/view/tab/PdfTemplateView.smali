.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/PdfTemplateView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;)V

    return-void
.end method


# virtual methods
.method public initOptionView(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->change_template_page_setting_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBottomPadding(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_essential_item_margin_top:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_1
    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
