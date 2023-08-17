.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/RelatedHashTagListHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;


# static fields
.field private static final TAG:Ljava/lang/String; = "RelatedHashTagListHolder"


# instance fields
.field private final mHashTagListLayout:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    const/16 p2, 0x800

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->hash_tag_list_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/RelatedHashTagListHolder;->mHashTagListLayout:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->setContract(Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;)V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getHashTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getAllTagsInUse()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getHashTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getRelatedTags(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decorate# tag size : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RelatedHashTagListHolder"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/RelatedHashTagListHolder;->mHashTagListLayout:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->reloadTags(Ljava/util/List;)V

    return-void
.end method

.method public isSelectedTag(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getSelectedTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onTagSelected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getSelectedTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onHashTagSelected(Ljava/util/Set;)V

    return-void
.end method
