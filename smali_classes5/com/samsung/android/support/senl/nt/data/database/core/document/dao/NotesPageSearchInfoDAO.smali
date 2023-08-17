.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
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
.method public abstract deleteByUuid(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM page_search_info WHERE sdocUUID IN (:documentIds)"
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

.method public abstract deleteDummy()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM page_search_info WHERE sdocUUID NOT IN (SELECT UUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation
.end method

.method public abstract getEntities(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM page_search_info WHERE sdocUUID=:documentId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM page_search_info WHERE sdocUUID=:documentId AND pageUuid=:pageId"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    move-result-object p1

    return-object p1
.end method
