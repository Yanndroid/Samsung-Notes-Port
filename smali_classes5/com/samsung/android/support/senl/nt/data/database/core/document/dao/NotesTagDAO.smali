.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = " ORDER BY CASE WHEN :tagSortType=0 THEN normalizeName END ASC, CASE WHEN :tagSortType=1 THEN docCount END DESC,  CASE WHEN :tagSortType=2 THEN _id END DESC"

.field private static final sAllOldTagListQuery:Ljava/lang/String; = "SELECT hashtagContent.serverTimestamp AS sortTime, hashtagContent._id AS _id, LOWER(hashtag.name) AS normalizeName, hashtagContent.sdocUUID AS docUUID, hashtag.name as displayName, COUNT(hashtagContent.sdocUUID) AS docCountOri FROM hashtag JOIN sdoc ON hashtagContent.sdocUUID = sdoc.UUID JOIN hashtagContent ON hashtagContent.hashtagUUID = hashtag.UUID LEFT OUTER JOIN mapped_document ON sdoc.UUID = mapped_document.UUID  WHERE sdoc.isDeleted=0 AND mapped_document.UUID IS NULL  GROUP BY hashtag.UUID "

.field private static final sAllTagListQuery:Ljava/lang/String; = "SELECT sdoc.serverTimestamp AS sortTime, tag_list._id AS _id, tag_list.normalizeName AS normalizeName, tag_list.docUUID AS docUUID, tag_list.displayName as displayName, count(tag_list.docUUID) AS docCountOri FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted=0 GROUP BY tag_list.normalizeName "

