.class public Lcom/samsung/android/app/notes/sync/db/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr0/a;

.field public b:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->b:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->b:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0, p1}, Lr0/a;->t(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/g;->b:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/g;->b:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0, p1}, Lr0/a;->t(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getIsDeleted()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getDisplayNameColor()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getIsDirty()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->u()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildrenMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/notes/sync/db/g;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/db/g;->j(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v3

    const/4 v4, 0x1

    const-string/jumbo v5, "trashed"

    if-ne v3, v4, :cond_2

    const-string v3, "deleted"

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move-object v3, v5

    goto :goto_1

    :cond_3
    const-string v3, "normal"

    :goto_1
    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const-string/jumbo v3, "uncategorized:///"

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->isSyncWithMS()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->isSyncWithMS:I

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getReorder()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    iget-object v1, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public final h(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/notes/sync/db/g;->j(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    move-result-object v2

    const-string v3, "deleted"

    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public i()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->i()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/db/g;->g(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/db/g;->h(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v1
.end method

.method public final j(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    const-string v1, "folder"

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uncategorized:///"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trash:///"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "root"

    :goto_1
    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getCreatedAt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->createdTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRecycleBinTimeMoved()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FolderUtils;->isValidFolderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FolderUtils;->getNewFolderName(J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getLastModifiedAt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public l(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getRecycle_bin_time_moved()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public m(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getOrderBy()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public n(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getServerTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public o()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->i()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildrenMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public p(I)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v1, p1}, Lr0/a;->j(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/g;->a:Lr0/a;

    invoke-virtual {v0}, Lr0/a;->w()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->COEDIT_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public s(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "root"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/db/g;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
