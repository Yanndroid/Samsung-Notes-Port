.class public Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Migration_41_To_42"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x29

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->lambda$migrateBackgroundColor$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private createAllTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CREATE TABLE IF NOT EXISTS `sdoc` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `title` TEXT NOT NULL DEFAULT \'\', `recommendedTitle` TEXT NOT NULL DEFAULT \'\', `content` BLOB NOT NULL, `displayContent` BLOB NOT NULL, `strippedContent` BLOB NOT NULL, `createdAt` INTEGER NOT NULL, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `vrUUID` TEXT DEFAULT \'\', `contentUUID` TEXT DEFAULT \'\', `firstContentType` INTEGER DEFAULT 0, `secondContentType` INTEGER DEFAULT 0, `strokeUUID` TEXT DEFAULT \'\', `strokeRatio` REAL DEFAULT 0.0, `categoryUUID` TEXT NOT NULL DEFAULT \'uncategorized:///\', `categoryserverTimestamp` INTEGER DEFAULT 1464416139847, `categoryisDirty` INTEGER NOT NULL DEFAULT 1, `filePath` TEXT NOT NULL, `noteName` TEXT NOT NULL DEFAULT \'\', `isFavorite` INTEGER NOT NULL DEFAULT 0, `isLock` INTEGER NOT NULL DEFAULT 0, `isSaving` INTEGER NOT NULL DEFAULT 0, `reminderTriggerTime` INTEGER NOT NULL DEFAULT 0, `reminderRequestCode` INTEGER NOT NULL DEFAULT 0, `recycle_bin_time_moved` INTEGER NOT NULL DEFAULT 0, `contentSecureVersion` INTEGER NOT NULL DEFAULT 0, `size` INTEGER NOT NULL DEFAULT 0, `displayTitle` BLOB, `saveType` INTEGER NOT NULL DEFAULT 0, `firstOpendAt` INTEGER NOT NULL DEFAULT 0, `secondOpenedAt` INTEGER NOT NULL DEFAULT 0, `lastOpenedAt` INTEGER NOT NULL DEFAULT 0, `importedAt` INTEGER NOT NULL DEFAULT 0, `recommendedAt` INTEGER NOT NULL DEFAULT 0, `lastMappedAt` INTEGER NOT NULL DEFAULT 0, `mdeSpaceId` TEXT NOT NULL DEFAULT \'\', `mdeItemId` TEXT NOT NULL DEFAULT \'\', `mdeExtra` TEXT NOT NULL DEFAULT \'\', `mdeGroupId` TEXT NOT NULL DEFAULT \'\', `mdeOwnerId` TEXT NOT NULL DEFAULT \'\', `firstHandwritingHeight` INTEGER NOT NULL DEFAULT 0, `deleteRecommended` INTEGER NOT NULL DEFAULT 0, `absolutePath` TEXT, `backgroundColor` INTEGER NOT NULL DEFAULT 0, `backgroundColorInverted` INTEGER NOT NULL DEFAULT 0, `lockAccountGuid` TEXT, `msSyncAccountId` TEXT, `msSyncDocumentUuid` TEXT, `msLastSyncTime` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_sdoc_UUID` ON `sdoc` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `category` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `predefine` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `orderBy` INTEGER NOT NULL DEFAULT 999999, `displayName` TEXT NOT NULL, `displayNameColor` INTEGER NOT NULL DEFAULT -1)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_category_UUID` ON `category` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `content` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `sdocUUID` TEXT NOT NULL, `mime_type` TEXT NOT NULL DEFAULT \'application/octet-stream\', `displayName` TEXT NOT NULL DEFAULT \'\', `srcID` INTEGER NOT NULL, `data` BLOB, `_data` TEXT DEFAULT \'\', `filePath` TEXT NOT NULL DEFAULT \'\', `contentSecureVersion` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_content_UUID` ON `content` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `category_tree` (`UUID` TEXT NOT NULL, `parentUUID` TEXT, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `createdAt` INTEGER NOT NULL, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `recycle_bin_time_moved` INTEGER NOT NULL DEFAULT 0, `displayName` TEXT NOT NULL, `path` TEXT, `orderBy` INTEGER, `displayNameColor` INTEGER NOT NULL DEFAULT -1, `isSyncWithMS` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`UUID`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_category_tree_UUID` ON `category_tree` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `category_tree_closure` (`ancestor` TEXT NOT NULL DEFAULT \'\', `descendant` TEXT NOT NULL DEFAULT \'\', `depth` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`ancestor`, `descendant`), FOREIGN KEY(`ancestor`) REFERENCES `category_tree`(`UUID`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`descendant`) REFERENCES `category_tree`(`UUID`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `sync_info` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `serverId` TEXT, `clientId` TEXT NOT NULL, `clientModifiedTime` INTEGER NOT NULL DEFAULT 0, `isDirtyFolder` INTEGER NOT NULL DEFAULT 1, `clientModifiedTimeFolder` INTEGER NOT NULL DEFAULT 0, `lastModifiedTimeFolder` INTEGER NOT NULL DEFAULT 0, `isSyncFailed` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_sync_info_clientId` ON `sync_info` (`clientId`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `tag_list` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `normalizeName` TEXT NOT NULL, `docUUID` TEXT NOT NULL, `displayName` TEXT NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `retry` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `sdocUUID` TEXT NOT NULL, `strokeFilePath` TEXT NOT NULL, `state` INTEGER NOT NULL DEFAULT 0, `recognitionCount` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `stroke` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `hasVisualCue` INTEGER DEFAULT 0, `text` TEXT DEFAULT \'\', `left` INTEGER DEFAULT 0, `top` INTEGER DEFAULT 0, `right` INTEGER DEFAULT 0, `bottom` INTEGER DEFAULT 0, `filePath` TEXT NOT NULL, `sdocUUID` TEXT NOT NULL, `pageWidth` INTEGER DEFAULT 0, `type` INTEGER NOT NULL DEFAULT 0, `pageUuid` TEXT DEFAULT \'\', `actionLinkData` TEXT DEFAULT \'\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `document_template` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `_data` TEXT, `_size` INTEGER NOT NULL DEFAULT 0, `_display_name` TEXT DEFAULT \'\', `title` TEXT DEFAULT \'\', `createdAt` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL DEFAULT 0, `mime_type` TEXT, `width` INTEGER NOT NULL DEFAULT 0, `height` INTEGER NOT NULL DEFAULT 0, `type` INTEGER NOT NULL DEFAULT 3)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `server_only_folder_node` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `type` TEXT NOT NULL, `parentFolderNodeID` TEXT NOT NULL, `syncModifiedTime` INTEGER NOT NULL, `createdTime` INTEGER NOT NULL, `lastModifiedTime` INTEGER NOT NULL, `recyclerBinMovedTime` INTEGER NOT NULL, `name` TEXT NOT NULL, `state` TEXT NOT NULL, `restorePath` TEXT NOT NULL DEFAULT \'\', `isDirty` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `mapped_document` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `UUID` TEXT NOT NULL DEFAULT \'\', `mappedUUID` TEXT NOT NULL DEFAULT \'\', `converted` INTEGER NOT NULL DEFAULT 1, `mappedAt` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_mapped_document_mappedUUID` ON `mapped_document` (`mappedUUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `document_page` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `UUID` TEXT NOT NULL DEFAULT \'\', `documentUUID` TEXT NOT NULL DEFAULT \'\', `index` INTEGER NOT NULL, `favorite` INTEGER NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_document_page_UUIDs` ON `document_page` (`documentUUID`, `UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `hashtag` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL, `extraInfo` TEXT NOT NULL DEFAULT \'\', `lastModifiedAt` INTEGER NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `serverTimestamp` INTEGER DEFAULT 1464416139847, `UUID` TEXT NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `hashtagContent` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `sdocUUID` TEXT NOT NULL, `extraInfo` TEXT NOT NULL DEFAULT \'\', `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `serverTimestamp` INTEGER DEFAULT 1464416139847, `isSyncFailed` INTEGER DEFAULT 0, `hashtagUUID` TEXT NOT NULL, `lastModifiedAt` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `account` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `accountGuid` TEXT NOT NULL DEFAULT \'\', `accountType` TEXT NOT NULL DEFAULT \'\', `accountName` TEXT DEFAULT \'\', `primaryAccount` INTEGER NOT NULL DEFAULT 1)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_account_accountGuid` ON `account` (`accountGuid`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createOrUpdateTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DROP TABLE IF EXISTS new_category"

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v2, "migrate, createOrUpdateTables - start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS `new_category` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `predefine` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `orderBy` INTEGER NOT NULL DEFAULT 999999, `displayName` TEXT NOT NULL, `displayNameColor` INTEGER NOT NULL DEFAULT -1)"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "INSERT INTO new_category SELECT * FROM category"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS category"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS `category` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `predefine` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `orderBy` INTEGER NOT NULL DEFAULT 999999, `displayName` TEXT NOT NULL, `displayNameColor` INTEGER NOT NULL DEFAULT -1)"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "INSERT INTO category SELECT * FROM new_category"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrate, createOrUpdateTables, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_category_UUID` ON `category` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_content_UUID` ON `content` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW IF NOT EXISTS `category_memo_count` AS SELECT category.*, COUNT(sdoc._id) AS memoCount FROM category LEFT JOIN sdoc ON (category.UUID=sdoc.categoryUUID AND sdoc.isDeleted=0) WHERE category.isDeleted=0 GROUP BY category.UUID ORDER BY category.orderBy ASC"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `category_tree` (`UUID` TEXT NOT NULL, `parentUUID` TEXT, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `createdAt` INTEGER NOT NULL, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `recycle_bin_time_moved` INTEGER NOT NULL DEFAULT 0, `displayName` TEXT NOT NULL, `path` TEXT, `orderBy` INTEGER, `displayNameColor` INTEGER NOT NULL DEFAULT -1, `isSyncWithMS` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`UUID`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_category_tree_UUID` ON `category_tree` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `category_tree_closure` (`ancestor` TEXT NOT NULL DEFAULT \'\', `descendant` TEXT NOT NULL DEFAULT \'\', `depth` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`ancestor`, `descendant`), FOREIGN KEY(`ancestor`) REFERENCES `category_tree`(`UUID`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`descendant`) REFERENCES `category_tree`(`UUID`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `document_page` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `UUID` TEXT NOT NULL DEFAULT \'\', `documentUUID` TEXT NOT NULL DEFAULT \'\', `index` INTEGER NOT NULL, `favorite` INTEGER NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_document_page_UUID` ON `document_page` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `mapped_document` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `UUID` TEXT NOT NULL DEFAULT \'\', `mappedUUID` TEXT NOT NULL DEFAULT \'\', `converted` INTEGER NOT NULL DEFAULT 1, `mappedAt` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_mapped_document_mappedUUID` ON `mapped_document` (`mappedUUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `account` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `accountGuid` TEXT NOT NULL DEFAULT \'\', `accountType` TEXT NOT NULL DEFAULT \'\', `accountName` TEXT DEFAULT \'\', `primaryAccount` INTEGER NOT NULL DEFAULT 1)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_account_accountGuid` ON `account` (`accountGuid`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `server_only_folder_node` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `type` TEXT NOT NULL, `parentFolderNodeID` TEXT NOT NULL, `syncModifiedTime` INTEGER NOT NULL, `createdTime` INTEGER NOT NULL, `lastModifiedTime` INTEGER NOT NULL, `recyclerBinMovedTime` INTEGER NOT NULL, `name` TEXT NOT NULL, `state` TEXT NOT NULL, `restorePath` TEXT NOT NULL DEFAULT \'\', `isDirty` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `document_template` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `_data` TEXT, `_size` INTEGER NOT NULL DEFAULT 0, `_display_name` TEXT DEFAULT \'\', `title` TEXT DEFAULT \'\', `createdAt` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL DEFAULT 0, `mime_type` TEXT, `width` INTEGER NOT NULL DEFAULT 0, `height` INTEGER NOT NULL DEFAULT 0, `type` INTEGER NOT NULL DEFAULT 3)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS stroke (\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT, \'hasVisualCue\' INTEGER DEFAULT 0 ,\'text\' TEXT    DEFAULT \'\', \'left\' INTEGER DEFAULT 0 ,\'top\' INTEGER DEFAULT 0 ,\'right\' INTEGER DEFAULT 0 ,\'bottom\' INTEGER DEFAULT 0 ,\'filePath\' TEXT    NOT NULL ,\'sdocUUID\' TEXT    NOT NULL ,\'pageWidth\' INTEGER DEFAULT 0  )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE stroke ADD `type` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE stroke ADD `pageUuid` TEXT DEFAULT \'\'"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE stroke ADD `actionLinkData` TEXT DEFAULT \'\'"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS retry (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `sdocUUID` TEXT NOT NULL, `strokeFilePath` TEXT NOT NULL, `state` INTEGER NOT NULL DEFAULT 0, `recognitionCount` INTEGER NOT NULL DEFAULT 0, `lastModifiedAt` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `sync_info` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `serverId` TEXT, `clientId` TEXT NOT NULL, `clientModifiedTime` INTEGER NOT NULL DEFAULT 0 , `isDirtyFolder` INTEGER NOT NULL DEFAULT 1, `clientModifiedTimeFolder` INTEGER NOT NULL DEFAULT 0, `isSyncFailed` INTEGER NOT NULL DEFAULT 0, `lastModifiedTimeFolder` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_sync_info_clientId` ON `sync_info` (`clientId`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `tag_list` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `normalizeName` TEXT NOT NULL, `docUUID` TEXT NOT NULL, `displayName` TEXT NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;->getSqlCreateHashtag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;->getSqlCreateHashtagContent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v0, "migrate, createOrUpdateTables - end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v1
.end method

