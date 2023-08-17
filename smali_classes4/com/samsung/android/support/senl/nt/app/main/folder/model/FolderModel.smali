.class public Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderModel"


# instance fields
.field private mFolderDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderDisplayDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

.field private mIsNeedDataChange:Z

.field private mNewUuid:Ljava/lang/String;

.field private mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

.field private mSelectedUuid:Ljava/lang/String;

.field private mToBeDeletedUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mToBeDeletedUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mSelectedUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNewUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mIsNeedDataChange:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->init()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildrenMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/Map;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mToBeDeletedUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mSelectedUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNewUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mIsNeedDataChange:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->init()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    return-void
.end method

.method private collectingFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collectingFolderData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-nez v0, :cond_1

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

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->collectingFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getChildFolderListWithoutIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getChildFolderListWithoutIgnoreFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getChildFolderListWithoutIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isReservedFolderForDataSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    :cond_2
    if-nez p3, :cond_3

    return v1

    :cond_3
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private move(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->move(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "move# : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FolderModel"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addFolderData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFolderData# folderName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->insertFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attachAddFolderItem(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachAddFolderItem# attach : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "addFolder:///"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v0, 0x0

    const-string v3, "Add Folder"

    invoke-direct {p1, v2, v0, v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    const-wide/16 v3, -0xd

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setDepth(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public attachAllNotesItem()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    :cond_1
    const-string v0, "FolderModel"

    const-string v1, "attachAllNotesItem# attach"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->DISPLAY_NAME:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public changeColorData(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeColorData# uuidCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public collapseFolderDisplayData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapseFolderDisplayData# name : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FolderModel"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getChildFolderListWithoutIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->collapseFolderDisplayData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    goto :goto_0

    :cond_5
    return v0
.end method

.method public expandedFolderDisplayData(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getChildFolderListWithoutIgnoreFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expandedFolderDisplayData# children count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getExpandedFolderCount(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getExpandedFolderCount(Ljava/util/List;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    return-object p1
.end method

.method public getFolderDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-object v0
.end method

.method public getNewUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNewUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNotesLockDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    return-object v0
.end method

.method public getObserver(Ljava/util/Collection;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree_LiveData(Ljava/util/Collection;Z)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getParentUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPositionExpandedFolderCount(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getExpandedFolderCount(Ljava/util/List;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v0
.end method

.method public getSelectedUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mSelectedUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getToBeDeletedUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mToBeDeletedUuid:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-void
.end method

.method public initFolderDisplayDataList()V
    .locals 2

    const-string v0, "FolderModel"

    const-string v1, "initFolderDisplayDataList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->collectingFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    return-void
.end method

.method public isNeedDataChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mIsNeedDataChange:Z

    return v0
.end method

.method public moveFolderData(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMaximumFolderDepth(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v4

    sub-int/2addr v5, v4

    const/16 v4, 0x32

    if-lt v5, v4, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->move(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveFolderData# moveCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , to : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FolderModel"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mToBeDeletedUuid:Ljava/lang/String;

    const-string v1, "folderUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renameFolderData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renameFolderData# folderName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    return-void
.end method

.method public restoreFolderMsSyncExpandState()V
    .locals 6

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "folder_ms_sync_expand_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "FolderModel"

    const-string v5, "restoreFolderMsSyncExpandState"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->setExpandedJSONObject(Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restoreFolderPickerExpandState()V
    .locals 6

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "folder_picker_expand_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v4, "FolderModel"

    const-string v5, "restoreFolderPickerExpandState"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->setExpandedJSONObject(Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "folderUuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mToBeDeletedUuid:Ljava/lang/String;

    return-void
.end method

.method public saveFolderMsSyncExpandState()V
    .locals 3

    const-string v0, "FolderModel"

    const-string v1, "saveFolderMsSyncExpandState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "folder_ms_sync_expand_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveFolderPickerExpandState()V
    .locals 3

    const-string v0, "FolderModel"

    const-string v1, "saveFolderPickerExpandState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getExpandedJSONObject(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_picker_expand_state"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedDataChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mIsNeedDataChange:Z

    return-void
.end method

.method public setNewUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mNewUuid:Ljava/lang/String;

    return-void
.end method

.method public setSelectedUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mSelectedUuid:Ljava/lang/String;

    return-void
.end method

.method public setToBeDeletedUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mToBeDeletedUuid:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update# : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FolderModel"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFolderData# folderName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderModel"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public updateFolderDataMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFolderDataMap# size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeSortUtils;->sort(Ljava/util/Map;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setViewType(I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setId(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->mFolderDataMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->drawerOrdering(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    return-void
.end method
