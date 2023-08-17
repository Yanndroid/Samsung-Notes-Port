.class public Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREF_KEY_REPAIR_CIRCULAR_CATEGORY:Ljava/lang/String; = "key_repair_circular_category"

.field private static final TAG:Ljava/lang/String; = "RestoreDatabaseManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCircularCategory(Landroid/content/Context;)V
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_repair_circular_category"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/updater/restore/CircularCategoryDetector;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/CircularCategoryDetector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/CircularCategoryDetector;->execute()V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static repairUncategorizedFolder(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesRestoreRepository()Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->repairUncategorizedFolder()V

    return-void
.end method

.method private static repaireScreenOffMemoFolder(Landroid/content/Context;)V
    .locals 4

    const-string v0, "RestoreDatabaseManager"

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p0

    const-string v1, "screenOffMemo:///"

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uncategorized:///"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->move(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "repaireScreenOffMemoFolder, folder is restored"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repaireScreenOffMemoFolder, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4

    const-string v0, "RestoreDatabaseManager"

    const-string v1, "restore, started"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v1

    const-string v2, "RESTORE_TASK"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getLastVersionCode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->checkNeedToResetVersion(I)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->checkNeedToArrange(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->checkNeedToMigrate(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    const-string p0, "restore, finished"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreGuaranteed(Landroid/content/Context;)V
    .locals 4

    const-string v0, "RestoreDatabaseManager"

    const-string v1, "restoreGuaranteed, started"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v1

    const-string v2, "RESTORE_TASK"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->checkNeedToRestore(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreDatabaseManager;->repairUncategorizedFolder(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreDatabaseManager;->repaireScreenOffMemoFolder(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreDatabaseManager;->checkCircularCategory(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    const-string p0, "restoreGuaranteed, finished"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
