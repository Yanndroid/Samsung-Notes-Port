.class public Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFolderAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

.field public final mFolderAnimateMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;

.field public final mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

.field public final mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

.field public final mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAnimateMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;

    return-void
.end method


# virtual methods
.method public addAnimateItem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAnimateMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;->addAnimateItem(Ljava/lang/String;)V

    return-void
.end method

.method public addCheckedItem(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->isCheckedItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->addCheckedItem(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->addDimStatusItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public attachAddFolderItem(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->attachAddFolderItem(Z)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    const-string p2, "addFolder:///"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->clearDimStatusItems()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAnimateItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAnimateMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;->clearAnimateItems()V

    return-void
.end method

.method public clearCheckedItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->clearCheckedItems()V

    return-void
.end method

.method public getCheckedItemUuidList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->getCheckedItemUuidList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedRootItemUuidList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->getCheckedRootItemUuidList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDimFolderCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFolderCount()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    const-string v3, "addFolder:///"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public getFolderDisplayDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFolderMoveMap()Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getSelectedUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getSelectedUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAnimateMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderAnimateMap;->isAnimateItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCheckedItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->isCheckedItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onReplaceCheckedItems()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->isCheckedItem(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasParent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->isCheckedItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->addCheckedItem(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->saveCheckedItem(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectAll(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addCheckedItem(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->removeCheckedItem(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public removeCheckedItem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->isCheckedItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->removeCheckedItem(Ljava/lang/String;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderCheckMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderCheckMap;->loadCheckedItem(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSelectedUuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    return-void
.end method
