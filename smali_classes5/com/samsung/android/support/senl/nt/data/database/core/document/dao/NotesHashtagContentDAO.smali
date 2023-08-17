.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method

.method private updateLastAddedTimeOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getSdocUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateLastAddedTime(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract countHashtagContentBySdocUuid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(_id) FROM hashtagContent WHERE sdocUUID=:sdocUuid"
    .end annotation
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hashtagContent"
    .end annotation
.end method

.method public abstract deleteByHashtagUuid(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hashtagContent WHERE hashtagUUID=:hashtagUuid"
    .end annotation
.end method

.method public abstract deleteBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hashtagContent WHERE sdocUUID=:sdocUuid AND hashtagUUID=:hashtagUuid"
    .end annotation
.end method

.method public abstract deleteByUuid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hashtagContent WHERE sdocUUID=:sdocUuid"
    .end annotation
.end method

.method public abstract deleteByUuid(Ljava/util/Collection;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hashtagContent WHERE sdocUUID IN (:sdocUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public deleteByUuids(Ljava/util/Collection;)I
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/g;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;->execute(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public abstract deleteDummy()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hashtagContent WHERE sdocUUID NOT IN (SELECT UUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation
.end method

.method public deleteOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getHashtagUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getSdocUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteByHashtagUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteByUuid(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM hashtagContent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLiveDatas()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM hashtagContent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCountHashtagContents(Ljava/util/Collection;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(_id) FROM hashtagContent WHERE sdocUUID IN (:sdocUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM hashtagContent WHERE _id=:tagContentId LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM hashtagContent WHERE _id=:tagContentId LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEntityBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM hashtagContent WHERE sdocUUID=:sdocUuid AND hashtagUUID=:hashtagUuid"
    .end annotation
.end method

.method public insertOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    :cond_1
    return-void
.end method

.method public abstract rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;",
            ">;"
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
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE hashtagContent SET serverTimestamp=:timestamp, lastModifiedAt=:lastModifiedAt, isDirty=:dirtyFlag, extraInfo=:extraInfo WHERE sdocUUID=:sdocUuid AND hashtagUUID=:hashtagUuid"
    .end annotation
.end method

.method public updateBySdocUuidAndContentUuid(Ljava/util/ArrayList;)V
    .locals 10
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getSdocUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getHashtagUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getLastModifiedAt()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getIsDirty()I

    move-result v8

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract updateDirtyBySdocUuid(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE hashtagContent SET isDirty=:dirtyFlag WHERE sdocUUID=:sdocUuid"
    .end annotation
.end method

.method public updateHashTagsBySdocUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;Ljava/util/ArrayList;)V
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getOperation()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getContentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateLastAddedTimeOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getContentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getContentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getContentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->getEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->insertOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public abstract updateLastAddedTime(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE hashtagContent SET serverTimestamp=:serverTimestamp  WHERE sdocUUID=:sdocUuid"
    .end annotation
.end method

.method public updateOperation(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    :cond_1
    return-void
.end method
