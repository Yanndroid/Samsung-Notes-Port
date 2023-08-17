.class public Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;
    }
.end annotation


# static fields
.field private static final MAX_THREAD_POOL_COUNT:I = 0x3

.field public static final NEED_TO_BE_RESTORED:Ljava/lang/String; = "restore_db"

.field public static final PREF_KEY_PENDING_PATH_SET:Ljava/lang/String; = "pending_path_set"

.field private static final TAG:Ljava/lang/String; = "EmptyDatabaseDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImportDocumentManager:Lt1/a;

.field private final mNotesCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

.field private final mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field private mOnRestoreListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

.field private final mPendingPath:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mPendingPath:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mNotesCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)Lt1/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mImportDocumentManager:Lt1/a;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mPendingPath:Ljava/util/Set;

    return-object p0
.end method

.method public static checkNeedToRestore(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->isEmptyDatabase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->isExistDocument(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "APP_LAUNCH"

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "restore_db"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private findRestorePath(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getSpenDocument(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    const-string v0, "filePath"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_4
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private static getSpenDocument(Landroid/content/Context;)[Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$2;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$2;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private internalExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getOnRestoreListener()Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getOnRestoreListener()Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;->onStart()V

    :cond_0
    const/4 v0, 0x3

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "EmptyDatabaseDetector"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lt1/a;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1, v2}, Lt1/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)V

    invoke-virtual {v1, p1}, Lt1/a;->N(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lt1/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mImportDocumentManager:Lt1/a;

    invoke-virtual {p1, v0}, Lt1/a;->u(Ljava/util/concurrent/ExecutorService;)Lt1/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt1/a;->t(Z)V

    return-void
.end method

.method private static isEmptyDatabase(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p0

    const-string v0, "SELECT COUNT(UUID) FROM sdoc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "EmptyDatabaseDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmptyDatabase, doc count in DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    move v1, v0

    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-gtz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isExistDocument(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getSpenDocument(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeRestoreFolder()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreFolderCreator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mNotesCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreFolderCreator;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreFolderCreator;->createFolders()V

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mImportDocumentManager:Lt1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt1/a;->P()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel, remains : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyDatabaseDetector"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mPendingPath:Ljava/util/Set;

    return-object v0
.end method

.method public execute()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getRestorePath()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->execute(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mPendingPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mPendingPath:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdoc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "old_restored"

    goto :goto_1

    :cond_1
    const-string v4, "restored:///"

    :goto_1
    invoke-direct {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->makeRestoreFolder()V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->internalExecute(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to make restored folders, e : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmptyDatabaseDetector"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOnRestoreListener()Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mOnRestoreListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    return-object v0
.end method

.method public getRestorePath()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "EmptyDatabaseDetector"

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    const-string v3, "SELECT filePath FROM sdoc WHERE filePath LIKE \'%.sdoc\' OR filePath LIKE \'%.sdocx\'"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestorePath, count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->findRestorePath(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestorePath, restore count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public setOnRestoreListener(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;)Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->mOnRestoreListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    return-object p0
.end method
