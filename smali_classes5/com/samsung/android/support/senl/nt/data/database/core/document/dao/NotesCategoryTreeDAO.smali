.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesCategoryTreeDAO"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method

.method private findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 20
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->findByPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-gtz v4, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    array-length v4, v2

    if-eqz p5, :cond_4

    sub-int/2addr v4, v3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/4 v5, 0x0

    move-object v7, v1

    move v1, v5

    :goto_1
    if-ge v1, v4, :cond_7

    aget-object v8, v2, v1

    if-lez v1, :cond_5

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->existPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    move/from16 v9, p4

    move-wide v11, v15

    move-wide/from16 v13, v17

    invoke-virtual/range {v5 .. v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    move-object/from16 v7, v19

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-object v7
.end method

.method private isValidSourceTargetFolders(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "move, source folder not exist. uuid : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move, the parent of the source is same as the target folder. the parent of the source : "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", targetParentFolderUuid : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-nez p4, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "move, target folder does not exist. uuid : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private restoreDocsOfCurrentFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;J)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->restoreByCategoryUuid(Ljava/lang/String;J)V

    return-void
.end method

.method private restoreToTargetFolder(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/lang/String;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v8, p8

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p8

    move-object/from16 v4, p9

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->merge(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJ)V

    move-object v10, v9

    move-object v9, p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v0

    move-object v9, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v8, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->findAndMakeParentCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p3

    move-object v2, v10

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-object v7, p2

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveInternal(Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    :goto_1
    return-object v10
.end method


# virtual methods
.method public abstract changeParentUuid(Ljava/lang/String;Ljava/lang/String;JJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET parentUUID=:parentUuid , isDirty=1 , serverTimeStamp=:serverTimestamp , lastModifiedAt=:lastModifiedAt WHERE UUID=:uuid"
    .end annotation
.end method

.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)I
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)I

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###delete, isDeleted: 1, folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateDelete(Ljava/lang/String;J)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteAllCategorySubTree(Ljava/lang/String;J)V

    return v2
.end method

.method public delete(Ljava/lang/String;J)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#delete, isDeleted: 1, folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateDelete(Ljava/lang/String;J)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteAllCategorySubTree(Ljava/lang/String;J)V

    return v0
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 4
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
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public abstract deleteAllCategorySubTree(Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDeleted=1 , serverTimestamp=:serverTimestamp , isDirty=1 WHERE UUID IN (SELECT descendant FROM category_tree_closure WHERE ancestor = :uuid)"
    .end annotation
.end method

.method public abstract deleteAllCategorySubTreeWithServerTimestampIncrease(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDeleted=1 , serverTimestamp = serverTimestamp + 1 , isDirty=1 WHERE UUID IN (SELECT descendant FROM category_tree_closure WHERE ancestor = :uuid)"
    .end annotation
.end method

.method public deleteAllSubTree(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteAllCategorySubTree(Ljava/lang/String;J)V

    return-void
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 3
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

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;J)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteByUuidWithDocumentDelete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;JLjava/util/Collection;)V
    .locals 2
    .param p5    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "J",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;J)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p5, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;J)I

    return-void
.end method

.method public deleteByUuidWithDocumentDeleteWithTimestampIncrease(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;)V
    .locals 2
    .param p3    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteWithServerTimestampIncrease(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuidWithServerTimestampIncrease(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;)I

    return-void
.end method

.method public deleteEmptyOldCategories()V
    .locals 5
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->DEFAULT_PREDEFINED_OLD_CATEGORY_UUID_ARRAY:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getEmptyOldCategories([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteByUuid(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#deleteEmptyOldCategories, uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteInternal(Ljava/lang/String;JJ)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#deleteInternal, isDeleted: 1, folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", backtrace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateDelete(Ljava/lang/String;JJ)I

    move-result p1

    return p1
.end method

.method public abstract deleteMovingCategory(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM category_tree_closure WHERE descendant IN (SELECT descendant FROM category_tree_closure WHERE ancestor = :targetUuid) AND ancestor IN (SELECT ancestor FROM category_tree_closure WHERE descendant = :targetUuid AND ancestor != descendant)"
    .end annotation
.end method

.method public deleteWithDocumentDelete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;JLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)I
    .locals 3
    .param p5    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;J)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;J[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    return v0
.end method

.method public deleteWithDocumentDelete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/List;JLjava/lang/String;)I
    .locals 1
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0, p6, p4, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;J)I

    move-result v0

    invoke-virtual {p1, p2, p6, p4, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/lang/String;J)I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;J)I

    return v0
.end method

.method public deleteWithDocumentDelete(Ljava/util/Collection;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/List;J)I
    .locals 3
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
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->delete(Ljava/lang/String;J)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3, p1, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;J)V

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->deleteByCategoryUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;Ljava/util/Collection;J)I

    return v1
