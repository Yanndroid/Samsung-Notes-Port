.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->lambda$deleteByUuid$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$deleteByUuid$0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuids(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public abstract deleteByUuid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID=:docUuid"
    .end annotation
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 2
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

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/j;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/j;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public abstract deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID=:uuid AND pageUuid IN (:pageIdList)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;[I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID=:uuid AND pageUuid IN (:pageIds) AND type IN (:types)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation
.end method

.method public varargs abstract deleteByUuidAndPageIdsWithExcludedTypes(Ljava/lang/String;Ljava/util/List;[I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID=:uuid AND pageUuid IN (:pageIdList) AND type NOT IN (:excludedTypes)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation
.end method

.method public varargs abstract deleteByUuidWithTypes(Ljava/lang/String;[I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID=:uuid AND type IN (:types)"
    .end annotation
.end method

.method public abstract deleteByUuids(Ljava/util/Collection;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID IN (:docUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteDummy()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM stroke WHERE sdocUUID NOT IN (SELECT UUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation
.end method

.method public abstract getAllLiveDatas()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM stroke"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEntities(Ljava/lang/String;I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM stroke WHERE sdocUUID=:uuid AND type =:type"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM stroke WHERE sdocUUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM stroke WHERE sdocUUID=:uuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    move-result-object p1

    return-object p1
.end method

.method public varargs abstract getEntityListWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM stroke WHERE sdocUUID=:uuid AND type NOT IN (:excludedTypes)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getPageIdListByUuid(Ljava/lang/String;[I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT pageUuid FROM stroke WHERE sdocUUID=:uuid AND type IN (:searchDataTypes) GROUP BY pageUuid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getRecognizeTextsWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT text FROM stroke WHERE sdocUUID=:sDocUUID AND type NOT IN (:excludedTypes)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
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
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
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
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;>;"
        }
    .end annotation
.end method