.method private getLegacyThumbnailFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$migrateBackgroundColor$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "d_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private migrateBackgroundColor(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 7
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v1, "migrate, migrateBackgroundColor - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "attach"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v1, "SELECT UUID, strokeUUID FROM sdoc WHERE LENGTH(strokeUUID) > 0"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "UUID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "strokeUUID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->getLegacyThumbnailFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lf4/a;->a:Lf4/a;

    invoke-virtual {v5, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    array-length v4, v4

    if-lez v4, :cond_1

    move v5, v2

    :cond_1
    const-string v4, "UPDATE OR ABORT sdoc SET backgroundColor = ? WHERE UUID = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v5, 0x1

    aput-object v3, v6, v5

    invoke-interface {p1, v4, v6}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v0, "migrate, migrateBackgroundColor - end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private migrateCategoryToFolder(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v1, "migrate, migrateCategoryToFolder - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO category_tree (UUID, displayName, createdAt, lastModifiedAt) VALUES (\'old:///\', \'Old notebooks\', 1464416139847, 1464416139847)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO category_tree_closure (ancestor, descendant, depth) VALUES (\'old:///\', \'old:///\', 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO category_tree (UUID, parentUUID, isDeleted, isDirty, displayName, createdAt, lastModifiedAt, serverTimestamp, recycle_bin_time_moved, displayNameColor, orderBy) SELECT UUID, \'old:///\', isDeleted, isDirty, displayName, lastModifiedAt, lastModifiedAt, serverTimestamp, lastModifiedAt, displayNameColor, orderBy FROM category"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT UUID FROM category"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "UUID"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INSERT OR REPLACE INTO category_tree_closure (ancestor, descendant, depth) SELECT ancestor, ?, depth + 1 FROM category_tree_closure WHERE descendant = \'old:///\' UNION ALL SELECT ?, ?, 0"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aput-object v2, v4, v1

    invoke-interface {p1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, "UPDATE OR ABORT category_tree SET displayName = \'Uncategorized\', displayNameColor = 4290624957 WHERE UUID = 1"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE OR ABORT category_tree SET displayName = \'Screen off memo\', displayNameColor = 4284572001 WHERE UUID = 2"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE OR ABORT sdoc SET absolutePath = \'old:///\' || (SELECT tree.displayName FROM category_tree AS tree WHERE tree.UUID=sdoc.categoryUUID) WHERE isDeleted = 2"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE OR ABORT sdoc SET categoryUUID = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' WHERE isDeleted = 2"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE OR ABORT sdoc SET isLock = 5 WHERE isLock IS NOT 0 AND isLock IS NOT -1 AND filePath LIKE \'%.sdocx\'"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' WHERE isDeleted IS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND categoryUUID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "old_recyclebin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND filePath LIKE \'%.sdoc\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' WHERE mdeSpaceId != \'\' AND categoryUUID != \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v0, "migrate, migrateCategoryToFolder - end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private migrateDocumentTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DROP TABLE IF EXISTS new_sdoc"

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v2, "migrate, migrateDocumentTable - start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS `new_sdoc` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `title` TEXT NOT NULL DEFAULT \'\', `content` BLOB NOT NULL, `displayContent` BLOB NOT NULL, `strippedContent` BLOB NOT NULL, `createdAt` INTEGER NOT NULL, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `vrUUID` TEXT DEFAULT \'\', `contentUUID` TEXT DEFAULT \'\', `firstContentType` INTEGER DEFAULT 0, `secondContentType` INTEGER DEFAULT 0, `strokeUUID` TEXT DEFAULT \'\', `strokeRatio` REAL DEFAULT 0.0, `categoryUUID` TEXT NOT NULL DEFAULT \'uncategorized:///\', `categoryserverTimestamp` INTEGER DEFAULT 1464416139847, `categoryisDirty` INTEGER NOT NULL DEFAULT 1, `filePath` TEXT NOT NULL, `noteName` TEXT NOT NULL DEFAULT \'\', `isFavorite` INTEGER NOT NULL DEFAULT 0, `isLock` INTEGER NOT NULL DEFAULT 0, `isSaving` INTEGER NOT NULL DEFAULT 0, `reminderTriggerTime` INTEGER NOT NULL DEFAULT 0, `reminderRequestCode` INTEGER NOT NULL DEFAULT 0, `recycle_bin_time_moved` INTEGER NOT NULL DEFAULT 0, `contentSecureVersion` INTEGER NOT NULL DEFAULT 0, `size` INTEGER NOT NULL DEFAULT 0, `displayTitle` BLOB, `saveType` INTEGER NOT NULL DEFAULT 0, `firstOpendAt` INTEGER NOT NULL DEFAULT 0, `secondOpenedAt` INTEGER NOT NULL DEFAULT 0, `lastOpenedAt` INTEGER NOT NULL DEFAULT 0, `importedAt` INTEGER NOT NULL DEFAULT 0, `recommendedAt` INTEGER NOT NULL DEFAULT 0, `mdeSpaceId` TEXT NOT NULL DEFAULT \'\', `mdeItemId` TEXT NOT NULL DEFAULT \'\', `mdeExtra` TEXT NOT NULL DEFAULT \'\', `mdeGroupId` TEXT NOT NULL DEFAULT \'\', `mdeOwnerId` TEXT NOT NULL DEFAULT \'\', `firstHandwritingHeight` INTEGER NOT NULL DEFAULT 0, `deleteRecommended` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "INSERT INTO new_sdoc SELECT * FROM sdoc"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS sdoc"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS `sdoc` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `UUID` TEXT NOT NULL, `isDeleted` INTEGER NOT NULL DEFAULT 0, `isDirty` INTEGER NOT NULL DEFAULT 1, `accountType` TEXT, `accountName` TEXT DEFAULT \'\', `title` TEXT NOT NULL DEFAULT \'\', `content` BLOB NOT NULL, `displayContent` BLOB NOT NULL, `strippedContent` BLOB NOT NULL, `createdAt` INTEGER NOT NULL, `lastModifiedAt` INTEGER NOT NULL, `serverTimestamp` INTEGER DEFAULT 1464416139847, `vrUUID` TEXT DEFAULT \'\', `contentUUID` TEXT DEFAULT \'\', `firstContentType` INTEGER DEFAULT 0, `secondContentType` INTEGER DEFAULT 0, `strokeUUID` TEXT DEFAULT \'\', `strokeRatio` REAL DEFAULT 0.0, `categoryUUID` TEXT NOT NULL DEFAULT \'uncategorized:///\', `categoryserverTimestamp` INTEGER DEFAULT 1464416139847, `categoryisDirty` INTEGER NOT NULL DEFAULT 1, `filePath` TEXT NOT NULL, `noteName` TEXT NOT NULL DEFAULT \'\', `isFavorite` INTEGER NOT NULL DEFAULT 0, `isLock` INTEGER NOT NULL DEFAULT 0, `isSaving` INTEGER NOT NULL DEFAULT 0, `reminderTriggerTime` INTEGER NOT NULL DEFAULT 0, `reminderRequestCode` INTEGER NOT NULL DEFAULT 0, `recycle_bin_time_moved` INTEGER NOT NULL DEFAULT 0, `contentSecureVersion` INTEGER NOT NULL DEFAULT 0, `size` INTEGER NOT NULL DEFAULT 0, `displayTitle` BLOB, `saveType` INTEGER NOT NULL DEFAULT 0, `firstOpendAt` INTEGER NOT NULL DEFAULT 0, `secondOpenedAt` INTEGER NOT NULL DEFAULT 0, `lastOpenedAt` INTEGER NOT NULL DEFAULT 0, `importedAt` INTEGER NOT NULL DEFAULT 0, `recommendedAt` INTEGER NOT NULL DEFAULT 0, `mdeSpaceId` TEXT NOT NULL DEFAULT \'\', `mdeItemId` TEXT NOT NULL DEFAULT \'\', `mdeExtra` TEXT NOT NULL DEFAULT \'\', `mdeGroupId` TEXT NOT NULL DEFAULT \'\', `mdeOwnerId` TEXT NOT NULL DEFAULT \'\', `firstHandwritingHeight` INTEGER NOT NULL DEFAULT 0, `deleteRecommended` INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "INSERT INTO sdoc SELECT * FROM new_sdoc"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateDocumentTable, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_sdoc_UUID` ON `sdoc` (`UUID`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `absolutePath` TEXT"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `backgroundColor` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `backgroundColorInverted` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `lastMappedAt` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `recommendedTitle` TEXT NOT NULL DEFAULT \'\'"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `lockAccountGuid` TEXT"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `msSyncAccountId` TEXT"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `msSyncDocumentUuid` TEXT"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sdoc ADD `msLastSyncTime` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v0, "migrate, migrateDocumentTable - end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "migrate, end"

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    const-string v2, "migrate, start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->migrateDocumentTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->createOrUpdateTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrate - force createAllTable, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->createAllTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->migrateCategoryToFolder(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->migrateBackgroundColor(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_3
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_41_To_42;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
