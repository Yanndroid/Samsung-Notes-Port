.class public Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;",
        ">;",
        "Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OldCategoryAdapter"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private getOldCategoryDataByPosition(I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;->getOldCategoryData(I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;->getOldCategoryDataCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->getOldCategoryDataByPosition(I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getId()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->getOldCategoryDataByPosition(I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getViewType()I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OldCategoryAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->getOldCategoryDataByPosition(I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->getItemCount()I

    move-result v1

    add-int/2addr p2, v2

    if-ne v1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->decorateItemView(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;Z)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne v1, p2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->decorateDescriptionView()V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "OldCategoryAdapter"

    const-string v1, "onCreateViewHolder# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->old_category_list_item_holder:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->old_category_list_description_holder:I

    :goto_0
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->setContract(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;)V

    return-object p2
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;->onItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;

    return-void
.end method

.method public startConvertAllNotes()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;->startConvertAllNotes()V

    return-void
.end method
