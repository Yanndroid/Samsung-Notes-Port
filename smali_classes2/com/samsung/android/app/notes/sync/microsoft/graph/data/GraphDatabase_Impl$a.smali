.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `graph_sync` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `docUuid` TEXT NOT NULL, `commandType` INTEGER NOT NULL DEFAULT 0, `requestedServerTimestamp` INTEGER NOT NULL DEFAULT 0, `msAccountId` TEXT DEFAULT \'\', `msDocumentId` TEXT DEFAULT \'\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_graph_sync_docUuid_commandType` ON `graph_sync` (`docUuid`, `commandType`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'2e48616e8327fa57ad40b34830912b7c\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `graph_sync`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->b(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->c(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->e(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->f(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->g(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->h(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->i(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->j(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->k(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->l(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;->d(Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v3, "_id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "docUuid"

    const-string v5, "TEXT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "docUuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "commandType"

    const-string v5, "INTEGER"

    const-string v8, "0"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "commandType"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v5, "requestedServerTimestamp"

    const-string v6, "INTEGER"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "0"

    const/4 v10, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "requestedServerTimestamp"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v6, "msAccountId"

    const-string v7, "TEXT"

    const/4 v9, 0x0

    const-string v10, "\'\'"

    const/4 v11, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "msAccountId"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v6, "msDocumentId"

    const-string v7, "TEXT"

    const-string v10, "\'\'"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "msDocumentId"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "index_graph_sync_docUuid_commandType"

    invoke-direct {v7, v3, v6, v2}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/room/util/TableInfo;

    const-string v3, "graph_sync"

    invoke-direct {v2, v3, v0, v1, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v3}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graph_sync(com.samsung.android.app.notes.sync.microsoft.graph.data.GraphSyncEntity).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v0, 0x0

    invoke-direct {p1, v6, v0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
