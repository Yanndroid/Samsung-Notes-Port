.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HolderInfoMap"


# instance fields
.field private final mHolderInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    return-void
.end method

.method private hasNote(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method private needSortBarVisible(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSortBarVisibleMode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasNote(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getHolderInfoDisplayedCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->needSortBarVisible(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    add-int/2addr v1, v0

    return v1
.end method

.method public getRelatedTagDisplayData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->putHolderInfoMap(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRelatedTagDisplayData# selected tag size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HolderInfoMap"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$HashTag;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v1

    const-wide/16 v2, -0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$HashTag;-><init>(JLjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasHolderInfo(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public indexOfHolderInfoMap(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->needSortBarVisible(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isGcsSpaceMode()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getHolderType(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getTopHolderInfoMapOrder()[I

    move-result-object v3

    array-length v3, v3

    if-le v3, p2, :cond_4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v2, :cond_6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v3, v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    if-ne v3, v1, :cond_5

    return p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public initHolderInfoMap()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public putHolderInfoMap(IZ)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getModeIndex()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->needToShowSSMProgressBar(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putHolderInfoMap# holderType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HolderInfoMap"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeHolderInfoMap(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeHolderInfoMap# holderType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HolderInfoMap"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->mHolderInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSortBarCommonDisplayList(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->needSortBarVisible(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->putHolderInfoMap(IZ)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$SortBar;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortType()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getOrderType()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isPinFavorites()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$SortBar;-><init>(IIZ)V

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public sortTopHolderDisplayList(Ljava/util/List;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->indexOfHolderInfoMap(Ljava/util/List;I)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->hasHolderInfo(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sortTopHolderDisplayList# holderType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hasHolderInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HolderInfoMap"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    if-ne v1, v0, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getTopHolderInfoMapOrder()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_4

    aget v7, v2, v5

    if-ne v7, p2, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getHolderType(I)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;-><init>(I)V

    invoke-interface {p1, v6, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v6

    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/HolderInfoMap;->indexOfHolderInfoMap(Ljava/util/List;I)I

    move-result v7

    if-ne v7, v0, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eq v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    return v1
.end method
