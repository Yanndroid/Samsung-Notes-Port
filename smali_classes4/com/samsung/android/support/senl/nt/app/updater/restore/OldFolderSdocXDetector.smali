.class public Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OldFolderSdocXDetector"


# instance fields
.field private final mDatabase:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

.field private final mFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

.field private final mRestoreRepository:Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mDatabase:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesRestoreRepository()Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mRestoreRepository:Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->lambda$execute$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getConvertedFolderMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->getOldCategorySet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mFolderConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryToFolderConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getOldCategorySet(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$execute$0()Ljava/lang/Boolean;
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mRestoreRepository:Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->getSdocXInOldFolder()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->getConvertedFolderMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v9, "coedit:///"

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v9, "shared:///"

    :cond_2
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v7, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryIsDirty(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mRestoreRepository:Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->update(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore sdocx in old folders, count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", executionTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OldFolderSdocXDetector"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->mDatabase:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/restore/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/d;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
