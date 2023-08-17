.class public Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table reminder_internal (_id integer primary key autoincrement,id_uuid_reminder text not null, id_uuid_document text not null, request_code integer not null, trigger_time integer not null,set_time integer not null,alarm_notify_done integer not null default 0,state integer not null default 0);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "reminder.db"

.field public static final DATABASE_TABLE:Ljava/lang/String; = "reminder_internal"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final KEY_BOOL_ALARM_NOTIFY_DONE:Ljava/lang/String; = "alarm_notify_done"

.field public static final KEY_INT_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field private static final KEY_INT_ROW_ID:Ljava/lang/String; = "_id"

.field public static final KEY_INT_STATE:Ljava/lang/String; = "state"

.field private static final KEY_LONG_SET_TIME:Ljava/lang/String; = "set_time"

.field public static final KEY_LONG_TRIGGER_TIME:Ljava/lang/String; = "trigger_time"

.field public static final KEY_STRING_DOCUMENT_UUID:Ljava/lang/String; = "id_uuid_document"

.field public static final KEY_STRING_REMINDER_UUID:Ljava/lang/String; = "id_uuid_reminder"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ReminderDbHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "reminder.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static deleteDatabase(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->isDatabaseExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reminder.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDatabaseExist(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "reminder.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDatabaseExist, exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "create table reminder_internal (_id integer primary key autoincrement,id_uuid_reminder text not null, id_uuid_document text not null, request_code integer not null, trigger_time integer not null,set_time integer not null,alarm_notify_done integer not null default 0,state integer not null default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade, oldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p2, "ALTER TABLE reminder_internal ADD COLUMN state integer not null default 0;"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->TAG:Ljava/lang/String;

    const-string v0, "onUpgrade"

    invoke-static {p3, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "DROP TABLE IF EXISTS reminder_internal"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/ReminderDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method
