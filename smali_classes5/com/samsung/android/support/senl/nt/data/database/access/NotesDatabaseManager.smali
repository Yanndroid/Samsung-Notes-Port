.class public Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

.field private static sIsRunningTest:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesDatabaseManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getDatabase(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDatabase, inMemory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Landroidx/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelperFactory;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelperFactory;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->MIGRATIONS:[Landroidx/room/migration/Migration;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    return-object p0

    :cond_0
    const-string p1, "sdoc.db"

    invoke-static {p0, v0, p1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelperFactory;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelperFactory;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager$1;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager$1;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->MIGRATIONS:[Landroidx/room/migration/Migration;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->isRunningTest()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getDatabase(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-object v0, p0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static init()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->TAG:Ljava/lang/String;

    const-string v1, "init!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "init"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static declared-synchronized isRunningTest()Z
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sIsRunningTest:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "androidx.test.ext.junit.runners.AndroidJUnit4"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sIsRunningTest:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sIsRunningTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sIsRunningTest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static releaseInstance()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    if-eqz v0, :cond_1

    const-class v0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->close()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->sDatabaseInstance:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
