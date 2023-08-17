.class public Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

.field public final c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

.field public final d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

.field public final e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field public final f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr0/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    iput-object v0, p0, Lr0/a;->b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncCategoryTreeDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    move-result-object v1

    iput-object v1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-result-object v1

    iput-object v1, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lr0/a;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->categoryTreeClosureDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;)V

    iput-object p1, p0, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    return-void
.end method


# virtual methods
.method public final A(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getEntityByParentUuidAndName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lr0/a;->x(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v8

    invoke-virtual {p0, v6, v8, v7}, Lr0/a;->P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lr0/a;->B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v8

    invoke-virtual {p0, v6, v8, v7}, Lr0/a;->P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lr0/a;->B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V
    .locals 17
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p5

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeBySync, change folder from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "SyncCategoryTreeRepository"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v0, v6, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getEntityByParentUuidAndName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lr0/a;->B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v7

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lr0/a;->B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V

    if-eqz v14, :cond_2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    move-object v0, v12

    move-object v3, v13

    goto :goto_2

    :cond_3
    iget-object v0, v6, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;->checkInvalidRelationShip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v1

    move-object v7, v0

    move-object v0, v12

    move-object v3, v13

    move-wide v12, v1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual/range {v7 .. v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveInternal(Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    :goto_2
    move-object/from16 v15, p2

    move-object/from16 v14, p5

    move-object v12, v0

    move-object v13, v3

    goto/16 :goto_0

    :cond_4
    move-object v0, v12

    move-object v3, v13

    iget-object v1, v6, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteMovingCategory(Ljava/lang/String;)V

    iget-object v7, v6, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    add-long v9, v1, v4

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteInternal(Ljava/lang/String;JJ)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeBySync, change docs from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateCategoryByCategoryUuidWithCategoryServerTimestampIncrease(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public C(Ljava/util/List;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "mergeFolderBySync "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p0, p1, v0}, Lr0/a;->D(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final D(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getEntityByParentUuidAndName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3}, Lr0/a;->P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    move-object v0, p0

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lr0/a;->B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3}, Lr0/a;->P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    move-object v0, p0

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lr0/a;->B(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/HashMap;)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public E(Ljava/lang/String;IJII)V
    .locals 7

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->recoveryCategoryForOldCategory(Ljava/lang/String;IJII)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;->checkInvalidRelationShip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteMovingCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToParent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remakeFolder, entityList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lr0/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lr0/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v7

    iget-object v9, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lr0/a;->g(Landroid/content/Context;Ljava/util/List;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    return-void
.end method

.method public H(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remakeTreeClosure, entityList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lr0/a;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repairFolderTime, folderUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/category/FolderTimeUtils;->updateServerTimeUpward(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V

    return-void
.end method

.method public J(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repairParentFolderTimeForNote, docUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getCategoryUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lr0/a;->I(Ljava/lang/String;J)V

    return-void
.end method

.method public K(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->setDisplayNameColor(Ljava/lang/String;I)V

    return-void
.end method

.method public final L(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->setOldCategoryOrder(Ljava/lang/String;I)V

    return-void
.end method

.method public M(Ljava/util/HashMap;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getUUIDListWithOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x927bf

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lr0/a;->s(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lr0/a;->L(Ljava/lang/String;I)V

    add-int/2addr v1, v0

    goto :goto_2

    :cond_3
    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->setCategoryOrderModifiedTime(J)V

    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    iget-object v0, p0, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;->checkInvalidRelationShip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->updateParentFolder(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, p1, p2}, Lr0/a;->F(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public O(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->setOrderBy(Ljava/lang/String;I)V

    return-void
.end method

.method public final P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getTargetPath(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->setRestorePathToMerge(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    return-void
.end method

.method public Q(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCategoryTreeClosure, entity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;->checkInvalidRelationShip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public R(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->setDisplayNameAndColorForOldCategory(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public S(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string/jumbo v1, "updateFolderBySync "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {p0, v0}, Lr0/a;->Q(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final T(Landroidx/room/RoomDatabase;Ljava/util/List;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V
    .locals 8
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;JJ",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result p4

    const/4 p5, 0x2

    if-nez p4, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    sget-object p4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p0

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lr0/a;->X(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result p4

    if-ne p4, p5, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p7, v1, v2, v3}, Lr0/a;->Z(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;J)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result p4

    if-ne p4, p5, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    sget-object p5, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p0, p7, p3, p4, p5}, Lr0/a;->Z(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;J)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p0

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lr0/a;->X(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public U(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lr0/a;->b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lr0/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    iget-object v7, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lr0/a;->T(Landroidx/room/RoomDatabase;Ljava/util/List;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->onDataUpdated()V

    return-void
.end method

.method public V(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->updateIsDirty(Ljava/lang/String;I)V

    return-void
.end method

.method public W(Ljava/lang/String;JI)V
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->setTimestampAndDirtyForOldCategory(Ljava/lang/String;JI)V

    return-void
.end method

.method public final X(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/lang/String;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateToRecycleBin call updateToRecycleBinInternal, uuid : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " , isDeleted : 1"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SyncCategoryTreeRepository"

    invoke-static {p4, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p5, p6, p7}, Lr0/a;->Y(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    iget-object p3, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->deleteMovingCategory(Ljava/lang/String;)V

    iget-object p3, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToParent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Y(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V
    .locals 13
    .param p4    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-wide v10, p2

    move-object/from16 v12, p4

    invoke-virtual {p0, v2, v10, v11, v12}, Lr0/a;->Y(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;JLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V

    goto :goto_0

    :cond_1
    move-wide v10, p2

    move-object/from16 v12, p4

    iget-object v3, v0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v6, p2

    move-wide v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->moveToTrash(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getRestorePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p4

    move-wide v5, p2

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->moveToRecycleBinByCategoryUuid(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public final Z(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;J)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateToRestore call restoreInternal, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , isDeleted : 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restoreInternal(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "deleteFolderBySync "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lr0/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "deleteFolderBySyncBatch "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr0/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;JIZ)V
    .locals 3

    const-string v0, "1"

    if-eqz p5, :cond_0

    iget-object p5, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p5, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateCategoryByCategoryUuid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    iget-object v1, p0, Lr0/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p5, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateCategoryByCategoryUuidWithCategoryServerTimestamp(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    iget-object p5, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->deleteOldCategory(Ljava/lang/String;JI)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->deleteCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->deleteCategoryClosure(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "dumpCategoryTree"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getEntities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "dumpCategoryTreeClosure"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->dumpCategoryTreeClosure()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/content/Context;Ljava/util/List;JJLcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getEntityListByParentUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v5, v0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v6, p1

    move-object/from16 v7, p7

    move-wide/from16 v10, p5

    move-wide/from16 v12, p3

    invoke-virtual/range {v5 .. v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->move(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v6, v0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v9

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p1

    move-object/from16 v8, p7

    move-wide/from16 v11, p5

    move-wide/from16 v13, p3

    invoke-virtual/range {v6 .. v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->move(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JJ)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "getAllDeletedCategoryEntityForSync"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getAllDeletedCategoryEntityForSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 2

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getAllCategoryEntriesForSync()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public j(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDirtyList, dirtyFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getDirtyList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getFeedEnabledFolderCount()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getFeedEnabledFolders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getIsSyncWithMS(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getOldCategoryUUIDList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getOldCategoryUUIDListIncludeDeletedOrderByAsc()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getOldCategoryUUIDListOrderByAsc()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public p(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getOldCategoryUUIDListByDirty(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getOldLastOrder()I

    move-result v0

    return v0
.end method

.method public r()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getOldUuidAndNoteCategoryTimeList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final s(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lr0/a$a;

    invoke-direct {p1, p0}, Lr0/a$a;-><init>(Lr0/a;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public t(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSyncEntity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getSyncEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    move-result-object p1

    return-object p1
.end method

.method public u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "getSyncEntityList "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getSyncEntityList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUUIDListByCategory(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;->getUUIDListByTrashedUnCategorized()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public x(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertBySync, entity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncCategoryTreeRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;->checkInvalidRelationShip(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V

    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "insertFolderBySync "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->f:Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/SoftParentFolderChecker;->checkInvalidRelationShip(Ljava/util/Collection;)V

    iget-object v0, p0, Lr0/a;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Ljava/util/Collection;)V

    return-void
.end method

.method public z(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Ljava/lang/String;
    .locals 2

    const-string v0, "SyncCategoryTreeRepository"

    const-string v1, "insertOrMerge "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/a;->d:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p0, p1, v0}, Lr0/a;->A(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
