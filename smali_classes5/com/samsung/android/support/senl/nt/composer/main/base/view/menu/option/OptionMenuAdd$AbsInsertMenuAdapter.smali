.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbsInsertMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public itemArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)V

    return-void
.end method


# virtual methods
.method public bindItemView(Landroid/widget/LinearLayout;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->item_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;->name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->item_button:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;->icon:I

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_moreoption_icon_color_filter:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public abstract createItemOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->bindItemView(Landroid/widget/LinearLayout;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->createItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
