.class public Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static a(Landroid/content/Context;Z)Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;
    .locals 3

    const-class v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDatabase, inMemory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphDatabaseManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Landroidx/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object p1, Li1/c;->a:[Landroidx/room/migration/Migration;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    return-object p0

    :cond_0
    const-string p1, "graph.db"

    invoke-static {p0, v0, p1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-instance p1, Li1/b$a;

    invoke-direct {p1}, Li1/b$a;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object p1, Li1/c;->a:[Landroidx/room/migration/Migration;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Li1/b;->d()Z

    move-result v0

    invoke-static {p0, v0}, Li1/b;->c(Landroid/content/Context;Z)Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Li1/b;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Li1/b;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Li1/b;->a(Landroid/content/Context;Z)Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    move-result-object p0

    sput-object p0, Li1/b;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

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

.method public static declared-synchronized d()Z
    .locals 3

    const-class v0, Li1/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "androidx.test.ext.junit.runners.AndroidJUnit4"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Li1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Li1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_0
    :goto_0
    sget-object v1, Li1/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
