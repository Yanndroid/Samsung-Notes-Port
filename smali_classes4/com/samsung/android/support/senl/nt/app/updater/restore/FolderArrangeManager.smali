.class public Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;
    }
.end annotation


# static fields
.field private static final PREF_KEY_ARRANGE_FOLDER_DATABASE:Ljava/lang/String; = "key_arrange_folder_1"


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->lambda$arrangeFolders$0(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/List;)V

    return-void
.end method

.method private addFolder(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            "J)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setParentUuid(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDirty(I)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private arrangeFolders_Internal(Ljava/util/List;JLcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;J",
            "Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;",
            ")V"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-wide v4, v9

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->recursiveFolderSet(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;JJ)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;->execute(Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->lambda$arrangeFolders$1(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public static checkNeedToMigrate(Landroid/content/Context;)V
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_arrange_folder_1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->arrangeFolders()V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private findParent(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$arrangeFolders$0(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/List;)V
    .locals 2

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "DELETE FROM category_tree"

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "DELETE FROM category_tree_closure"

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->insertFolder(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$arrangeFolders$1(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;Ljava/util/List;)V
    .locals 2

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v1, "DELETE FROM category_tree_closure"

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->restore(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public arrangeFolders()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocCategoryTreeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    move-result-object v0

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "SELECT * FROM category_tree ORDER BY createdAt ASC"

    invoke-direct {v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v2

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/updater/restore/b;

    invoke-direct {v4, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/b;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->arrangeFolders_Internal(Ljava/util/List;JLcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;)V

    return-void
.end method

.method public arrangeFolders(Ljava/util/Set;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocCategoryTreeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDirty(I)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/app/updater/restore/c;

    invoke-direct {v3, v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/c;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;)V

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->arrangeFolders_Internal(Ljava/util/List;JLcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;)V

    return-void
.end method

.method public recursiveFolderSet(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;JJ)V
    .locals 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            "JJ)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-wide/from16 v11, p6

    invoke-interface/range {p2 .. p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->addFolder(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V

    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->addFolder(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V

    return-void

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->findParent(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->recursiveFolderSet(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;JJ)V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->addFolder(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V

    return-void

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->addFolder(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V

    return-void

    :cond_5
    if-nez v13, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setParentUuid(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setParentUuid(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_a

    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-virtual {v13, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDeleted(I)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDeleted(I)V

    goto :goto_2

    :cond_a
    :goto_0
    invoke-virtual {v10, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDeleted(I)V

    :goto_1
    invoke-virtual/range {p3 .. p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setRecycleBinTimeMoved(J)V

    :goto_2
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->addFolder(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;J)V

    return-void
.end method
