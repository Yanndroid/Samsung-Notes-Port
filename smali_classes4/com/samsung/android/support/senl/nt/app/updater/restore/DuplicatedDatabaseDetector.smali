.class public Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;
    }
.end annotation


# static fields
.field public static final NEED_TO_BE_ARRANGED:Ljava/lang/String; = "arrange_db"

.field private static final TAG:Ljava/lang/String; = "DuplicatedDatabaseDetector"

.field private static final sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

.field private mOnArrageListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "DuplicatedDatabaseDetector"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesDebugDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->lambda$deleteDatabaseNotExist$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mOnArrageListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;

    return-object p0
.end method

.method public static checkNeedToArrange(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DuplicatedDatabaseDetector"

    const-string v1, "checkNeedToArrange"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesDebugDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->existDirtyRows()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "checkNeedToArrange, need to arrange database"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "APP_LAUNCH"

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "arrange_db"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->deleteDatabaseNotExist()V

    return-void
.end method

.method private deleteDatabaseNotExist()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->dumpDocumentsForUsed()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDatabaseNotExist, count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DuplicatedDatabaseDetector"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/updater/restore/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/a;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    :cond_2
    return-void
.end method

.method private deleteDuplicated()I
    .locals 7

    const-string v0, "DuplicatedDatabaseDetector"

    const-string v1, "deleteDuplicated, start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->dumpDocumentsForUsed()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->findRecentlyUsed(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->existDuplicatedPath(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteDuplicated$findRecentlyUsed, path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroidx/core/util/Pair;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDuplicated, count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->deleteDuplicated()I

    move-result p0

    return p0
.end method

.method private existDuplicatedPath(I)Z
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$deleteDatabaseNotExist$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mNotesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->deleteDocuments(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public execute()Z
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "arrange_db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mOnArrageListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;->onStart()V

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/util/concurrent/Callable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observe(Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    const/4 v0, 0x1

    return v0
.end method

.method public setOnArrangeListener(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;)Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->mOnArrageListener:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;

    return-object p0
.end method