.field private static final sAllUnionTagListQuery:Ljava/lang/String; = "SELECT SUM(docCountOri) AS docCount, _id, normalizeName, docUUID, displayName FROM (SELECT sdoc.serverTimestamp AS sortTime, tag_list._id AS _id, tag_list.normalizeName AS normalizeName, tag_list.docUUID AS docUUID, tag_list.displayName as displayName, count(tag_list.docUUID) AS docCountOri FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted=0 GROUP BY tag_list.normalizeName  UNION ALL SELECT hashtagContent.serverTimestamp AS sortTime, hashtagContent._id AS _id, LOWER(hashtag.name) AS normalizeName, hashtagContent.sdocUUID AS docUUID, hashtag.name as displayName, COUNT(hashtagContent.sdocUUID) AS docCountOri FROM hashtag JOIN sdoc ON hashtagContent.sdocUUID = sdoc.UUID JOIN hashtagContent ON hashtagContent.hashtagUUID = hashtag.UUID LEFT OUTER JOIN mapped_document ON sdoc.UUID = mapped_document.UUID  WHERE sdoc.isDeleted=0 AND mapped_document.UUID IS NULL  GROUP BY hashtag.UUID ) GROUP BY displayName  ORDER BY CASE WHEN :tagSortType=0 THEN normalizeName END ASC, CASE WHEN :tagSortType=1 THEN docCount END DESC,  CASE WHEN :tagSortType=2 THEN _id END DESC"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagsByDocUuid(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getTagNormalizeNameListByDocUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setNormalizeName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addTagsByDocUuidList(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->addTagsByDocUuid(Ljava/util/List;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM tag_list"
    .end annotation
.end method

.method public abstract deleteByUuid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM tag_list WHERE docUUID=:docUuid"
    .end annotation
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->deleteByUuid(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract deleteDummy()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM tag_list WHERE docUUID NOT IN (SELECT UUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM tag_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation
.end method

.method public getAllByTagNormalizedName(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT sdoc.* FROM sdoc LEFT JOIN tag_list  ON sdoc.uuid = tag_list.docUUID  WHERE tag_list.normalizeName = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND isDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT sdoc.* FROM sdoc LEFT JOIN hashtagContent  ON sdoc.uuid = hashtagContent.sdocUUID  LEFT JOIN hashtag  ON hashtag.UUID = hashtagContent.hashtagUUID  LEFT OUTER JOIN mapped_document ON sdoc.UUID = mapped_document.UUID  WHERE LOWER(hashtag.name) = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' AND sdoc.isDeleted="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND mapped_document.UUID IS NULL "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;

    invoke-direct {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;-><init>()V

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;->createQuery(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SELECT sdoc.* FROM ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " UNION "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ) AS sdoc ORDER BY "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->rawDocumentQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllByTagNormalizedName_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT sdoc.* FROM sdoc LEFT JOIN tag_list  ON sdoc.uuid = tag_list.docUUID  WHERE tag_list.normalizeName = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND isDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT sdoc.* FROM sdoc LEFT JOIN hashtagContent  ON sdoc.uuid = hashtagContent.sdocUUID  LEFT JOIN hashtag  ON hashtag.UUID = hashtagContent.hashtagUUID  LEFT OUTER JOIN mapped_document ON sdoc.UUID = mapped_document.UUID  WHERE LOWER(hashtag.name) = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' AND sdoc.isDeleted="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND mapped_document.UUID IS NULL "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;

    invoke-direct {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;-><init>()V

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;->createQuery(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SELECT sdoc.* FROM ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " UNION "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ) AS sdoc ORDER BY "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->rawDocumentQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllLiveDatas()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM tag_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllTagListWithDocCount(I)Ljava/util/List;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/TagSortType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT SUM(docCountOri) AS docCount, _id, normalizeName, docUUID, displayName FROM (SELECT sdoc.serverTimestamp AS sortTime, tag_list._id AS _id, tag_list.normalizeName AS normalizeName, tag_list.docUUID AS docUUID, tag_list.displayName as displayName, count(tag_list.docUUID) AS docCountOri FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted=0 GROUP BY tag_list.normalizeName  UNION ALL SELECT hashtagContent.serverTimestamp AS sortTime, hashtagContent._id AS _id, LOWER(hashtag.name) AS normalizeName, hashtagContent.sdocUUID AS docUUID, hashtag.name as displayName, COUNT(hashtagContent.sdocUUID) AS docCountOri FROM hashtag JOIN sdoc ON hashtagContent.sdocUUID = sdoc.UUID JOIN hashtagContent ON hashtagContent.hashtagUUID = hashtag.UUID LEFT OUTER JOIN mapped_document ON sdoc.UUID = mapped_document.UUID  WHERE sdoc.isDeleted=0 AND mapped_document.UUID IS NULL  GROUP BY hashtag.UUID ) GROUP BY displayName  ORDER BY CASE WHEN :tagSortType=0 THEN normalizeName END ASC, CASE WHEN :tagSortType=1 THEN docCount END DESC,  CASE WHEN :tagSortType=2 THEN _id END DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesTagDocCountEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllTagListWithDocCount_LiveData(I)Landroidx/lifecycle/LiveData;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/TagSortType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT SUM(docCountOri) AS docCount, _id, normalizeName, docUUID, displayName FROM (SELECT sdoc.serverTimestamp AS sortTime, tag_list._id AS _id, tag_list.normalizeName AS normalizeName, tag_list.docUUID AS docUUID, tag_list.displayName as displayName, count(tag_list.docUUID) AS docCountOri FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted=0 GROUP BY tag_list.normalizeName  UNION ALL SELECT hashtagContent.serverTimestamp AS sortTime, hashtagContent._id AS _id, LOWER(hashtag.name) AS normalizeName, hashtagContent.sdocUUID AS docUUID, hashtag.name as displayName, COUNT(hashtagContent.sdocUUID) AS docCountOri FROM hashtag JOIN sdoc ON hashtagContent.sdocUUID = sdoc.UUID JOIN hashtagContent ON hashtagContent.hashtagUUID = hashtag.UUID LEFT OUTER JOIN mapped_document ON sdoc.UUID = mapped_document.UUID  WHERE sdoc.isDeleted=0 AND mapped_document.UUID IS NULL  GROUP BY hashtag.UUID ) GROUP BY displayName  ORDER BY CASE WHEN :tagSortType=0 THEN normalizeName END ASC, CASE WHEN :tagSortType=1 THEN docCount END DESC,  CASE WHEN :tagSortType=2 THEN _id END DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesTagDocCountEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public getAllTagListWithDocCount_LiveDataFiltered(I)Landroidx/lifecycle/LiveData;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/TagSortType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesTagDocCountEntry;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getAllTagListWithDocCount_LiveData(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllTagsInUse()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT name FROM (SELECT tag_list.displayName AS name FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted = 0 GROUP BY tag_list.normalizeName  UNION SELECT hashtag.name AS name FROM hashtag LEFT JOIN hashtagContent ON hashtag.UUID = hashtagContent.hashtagUUID LEFT JOIN sdoc ON hashtagContent.sdocUUID = sdoc.UUID LEFT OUTER JOIN mapped_document ON hashtagContent.sdocUUID = mapped_document.UUID  WHERE sdoc.isDeleted = 0 AND mapped_document.UUID IS NULL GROUP BY LOWER(hashtag.name)) GROUP BY LOWER(name) ORDER BY LOWER(name) ASC"
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

.method public getDataForRegexSearch(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getQuery(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->rawQueryForTagBoard(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getDataForTagBoard(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;-><init>()V

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;->getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {p3, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->rawQueryForTagBoard(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM tag_list WHERE docUUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM tag_list WHERE docUUID=:uuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getNotesCountUsingTag()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(docUUID) FROM(SELECT docUUID FROM tag_list UNION SELECT sdocUUID FROM hashtagContent)"
    .end annotation
.end method

.method public abstract getRecentTagList(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM tag_list LEFT JOIN sdoc ON (tag_list.docUUID=sdoc.UUID) WHERE sdoc.isDeleted=0 GROUP BY tag_list.normalizeName  ORDER BY tag_list._id DESC  LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelatedTagList(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tag_list.* FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted = 0 AND tag_list.docUUID IN (SELECT tag_list.docUUID FROM tag_list WHERE tag_list.normalizeName=:tagName GROUP BY tag_list.docUUID) GROUP BY tag_list.normalizeName  ORDER BY tag_list.normalizeName ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelatedTags(Ljava/util/Collection;I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT name FROM(SELECT tag_list.displayName AS name FROM tag_list JOIN sdoc ON tag_list.docUUID = sdoc.UUID WHERE sdoc.isDeleted = 0 AND tag_list.docUUID IN (SELECT tag_list.docUUID FROM tag_list WHERE tag_list.normalizeName IN (:normalizeNames) GROUP BY tag_list.docUUID HAVING COUNT(*)=:size) GROUP BY tag_list.normalizeName  UNION SELECT hashtag.name AS name FROM hashtag JOIN hashtagContent ON hashtag.UUID = hashtagContent.hashtagUUID JOIN sdoc ON hashtagContent.sdocUUID = sdoc.UUID WHERE sdoc.isDeleted = 0 AND hashtagContent.sdocUUID IN (SELECT hashtagContent.sdocUUID FROM hashtagContent JOIN hashtag ON hashtagContent.hashtagUUID = hashtag.UUID LEFT OUTER JOIN mapped_document ON hashtagContent.sdocUUID = mapped_document.UUID  WHERE mapped_document.UUID IS NULL AND LOWER(hashtag.name) IN (:normalizeNames) GROUP BY hashtagContent.sdocUUID HAVING COUNT(*)=:size) GROUP BY LOWER(hashtag.name)) GROUP BY LOWER(name) ORDER BY LOWER(name) ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagListByDocUuid(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM tag_list WHERE docUUID=:docUuid  ORDER BY _id ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagNormalizeNameListByDocUuid(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT normalizeName FROM tag_list WHERE docUUID=:docUuid  ORDER BY _id ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTagExistByNormalizedName(Ljava/lang/String;)Z
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, normalizeName FROM tag_list WHERE normalizeName=:tagNormalizedName LIMIT 1"
    .end annotation
.end method

.method public abstract isTagsExistByDocUuid(Ljava/lang/String;)Z
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, docUUID FROM tag_list WHERE docUUID=:docUuid LIMIT 1"
    .end annotation
.end method

.method public abstract isTagsExistByDocUuid(Ljava/util/List;)Z
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, docUUID FROM tag_list WHERE docUUID IN (:docUuid) LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract rawDocumentQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rawDocumentQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rawQueryForTagBoard(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
        }
    .end annotation
.end method

.method public abstract rawQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public updateTagsByDocUuid(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->deleteByUuid(Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setNormalizeName(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method
