.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;
.source "SourceFile"


# instance fields
.field private final mAddButton:Landroid/view/View;

.field private final mDeleteButton:Landroid/view/View;

.field private final mMenuDoneTextView:Landroid/view/View;

.field private final mMenuSetDelete:Landroid/view/ViewGroup;

.field private final mMenuSetNormal:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_item_added_menu_mode_normal:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuSetNormal:Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_item_added_menu_mode_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuSetDelete:Landroid/view/ViewGroup;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_item_added_menu_done_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuDoneTextView:Landroid/view/View;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_item_added_menu_add_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mAddButton:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_item_added_menu_delete_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getMode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuSetNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuSetDelete:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->setExpandButton(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mAddButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mDeleteButton:Landroid/view/View;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuSetNormal:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuSetDelete:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;->mMenuDoneTextView:Landroid/view/View;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabled(Landroid/view/View;)V

    :goto_0
    return-void
.end method
