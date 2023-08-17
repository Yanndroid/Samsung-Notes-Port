.class public Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FolderTimeUtils"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createModifiedTimeUpdateCommand(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;
    .locals 0
    .param p0    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->createModifiedTimeUpdateCommand(Ljava/lang/String;J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    move-result-object p0

    return-object p0
.end method

.method private static createModifiedTimeUpdateCommand(Ljava/lang/String;J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "uncategorized:///"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trash:///"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "old:///"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getParentsFolderCandidateMap(JLjava/util/List;J)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->isTargetForServerTimestampUpdate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-ltz v2, :cond_2

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static isTargetForServerTimestampUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "uncategorized:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "trash:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "old:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static performCandidateFolderMapBuilding(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JLjava/util/Map;J)V
    .locals 8
    .param p0    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->TAG:Ljava/lang/String;

    const-string p1, "performCandidateFolderMapBuilding() : folderEntity is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->isTargetForServerTimestampUpdate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_2

    cmp-long v0, v0, p5

    if-lez v0, :cond_4

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->performCandidateFolderMapBuilding(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JLjava/util/Map;J)V

    :cond_6
    return-void
.end method

.method public static updateModifiedTime(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->createModifiedTimeUpdateCommand(Ljava/lang/String;J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateModifiedTimeWithUuidList(Ljava/util/Collection;)V

    return-void
.end method

.method public static updateModifiedTime(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->createModifiedTimeUpdateCommand(Ljava/lang/String;J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateModifiedTimeWithUuidList(Ljava/util/Collection;)V

    return-void
.end method

.method public static updateModifiedTime(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;J)V
    .locals 3
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->createModifiedTimeUpdateCommand(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;J)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateModifiedTimeWithUuidList(Ljava/util/Collection;)V

    return-void
.end method

.method private static updateServerTimeOfTargetUuidList(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateServerTimeOfTargetUuidList() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateServerTimestampWithUuidList(Ljava/util/Collection;)V

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->TAG:Ljava/lang/String;

    const-string p1, "updateServerTimeOfTargetUuidList() : No folder!"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static updateServerTimeUpward(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->TAG:Ljava/lang/String;

    const-string p1, "updateServerTimeUpward() : entity is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->isRootFolderInDB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->updateServerTimeUpward(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;)V

    return-void
.end method

.method public static updateServerTimeUpward(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    iget-object v4, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getParentsCategoryUuidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->getParentsFolderCandidateMap(JLjava/util/List;J)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->updateServerTimeOfTargetUuidList(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;)V

    return-void
.end method

.method public static updateServerTimeUpward(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getParentsCategoryUuidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->getParentsFolderCandidateMap(JLjava/util/List;J)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->updateServerTimeOfTargetUuidList(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Collection;)V

    return-void
.end method

.method public static updateServerTimeUpward(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;J)V
    .locals 10
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v7

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p3

    move-object v4, v9

    move-wide v5, v7

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->performCandidateFolderMapBuilding(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JLjava/util/Map;J)V

    goto :goto_0

    :cond_0
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateServerTimestampWithUuidList(Ljava/util/Collection;)V

    return-void
.end method
