.class public Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

.field private final mDatabase:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;->mDatabase:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;->mConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;->mDatabase:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT UUID, oldColor FROM (SELECT category_tree.* FROM category_tree WHERE parentUUID = \'uncategorized:///\') AS tree JOIN (SELECT category_tree.displayName AS \'oldName\', category_tree.displayNameColor AS \'oldColor\' FROM category_tree WHERE parentUUID = \'old:///\') AS old ON tree.displayName = oldName"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "UUID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "oldColor"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;->mConverter:Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->getConvertedColor(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE OR ABORT category_tree SET displayNameColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " WHERE UUID = \'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
.end method