.end method

.method public deleteWithServerTimestampIncrease(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##delete, isDeleted: 1, folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateDeleteWithServerTimestampIncrease(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteAllCategorySubTreeWithServerTimestampIncrease(Ljava/lang/String;)V

    return v0
.end method

.method public findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findAndMakeParentCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract findUuidListByDisplayName(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE displayName = :name AND isDeleted=0"
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

.method public abstract findUuidListByDisplayNameIncludeDeleted(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE displayName = :name"
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

.method public abstract findUuidListByDisplayNameWithoutCase(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE LOWER(displayName) = :name AND isDeleted=0"
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

.method public abstract getAllCategoryEntries(Ljava/util/Collection;Z)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, CASE :includeDocumentCount  WHEN 1 THEN (SELECT COUNT(sdoc._id) FROM sdoc  WHERE sdoc.categoryUUID=tree.UUID AND sdoc.isDeleted != 1) ELSE 0  END AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON tree.UUID = clo.descendant WHERE tree.isDeleted != 1 AND clo.ancestor IN (SELECT UUID FROM category_tree WHERE parentUUID IS NULL AND UUID NOT IN (:excludedUuidList)) AND tree.UUID NOT IN (:excludedUuidList) GROUP BY tree.UUID, clo.depth ORDER BY clo.depth ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCategoryEntries(Z)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, CASE :includeDocumentCount  WHEN 1 THEN (SELECT COUNT(sdoc._id) FROM sdoc  WHERE sdoc.categoryUUID=tree.UUID AND sdoc.isDeleted != 1) ELSE 0  END AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON tree.UUID = clo.descendant WHERE tree.isDeleted != 1 AND clo.ancestor IN (SELECT UUID FROM category_tree WHERE parentUUID IS NULL) GROUP BY tree.UUID, clo.depth ORDER BY clo.depth ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCategorySubTreeUuid(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE UUID IN (SELECT descendant FROM category_tree_closure WHERE ancestor = :uuid)"
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

.method public abstract getAllCategory_LiveData(Ljava/util/Collection;Z)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, CASE :includeDocumentCount  WHEN 1 THEN (SELECT COUNT(sdoc._id) FROM sdoc  WHERE sdoc.categoryUUID=tree.UUID AND sdoc.isDeleted != 1) ELSE 0  END AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON tree.UUID = clo.descendant WHERE tree.isDeleted != 1 AND clo.ancestor IN (SELECT UUID FROM category_tree WHERE parentUUID IS NULL AND UUID NOT IN (:excludedUuidList)) AND tree.UUID NOT IN (:excludedUuidList) GROUP BY tree.UUID, clo.depth ORDER BY clo.depth ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllCategory_LiveData(Z)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, CASE :includeDocumentCount  WHEN 1 THEN (SELECT COUNT(sdoc._id) FROM sdoc  WHERE sdoc.categoryUUID=tree.UUID AND sdoc.isDeleted != 1) ELSE 0  END AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON tree.UUID = clo.descendant WHERE tree.isDeleted != 1 AND clo.ancestor IN (SELECT UUID FROM category_tree WHERE parentUUID IS NULL) GROUP BY tree.UUID, clo.depth ORDER BY clo.depth ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;>;"
        }
    .end annotation
.end method

.method public getAllDocumentCategoryTree(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 0
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getCategoryEntries(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method public getAllDocumentCategoryTree(Ljava/util/Collection;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 0
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllCategoryEntries(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method public getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllCategoryEntries(Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllRecycleBinDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object p1

    return-object p1
.end method

.method public abstract getCategoryEntries(Ljava/lang/String;Z)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, CASE :includeDocumentCount  WHEN 1 THEN (SELECT COUNT(sdoc._id) FROM sdoc                 WHERE sdoc.categoryUUID=tree.UUID AND sdoc.isDeleted != 1) ELSE 0  END AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON (tree.UUID = clo.descendant) WHERE clo.ancestor = :targetUuid ORDER BY clo.depth ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryEntry(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT tree.*, clo.depth, CASE :includeDocumentCount  WHEN 1 THEN (SELECT COUNT(sdoc._id) FROM sdoc                 WHERE sdoc.categoryUUID=tree.UUID AND sdoc.isDeleted != 1) ELSE 0  END AS documentCount FROM category_tree AS tree JOIN category_tree_closure AS clo ON (tree.UUID = clo.descendant) WHERE clo.ancestor = :targetUuid ORDER BY clo.depth ASC LIMIT 1"
    .end annotation
.end method

.method public abstract getEmptyOldCategories([Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE parentUUID = \'old:///\' AND isDeleted = 0 AND UUID NOT IN (:predefinedCategories) AND UUID NOT IN (SELECT DISTINCT categoryUUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntities()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree ORDER BY UUID ASC"
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

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree WHERE UUID = :targetUuid LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree WHERE UUID = :targetUuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getExpiredRecycleBinDataNotInFolder(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM category_tree WHERE recycle_bin_time_moved<:expiredTime AND recycle_bin_time_moved IS NOT 0 AND isDeleted=2 AND parentUUID=\'trash:///\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParentsCategoryUuidList(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID, serverTimestamp FROM category_tree WHERE UUID IN (SELECT ancestor FROM category_tree_closure WHERE descendant = :uuid)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
            ">;"
        }
    .end annotation
.end method

.method public getTargetPath(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract insertCategoryClosure(Ljava/lang/String;Ljava/lang/String;)J
    .annotation build Landroidx/room/Query;
        value = "INSERT OR REPLACE INTO category_tree_closure (ancestor, descendant, depth) SELECT ancestor, (:folderUuid), depth + 1 FROM category_tree_closure WHERE descendant = (:parentFolderUuid) UNION ALL SELECT (:folderUuid), (:folderUuid), 0"
    .end annotation
.end method

.method public insertCategoryClosure(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertCategoryClosure(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertCategoryClosure, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Pair;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertCategoryClosure(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    :cond_0
    return-void
.end method

.method public insertFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    move-wide/from16 v0, p8

    new-instance v8, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setLastModifiedAt(J)V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setCreatedAt(J)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    return-void
.end method

.method public insertFolder(Ljava/util/Collection;)V
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
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
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

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract isUsed(Ljava/lang/String;)Z
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(UUID) > 0 FROM category_tree WHERE UUID = :uuid AND isDeleted = 0"
    .end annotation
.end method

.method public merge(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJ)V
    .locals 16
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, p2

    invoke-virtual {v15, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->merge(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p0

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual/range {v7 .. v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveInternal(Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p0

    invoke-virtual {v7, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteMovingCategory(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteInternal(Ljava/lang/String;JJ)I

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateCategoryByCategoryUuid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public move(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    move-object v9, p0

    move-object v1, p3

    move-object v0, p4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-virtual {v8, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    invoke-direct {p0, p3, v4, p4, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->isValidSourceTargetFolders(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getTargetPath(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->setRestorePathToMerge(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, v8

    move-object v3, v5

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->merge(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJ)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    invoke-virtual {p0, p1, v8, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->findAndMakeCategory(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p3

    move-wide v3, p5

    move-wide/from16 v5, p7

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveInternal(Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public moveAndReorder(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Collection;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v10, p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v9

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->move(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p9

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->reorder(Ljava/lang/String;Ljava/util/Collection;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    :cond_0
    return-void
.end method

.method public moveInternal(Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteMovingCategory(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToParent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->changeParentUuid(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public abstract moveToParent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "INSERT OR REPLACE INTO category_tree_closure (ancestor, descendant, depth) SELECT supertree.ancestor, subtree.descendant, supertree.depth + subtree.depth + 1 FROM category_tree_closure AS supertree CROSS JOIN category_tree_closure AS subtree WHERE supertree.descendant = :parentUuid AND subtree.ancestor = :targetUuid"
    .end annotation
.end method

.method public moveToRecycleBin(Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p7, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p7

    if-nez p7, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "moveToRecycleBin, Target category not exist. uuid : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToRecycleBinInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trash:///"

    move-wide v3, p4

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->changeParentUuid(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteMovingCategory(Ljava/lang/String;)V

    const-string p2, "trash:///"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToParent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public moveToRecycleBinInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V
    .locals 8
    .param p6    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToRecycleBinInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;I)V

    return-void
.end method

.method public moveToRecycleBinInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;I)V
    .locals 18
    .param p6    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move/from16 v0, p7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#delete, isDeleted: 2, depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    add-int/lit8 v10, v0, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToRecycleBinInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;I)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToTrash(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->moveToRecycleBinByCategoryUuid(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public abstract moveToTrash(Ljava/lang/String;Ljava/lang/String;JJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET path=:path , isDeleted=2 , recycle_bin_time_moved=:recyclerMovedTime , serverTimestamp=:serverTimestamp , isDirty=1 WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public reorder(Ljava/lang/String;Ljava/util/Collection;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 4
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;JJ",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_0

    goto :goto_1

    :cond_0
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    if-eqz p8, :cond_1

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getCreatedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p8, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setCreatedAt(J)V

    :cond_2
    invoke-virtual {p8, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setLastModifiedAt(J)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    const/4 v0, 0x1

    invoke-virtual {p8, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDirty(I)V

    invoke-interface {p7, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Ljava/util/Collection;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public restore(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    move-object v10, p0

    move-object v3, p3

    const/4 v0, 0x0

    if-nez v3, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    const-string v2, "restore, folderUuid is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v9

    if-nez v9, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore, folder entity not exist. uuid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v2, p2

    move-wide v4, p4

    invoke-virtual {p0, v9, p2, v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;J)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreToTargetFolder(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restore(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/util/Collection;)I

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertCategoryClosure(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract restoreFromTrash(Ljava/lang/String;Ljava/lang/String;JJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET path=:path , isDeleted=0 , recycle_bin_time_moved=:recyclerMovedTime , serverTimestamp=:serverTimestamp , isDirty=1 WHERE UUID=:uuid"
    .end annotation
.end method

.method public restoreInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;J)V
    .locals 6
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;JI)V

    return-void
.end method

.method public restoreInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;JI)V
    .locals 16
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move/from16 v0, p5

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#restore, depth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    add-int/lit8 v8, v0, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;JI)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    const-string v11, ""

    move-object/from16 v9, p0

    move-wide/from16 v14, p3

    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreFromTrash(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreDocsOfCurrentFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;J)V

    return-void
.end method

.method public setRestorePathToMerge(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setRestorePath(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->setRestorePathToMerge(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract updateDelete(Ljava/lang/String;J)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDeleted=1 , serverTimestamp=:serverTimestamp WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateDelete(Ljava/lang/String;JJ)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDeleted=1 , serverTimestamp=:serverTimestamp , lastModifiedAt=:lastModifiedAt , isDirty=1 WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateDeleteWithServerTimestampIncrease(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET isDeleted=1 , serverTimestamp=serverTimestamp+1 WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateModifiedTime(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET lastModifiedAt =:modifiedAt WHERE UUID=:uuid"
    .end annotation
.end method

.method public updateModifiedTimeWithUuidList(Ljava/util/Collection;)V
    .locals 4
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
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

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateModifiedTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract updateServerTimestamp(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT category_tree SET serverTimestamp =:serverTimestamp , isDirty=1  WHERE UUID=:uuid"
    .end annotation
.end method

.method public updateServerTimestampWithUuidList(Ljava/util/Collection;)V
    .locals 4
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;",
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

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->categoryUuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/CategoryTimeTuple;->time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->updateServerTimestamp(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
