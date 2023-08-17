.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteCategory(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree WHERE UUID = :uuid"
    .end annotation
.end method

.method public abstract deleteCategoryClosure(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree_closure WHERE descendant = :uuid"
    .end annotation
.end method

.method public abstract deleteOldCategory(Ljava/lang/String;JI)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDirty=:dirtyFlag  , serverTimestamp=:categoryServerTime , isDeleted=1  WHERE UUID=:categoryUUID"
    .end annotation
.end method

.method public abstract deleteUserFolder_CategoryTree()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree WHERE UUID != \'uncategorized:///\' OR UUID != \'trash:///\'"
    .end annotation
.end method

.method public abstract deleteUserFolder_CategoryTreeClosure()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree_closure WHERE descendant != \'uncategorized:///\' OR descendant != \'trash:///\'"
    .end annotation
.end method

.method public abstract dumpCategoryTreeClosure()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree_closure ORDER BY descendant,ancestor ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCategoryEntriesForSync()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, (SELECT COUNT(sdoc._id) FROM sdoc WHERE sdoc.categoryUUID=tree.UUID) AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON tree.UUID = clo.descendant WHERE clo.ancestor IN (SELECT uuid FROM category_tree WHERE parentUUID IS NULL) GROUP BY tree.UUID, clo.depth ORDER BY clo.depth ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDeletedCategoryEntityForSync()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree WHERE isDeleted=1 AND   (parentUUID != \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirtyList(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree WHERE isDirty = :dirtyFlag AND (parentUUID != \'\' AND parentUUID != \'old:///\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntityByParentUuidAndName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree WHERE displayName=:name AND parentUUID=:parentUuid AND UUID!=:uuid AND isDeleted=0 LIMIT 1"
    .end annotation
.end method

.method public abstract getEntityListByParentUuid(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree  WHERE parentUUID=:parentUUID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedEnabledFolderCount()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(UUID) FROM category_tree  WHERE isSyncWithMS=1"
    .end annotation
.end method

.method public abstract getFeedEnabledFolders()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree  WHERE isSyncWithMS=1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsSyncWithMS(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT isSyncWithMS FROM category_tree WHERE UUID =:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getOldCategoryUUIDList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE (parentUUID = \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOldCategoryUUIDListByDirty(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE isDirty = :dirtyFlag AND (parentUUID = \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOldCategoryUUIDListIncludeDeletedOrderByAsc()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE (parentUUID = \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\') ORDER BY displayName ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOldCategoryUUIDListOrderByAsc()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE ( isDeleted = 0 AND parentUUID = \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\') ORDER BY displayName ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOldLastOrder()I
    .annotation build Landroidx/room/Query;
        value = "SELECT orderBy FROM category_tree WHERE (parentUUID = \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\') ORDER BY orderBy ASC"
    .end annotation
.end method

.method public abstract getSyncEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID, serverTimestamp, isDirty, isDeleted, lastModifiedAt, recycle_bin_time_moved, displayNameColor, orderBy FROM category_tree WHERE UUID =:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getSyncEntityList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID, serverTimestamp, isDirty, isDeleted, lastModifiedAt, recycle_bin_time_moved, displayNameColor, orderBy FROM category_tree WHERE (parentUUID != \'\' AND parentUUID != \'old:///\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByTrashedUnCategorized()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree  WHERE (parentUUID = \'uncategorized:///\') AND isDeleted=2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListWithOrder()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree  WHERE (parentUUID = \'old:///\' AND UUID != \'1\' AND UUID != \'2\' AND UUID != \'old_recyclebin\' AND UUID != \'old:///\')ORDER BY orderBy DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recoveryCategoryForOldCategory(Ljava/lang/String;IJII)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDirty=:dirty , serverTimestamp=:serverTimestamp , orderBy=:reorder  , isDeleted=:isDeleted  WHERE UUID=:folderUuid"
    .end annotation
.end method

.method public abstract setDisplayNameAndColorForOldCategory(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET displayName=:folderName  , displayNameColor=:folderNameColor  WHERE UUID=:folderUuid"
    .end annotation
.end method

.method public abstract setDisplayNameColor(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET displayNameColor=:color  WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract setOldCategoryOrder(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET orderBy=:orderBy  WHERE UUID=:categoryUUID"
    .end annotation
.end method

.method public abstract setOrderBy(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET orderBy=:order  WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract setTimestampAndDirtyForOldCategory(Ljava/lang/String;JI)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET serverTimestamp=:serverTimestamp  , isDirty=:dirty  WHERE UUID=:folderUuid"
    .end annotation
.end method

.method public abstract updateIsDirty(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDirty=:dirtyFlag  WHERE UUID=:categoryTreeUuid"
    .end annotation
.end method

.method public abstract updateParentFolder(Ljava/lang/String;Ljava/lang/String;JI)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDirty=:isDirty  , parentUUID=:parentFolderUuid  , serverTimestamp=:serverTimestamp WHERE UUID=:folderUuid"
    .end annotation
.end method
