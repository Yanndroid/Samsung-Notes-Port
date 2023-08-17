.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteDocument(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM sdoc WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract deleteDocuments(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM sdoc WHERE UUID!=:exceptUuid AND filePath=:filePath"
    .end annotation
.end method

.method public deleteDocuments(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->deleteDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract dumpDocumentTable()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sdoc"
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

.method public abstract dumpDocumentsForUsed()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, UUID, categoryUUID, filePath, contentUUID, strokeUUID FROM sdoc WHERE isDeleted != 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract existDirtyRows()Z
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(UUID) > 1 AS count FROM sdoc GROUP BY filePath ORDER BY count DESC LIMIT 1"
    .end annotation
.end method

.method public abstract findRecentlyUsed(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _id, UUID, categoryUUID, filePath, contentUUID, strokeUUID FROM sdoc WHERE filePath=:filePath ORDER BY lastModifiedAt DESC, isDeleted ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCategoryEntries()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.* FROM category_tree AS tree GROUP BY tree.UUID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation
.end method
