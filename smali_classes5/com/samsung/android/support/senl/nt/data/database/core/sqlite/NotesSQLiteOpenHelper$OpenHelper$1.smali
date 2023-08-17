.class Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->createDatabaseErrorHandler([Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroid/database/DatabaseErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field public final synthetic val$dbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;->val$callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;->val$dbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "we will backup this file first!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;->val$callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper$1;->val$dbRef:[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWrappedDb([Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method
