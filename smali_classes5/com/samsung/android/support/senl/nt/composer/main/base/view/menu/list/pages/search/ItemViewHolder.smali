.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final mDeleteButton:Landroid/widget/ImageView;

.field private final mItemContainer:Landroid/widget/LinearLayout;

.field private final mKeywordView:Landroid/widget/TextView;

.field private final mUpdateTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->keyword:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mKeywordView:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->update_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mUpdateTimeView:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->contents_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mItemContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->delete_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->notes_clear_search_icon_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->setPopupType(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getDeleteButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getItemContainer()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mItemContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getKeywordView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mKeywordView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpdateTimeView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/ItemViewHolder;->mUpdateTimeView:Landroid/widget/TextView;

    return-object v0
.end method
