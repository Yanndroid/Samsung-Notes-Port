.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesRestoreDAO"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->lambda$deleteDummyNewFolders$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private deleteDummyNewFolders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/h;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method private getExclusionFolders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->values()[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$deleteDummyNewFolders$0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->deleteDummyNewFoldersInCategoryTree(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->deleteDummyNewFoldersInCategoryTreeClosure(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public abstract deleteDummyNewFoldersInCategoryTree(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree WHERE UUID IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteDummyNewFoldersInCategoryTreeClosure(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree_closure WHERE descendant IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCorruptNotes()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.* FROM sdoc WHERE isDeleted = 0 AND ( isFavorite NOT IN (0, 1) OR  isLock > 5 OR isLock < -2 ) "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDummyFolders()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE parentUUID = \'uncategorized:///\' AND UUID NOT IN (SELECT ancestor FROM category_tree_closure WHERE depth > 0) AND UUID NOT IN (SELECT categoryUUID FROM sdoc) AND isDeleted = 0"
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

.method public abstract getSdocXInOldFolder()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sdoc WHERE sdoc.categoryUUID IN (SELECT category_tree.UUID FROM category_tree WHERE category_tree.parentUUID = \'old:///\') AND sdoc.filePath LIKE \'%.sdocx\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUncategorizedFolderParentUuid()Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT parentUUID FROM category_tree WHERE UUID=\'uncategorized:///\'"
    .end annotation
.end method

.method public repairUncategorizedFolder()V
    .locals 4
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->getUncategorizedFolderParentUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->getDummyFolders()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->getExclusionFolders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repairUncategorizedFolder, dummyNewFolders, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->deleteDummyNewFolders(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->resetUncategorizedFolderParentUuid()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repairUncategorizedFolder, uncategorized parentUuid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->getUncategorizedFolderParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract resetUncategorizedFolderParentUuid()V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET parentUUID = NULL WHERE UUID=\'uncategorized:///\'"
    .end annotation
.end method

.method public abstract update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract update(Ljava/util/List;)I
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;)I"
        }
    .end annotation
.end method
