.class Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenHelper"
.end annotation


# static fields
.field private static final WIPE_CHECK_FILE_SUFFIX:Ljava/lang/String; = "-wipecheck"


# instance fields
.field private final mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field private final mDbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

.field private mMigrated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 6

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteQuery;)V

    iget v4, p4, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    invoke-static {p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->createDatabaseErrorHandler([Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroid/database/DatabaseErrorHandler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mDbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->backupDatabaseFile(Ljava/lang/String;)V

    return-void
.end method

.method private static backupDatabaseFile(Ljava/lang/String;)V
    .locals 4

    const-string v0, ".backup"

    const-string v1, ":memory:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!@ DB Corruption has happened before this"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->deleteDatabaseFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!@ File delete failed!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ rename to backup file, ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "!@ openDatabase - Exception during copying and renaming"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "!@ Corruption in memory DB"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createDatabaseErrorHandler([Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroid/database/DatabaseErrorHandler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;)V

    return-object v0
.end method

.method private static deleteDatabaseFile(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-journal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-wal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-shm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-se"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-wipecheck"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return v0
.end method

.method public static getWrappedDb([Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;->isDelegate(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    :cond_1
    aget-object p0, p0, v0

    return-object p0
.end method

.method private static renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameDatabaseFile - to, ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-journal"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-wal"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-shm"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-se"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-wipecheck"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private static renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renameFile - postfix : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ret : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mDbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getReadableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mDbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb([Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getWritableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWritableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "PRAGMA wal_autocheckpoint=1000"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    const-string v0, "PRAGMA journal_size_limit=8388608"

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    return-void
.end method
