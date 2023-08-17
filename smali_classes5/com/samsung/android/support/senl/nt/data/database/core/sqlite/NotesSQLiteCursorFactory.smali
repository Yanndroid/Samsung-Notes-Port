.class public Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# static fields
.field private static final MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String;

.field private static sCursorSize:I

.field private static sSdocDbSizeMB:J


# instance fields
.field private final mSupportSQLiteQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "NotesSQLiteCursorFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->sCursorSize:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->sSdocDbSizeMB:J

    return-void
.end method

.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->mSupportSQLiteQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    return-void
.end method

.method private static getSdocDbSizeMB()J
    .locals 5

    sget-wide v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->sSdocDbSizeMB:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->TAG:Ljava/lang/String;

    const-string v1, "getDbSize"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    const-string v4, "sdoc.db"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    sput-wide v1, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->sSdocDbSizeMB:J

    return-wide v1

    :cond_2
    return-wide v2
.end method

.method public static declared-synchronized setCursorSize(I)V
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->sCursorSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->mSupportSQLiteQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteProgram;

    invoke-direct {v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    :cond_0
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_6

    sget p2, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->sCursorSize:I

    const-string p3, "NotesCursor"

    if-lez p2, :cond_1

    sget-object p4, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PREF_KEY_CHANGE_CURSOR_SIZE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Landroid/database/CursorWindow;

    int-to-long v0, p2

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    invoke-direct {p4, p3, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteCursor;->setWindow(Landroid/database/CursorWindow;)V

    return-object p1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteCursorFactory;->getSdocDbSizeMB()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    new-instance p2, Landroid/database/CursorWindow;

    const-wide/32 v0, 0x400000

    invoke-direct {p2, p3, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteCursor;->setWindow(Landroid/database/CursorWindow;)V

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x64

    cmp-long p2, v0, v2

    if-gez p2, :cond_3

    new-instance p2, Landroid/database/CursorWindow;

    const-wide/32 v0, 0x800000

    invoke-direct {p2, p3, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x96

    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    new-instance p2, Landroid/database/CursorWindow;

    const-wide/32 v0, 0xc00000

    invoke-direct {p2, p3, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0xc8

    cmp-long p2, v0, v2

    if-gez p2, :cond_5

    new-instance p2, Landroid/database/CursorWindow;

    const-wide/32 v0, 0x1000000

    invoke-direct {p2, p3, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    new-instance p2, Landroid/database/CursorWindow;

    const-wide/32 v0, 0x1400000

    invoke-direct {p2, p3, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_6
    :goto_1
    return-object p1
.end method
