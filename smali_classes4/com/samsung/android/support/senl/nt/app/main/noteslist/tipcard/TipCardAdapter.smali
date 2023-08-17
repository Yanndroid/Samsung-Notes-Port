.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

.field private mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

.field private final mTipCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const-string v0, "TipCardAdapter"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    return-void
.end method

.method private getTipCardIndexFromType(I)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->getModeIndex()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isValidTipCardOnMode(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TipCardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTipCard# type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->setCurrentPage(I)V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearTipCard(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTipCard# TipCard size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isExcludeProgressTipCard : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->isProgressTipCard()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem# sortedPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TipCardAdapter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView;->setPageTag(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public isAvailableMdeTipCard(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isAvailableTipCard(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->getFolderUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isFilterFolderType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isContainedTipCard(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isValidTipCardOnMode(II)Z
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isAvailableTipCard(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isAvailableTipCard(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x14

    if-eq p2, p1, :cond_3

    const/16 p1, 0x15

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isAvailableMdeTipCard(I)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeTipCard(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCards(Ljava/util/List;)V

    return-void
.end method

.method public removeTipCards(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "TipCardAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTipCard# type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removingTipCard : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", TipCardList : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->notifyDataSetChanged()V

    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTipCardAdapterListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    return-void
.end method

.method public setTipCardViewContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    return-void
.end method

.method public updateProgress(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->getTipCardIndexFromType(I)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->mTipCardAdapterListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;->notifyDataSetChanged()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
