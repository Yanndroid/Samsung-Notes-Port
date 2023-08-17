.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final ORDER_BY:Ljava/lang/String; = " ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteByPath(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM document_template WHERE _data=:path"
    .end annotation
.end method

.method public deleteByPath(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;->deleteByPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getAll_LiveData(Z)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_template ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAll_LiveData(ZI)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_template WHERE type=:type ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_template WHERE _data=:path LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_template WHERE _data=:path LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;",
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
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;",
            ">;>;"
        }
    .end annotation
.end method
