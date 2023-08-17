.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mCustomItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

.field public mCustomItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

.field public mDefaultItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

.field public mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedDefaultTemplate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result p1

    return p1
.end method

.method public notifyAdapter()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mCustomItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;->onBind(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_item_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mCustomItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_item_added_menu_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mCustomItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mNeedDefaultTemplate:Z

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedMenuViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Z)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_item_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mDefaultItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_item_essential_menu_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mDefaultItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    return-object p2
.end method

.method public setCustomItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mCustomItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mItemList:Ljava/util/List;

    return-void
.end method

.method public setNeedDefaultTemplate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mNeedDefaultTemplate:Z

    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mCustomItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mDefaultItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->mCustomItemListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    return-void
.end method
