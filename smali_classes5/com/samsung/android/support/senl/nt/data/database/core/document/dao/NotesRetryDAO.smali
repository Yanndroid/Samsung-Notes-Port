.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;->lambda$deleteByUuid$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$deleteByUuid$0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;->deleteByUuids(Ljava/util/Collection;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry"
    .end annotation
.end method

.method public abstract deleteByUuid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry WHERE sdocUUID=:docUuid"
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

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/i;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/i;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public abstract deleteByUuids(Ljava/util/Collection;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry WHERE sdocUUID IN (:docUuids)"
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

.method public abstract deleteDummy()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM retry WHERE sdocUUID NOT IN (SELECT UUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation
.end method

.method public abstract getAllLiveDatas()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM retry"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCountInState(I)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(_id) FROM retry WHERE state=:retryState"
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM retry WHERE sdocUUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM retry WHERE sdocUUID=:uuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getState(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT state FROM retry WHERE sdocUUID=:sDocUUID LIMIT 1"
    .end annotation
.end method

.method public abstract getStateInReadyList(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM retry WHERE state=:retryState"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStateInReadyList(ILjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM retry WHERE state=:retryState  AND sdocUUID=:docUuid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuids()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdocUUID FROM retry"
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

.method public abstract getVersion(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT retry.version FROM retry WHERE sdocUUID=:docUuid"
    .end annotation
.end method

.method public abstract rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
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
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateState(Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT retry SET state=:retryState WHERE sdocUUID=:sDocUUID"
    .end annotation
.end method
