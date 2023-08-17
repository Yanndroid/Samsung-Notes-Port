.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteBySDocUuid(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM content WHERE sdocUUID=:sdocUuid"
    .end annotation
.end method

.method public abstract deleteBySDocUuid(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM content WHERE sdocUUID=:sdocUuid AND mime_type NOT IN (:excludedTypes)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public deleteBySDocUuid(Ljava/util/Collection;)V
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

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;->deleteBySDocUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract deleteByUuid(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM content WHERE UUID=:contentUuid"
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

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;->deleteByUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLiveDatas()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM content WHERE UUID=:contentUuid LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM content WHERE UUID=:contentUuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract updateContentSecureVersion(Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT content SET contentSecureVersion=:contentSecureVersion WHERE UUID=:docUuid"
    .end annotation
.end method
