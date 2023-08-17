.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/a;


# static fields
.field public static final synchronizeCategory:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->synchronizeCategory:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    new-instance p5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p5, p2, v0, p3, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p5, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setCreatedAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p5, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setLastModifiedAt(J)V

    invoke-virtual {p5, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    const/4 p2, 0x0

    invoke-virtual {p5, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDirty(I)V

    new-instance p2, Lr0/a;

    invoke-direct {p2, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p5}, Lr0/a;->z(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->addCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createRestoredFolder()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreFolderCreator;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreFolderCreator;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreFolderCreator;->createFolderByVersion()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v0

    return-object v0
.end method

.method public deleteCategory(Landroid/content/Context;Ljava/lang/String;JIZ)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->synchronizeCategory:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lr0/a;

    invoke-direct {v1, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lr0/a;->c(Ljava/lang/String;JIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteCategorySync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->synchronizeCategory:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lr0/a;

    invoke-direct {v1, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lr0/a;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCategoryColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCategoryDeleted(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCategoryDirty(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDirty()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCategoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_3

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p2, ""

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->uncategorised:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->uncategorised:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public getCategoryOrder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getReorder()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getCategoryUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->getNoteCategoryUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryUUID(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Lr0/a;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr0/a;->i()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildrenMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getCategoryUUIDList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr0/a;->n()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lr0/a;->o(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lr0/a;->p(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDirtyCountOfNoteCategory(Landroid/content/Context;)I
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getOldDirtyCountOfNoteCategory()I

    move-result p1

    return p1
.end method

.method public getNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryIsDirty()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getNoteCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getNoteCategoryServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getNoteCategoryTimestamp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getNoteCategoryUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    const-string v0, "1"

    if-eqz p2, :cond_2

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getUUIDListByCategory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lr0/a;->v(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidAndNoteCategoryTimeList(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr0/a;->r()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public isExistCategory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/notes/sync/db/n;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public recoveryCategory(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->synchronizeCategory:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lr0/a;

    invoke-direct {v1, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lr0/a;->q()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p2

    move v3, p5

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lr0/a;->E(Ljava/lang/String;IJII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1}, Ln2/a;->r()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lr0/a;->V(Ljava/lang/String;I)V

    return-void
.end method

.method public setCategoryOrder(Landroid/content/Context;Ljava/util/HashMap;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3, p4}, Lr0/a;->M(Ljava/util/HashMap;J)V

    return-void
.end method

.method public setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I
    .locals 8

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p3, "1"

    :cond_1
    move-object v3, p3

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getNoteDeleted(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "old:///Uncategorized"

    :goto_0
    move-object v7, p1

    const-string v3, "trash:///"

    move-object v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateNoteCategoryAndAbsolutePath(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateNoteCategory(Ljava/lang/String;Ljava/lang/String;IJ)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public setNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateDirtyCategory(Ljava/lang/String;I)V

    return-void
.end method

.method public setTimestampAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 1

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lr0/a;->W(Ljava/lang/String;JI)V

    return-void
.end method

.method public synchronizeCategory()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;->synchronizeCategory:Ljava/lang/Object;

    return-object v0
.end method

.method public updateCategoryNameAndColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3, p4}, Lr0/a;->R(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
