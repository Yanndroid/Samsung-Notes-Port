.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# static fields
.field public static final ORDER_BY:Ljava/lang/String; = " ORDER BY CASE WHEN :isDesc=1 THEN lastModifiedAt END DESC, CASE WHEN :isDesc=0 THEN lastModifiedAt END ASC"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract find(Ljava/util/Collection;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE sdoc.isLock IS NOT 0 AND sdoc.isLock IS NOT -1 AND sdoc.categoryUUID IN (:folderUuid)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLockedDataCount(I)I
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(sdoc.UUID) FROM sdoc LEFT OUTER JOIN mapped_document AS map ON sdoc.UUID = map.UUID WHERE sdoc.isDeleted=:deleteType AND sdoc.isLock IS NOT 0 AND sdoc.isLock IS NOT -1 AND map.UUID IS NULL"
    .end annotation
.end method

.method public abstract getContentSecureVersion(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT contentSecureVersion FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.* FROM sdoc WHERE sdoc.isLock IN (:lockTypes) AND sdoc.UUID IN (:docUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockNoteCount(Ljava/util/Collection;Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(sdoc.UUID) FROM sdoc WHERE sdoc.isLock IN (:lockTypes) AND sdoc.UUID IN (:uuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getLockType(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT isLock FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getLockedEntitiesWithExcludeTypes(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.* FROM sdoc WHERE sdoc.isLock NOT IN (:excludeTypes) AND sdoc.UUID IN (:docUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockedNoteUuidsWithExcludeTypes(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE sdoc.isLock NOT IN (:excludeTypes) AND sdoc.UUID IN (:docUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getPathListWithEmptyGuid([I)Ljava/util/List;
    .param p1    # [I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.filePath FROM sdoc WHERE sdoc.isDeleted != 1 AND (sdoc.lockAccountGuid IS NULL OR sdoc.lockAccountGuid = \'\')  AND sdoc.isLock IN (:lockTypes)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lockByUuid(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isLock=:lockType WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateContentSecureVersion(Ljava/lang/String;I)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET contentSecureVersion =:contentSecureVersion WHERE UUID=:uuid"
    .end annotation
.end method

.method public varargs abstract updateLockGuidForUndefined(Ljava/lang/String;[I)V
    .param p2    # [I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET lockAccountGuid=:lockAccountGuid WHERE sdoc.isDeleted != 1 AND (sdoc.lockAccountGuid IS NULL OR sdoc.lockAccountGuid = \'\')  AND sdoc.isLock IN (:lockTypes)"
    .end annotation
.end method

.method public abstract updateLockTypeAndLockGuid(Ljava/lang/String;IIJLjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isLock=:isLock , isDirty=:isDirty , serverTimestamp=:timestamp , lockAccountGuid=:accountGuid WHERE UUID=:docUuid"
    .end annotation
.end method
