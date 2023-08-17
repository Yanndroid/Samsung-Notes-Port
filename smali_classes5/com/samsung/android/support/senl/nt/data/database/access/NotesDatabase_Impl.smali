.class public final Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;
.super Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;
.source "SourceFile"


# instance fields
.field private volatile _notesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

.field private volatile _notesAutoTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;

.field private volatile _notesCategoryTreeClosureDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

.field private volatile _notesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

.field private volatile _notesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;

.field private volatile _notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

.field private volatile _notesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

.field private volatile _notesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

.field private volatile _notesDocumentPageDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

.field private volatile _notesHashtagContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

.field private volatile _notesHashtagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

.field private volatile _notesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

.field private volatile _notesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

.field private volatile _notesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

.field private volatile _notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

.field private volatile _notesPageSearchInfoDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;

.field private volatile _notesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

.field private volatile _notesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

.field private volatile _notesRetryDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;

.field private volatile _notesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

.field private volatile _notesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

.field private volatile _notesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

.field private volatile _notesTemplateDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;

.field private volatile _shareSpaceInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;

.field private volatile _syncCategoryTreeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

.field private volatile _syncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

.field private volatile _syncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

.field private volatile _syncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

.field private volatile _syncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public categoryTreeClosureDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeClosureDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeClosureDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeClosureDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeClosureDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeClosureDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `sdoc`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `category`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `content`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `category_tree`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `category_tree_closure`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `sync_info`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `tag_list`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `retry`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `stroke`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `document_template`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `server_only_folder_node`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `mapped_document`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `document_page`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `hashtag`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `hashtagContent`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `account`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `auto_tag_list`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `text_search`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `page_search_info`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `share_space_info`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 23

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const-string v3, "category"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "sdoc"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "category_memo_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "sdoc"

    const-string v4, "category"

    const-string v5, "content"

    const-string v6, "category_tree"

    const-string v7, "category_tree_closure"

    const-string v8, "sync_info"

    const-string v9, "tag_list"

    const-string v10, "retry"

    const-string v11, "stroke"

    const-string v12, "document_template"

    const-string v13, "server_only_folder_node"

    const-string v14, "mapped_document"

    const-string v15, "document_page"

    const-string v16, "hashtag"

    const-string v17, "hashtagContent"

    const-string v18, "account"

    const-string v19, "auto_tag_list"

    const-string v20, "text_search"

    const-string v21, "page_search_info"

    const-string v22, "share_space_info"

    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl$1;

    const/16 v2, 0x38

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl$1;-><init>(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;I)V

    const-string v2, "7034126fd73d4cc2223224a3205af312"

    const-string v3, "a8ef07c70bad2f8556058b2224641e4c"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public notesAccountDAO()Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAccountDAO:Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesAutoTagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAutoTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAutoTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAutoTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAutoTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesAutoTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesConvertedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesDebugDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDebugDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesDocumentPageDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentPageDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentPageDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentPageDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentPageDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentPageDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesHashtagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesMainListDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesMappedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesOldDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesPageSearchInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesPageSearchInfoDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesPageSearchInfoDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesPageSearchInfoDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesPageSearchInfoDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesPageSearchInfoDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesRecycleBinDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesRestoreDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesRetryDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRetryDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRetryDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRetryDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRetryDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesRetryDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesSearchDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesStrokeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesTagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notesTemplateDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTemplateDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTemplateDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTemplateDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTemplateDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesTemplateDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sdocCategoryTreeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sdocContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sdocDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_notesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shareSpaceInfoDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_shareSpaceInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_shareSpaceInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_shareSpaceInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_shareSpaceInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_shareSpaceInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncCategoryTreeDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncCategoryTreeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncCategoryTreeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncCategoryTreeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncCategoryTreeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncCategoryTreeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncMdeDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncNotesContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase_Impl;->_syncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
