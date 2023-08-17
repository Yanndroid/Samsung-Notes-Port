.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;,
        Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;
    }
.end annotation


# static fields
.field private static final ALL_CATEGORY_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ST$ImportCategorySpinnerAdapter"


# instance fields
.field private final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

.field private final mCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->uncategorised:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getDefaultTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "ST$ImportCategorySpinnerAdapter"

    const-string v0, "Invalid spinner position"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notespicker_spinner_dropdown_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/a;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->category_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->category_count:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;

    if-eqz p3, :cond_2

    iget-object v1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mCounts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, " (%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getSpinnerListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getSelectedCategoryPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_title_color:I

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/adapter/ImportCategorySpinnerAdapter$Contract;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid view holder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
