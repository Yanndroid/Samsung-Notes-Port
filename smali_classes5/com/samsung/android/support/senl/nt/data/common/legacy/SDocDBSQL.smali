.class public Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CATEGORY_MARK_COLOR_RANDOM:I = -0x1

.field public static final CONTENT_SECURE_VERSION_1:I = 0x1

.field public static final LOCKED_SDOC_LIST:Ljava/lang/String; = "db_update_list_for_locked_sdoc"

.field public static final MIME_TYPE_HANDWRITING:Ljava/lang/String; = "content/handwriting"

.field public static final MIME_TYPE_TEXT:Ljava/lang/String; = "text/plain"

.field public static final SAVE_TYPE_NONE:I = 0x0

.field private static final SQL_CREATE_HASHTAG:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS hashtag (_id INTEGER PRIMARY KEY AUTOINCREMENT, UUID TEXT    NOT NULL UNIQUE, name TEXT    NOT NULL, extraInfo TEXT    NOT NULL DEFAULT \'\', lastModifiedAt INTEGER    NOT NULL, isDeleted INTEGER NOT NULL DEFAULT 0, isDirty INTEGER NOT NULL DEFAULT 1, serverTimestamp INTEGER DEFAULT 1464416139847  )"

.field private static final SQL_CREATE_HASHTAG_CONTENT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS hashtagContent (_id INTEGER PRIMARY KEY AUTOINCREMENT, hashtagUUID TEXT    NOT NULL, sdocUUID TEXT    NOT NULL, extraInfo TEXT    NOT NULL DEFAULT \'\', isDeleted INTEGER NOT NULL DEFAULT 0, isDirty INTEGER NOT NULL DEFAULT 1, serverTimestamp INTEGER DEFAULT 1464416139847, isSyncFailed INTEGER DEFAULT 0, lastModifiedAt INTEGER    NOT NULL  )"

.field private static final SQL_CREATE_MDE_VIEW:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS vsdoc   AS SELECT * FROM sdoc WHERE sdoc.mdeSpaceId == \'\'"

.field private static final SQL_CREATE_RETRY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS retry (_id INTEGER PRIMARY KEY AUTOINCREMENT, sdocUUID TEXT    NOT NULL, strokeFilePath TEXT    NOT NULL ,state INTEGER NOT NULL DEFAULT 0, recognitionCount INTEGER NOT NULL DEFAULT 0, lastModifiedAt INTEGER NOT NULL  )"

.field private static final SQL_DELETE_POPUP_MEMO:Ljava/lang/String; = "DELETE FROM category WHERE UUID = 3;"

.field private static final SQL_INSERT_POPUP_MEMO:Ljava/lang/String;

.field private static final SQL_INSERT_SCREEN_OFF_MEMO:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO category ( UUID,predefine,lastModifiedAt,displayName ) VALUES ( \'2\', 2, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \'\' );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;->SQL_INSERT_SCREEN_OFF_MEMO:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO category ( UUID,predefine,orderBy,lastModifiedAt,displayName ) VALUES ( \'3\', 3, 999998, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;->SQL_INSERT_POPUP_MEMO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSqlCreateHashtag()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS hashtag (_id INTEGER PRIMARY KEY AUTOINCREMENT, UUID TEXT    NOT NULL UNIQUE, name TEXT    NOT NULL, extraInfo TEXT    NOT NULL DEFAULT \'\', lastModifiedAt INTEGER    NOT NULL, isDeleted INTEGER NOT NULL DEFAULT 0, isDirty INTEGER NOT NULL DEFAULT 1, serverTimestamp INTEGER DEFAULT 1464416139847  )"

    return-object v0
.end method

.method public static getSqlCreateHashtagContent()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS hashtagContent (_id INTEGER PRIMARY KEY AUTOINCREMENT, hashtagUUID TEXT    NOT NULL, sdocUUID TEXT    NOT NULL, extraInfo TEXT    NOT NULL DEFAULT \'\', isDeleted INTEGER NOT NULL DEFAULT 0, isDirty INTEGER NOT NULL DEFAULT 1, serverTimestamp INTEGER DEFAULT 1464416139847, isSyncFailed INTEGER DEFAULT 0, lastModifiedAt INTEGER    NOT NULL  )"

    return-object v0
.end method

.method public static getSqlCreateMdeView()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE VIEW IF NOT EXISTS vsdoc   AS SELECT * FROM sdoc WHERE sdoc.mdeSpaceId == \'\'"

    return-object v0
.end method

.method public static getSqlCreateRetry()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS retry (_id INTEGER PRIMARY KEY AUTOINCREMENT, sdocUUID TEXT    NOT NULL, strokeFilePath TEXT    NOT NULL ,state INTEGER NOT NULL DEFAULT 0, recognitionCount INTEGER NOT NULL DEFAULT 0, lastModifiedAt INTEGER NOT NULL  )"

    return-object v0
.end method

.method public static getSqlDeletePopupMemo()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM category WHERE UUID = 3;"

    return-object v0
.end method

.method public static getSqlInsertPopupMemo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;->SQL_INSERT_POPUP_MEMO:Ljava/lang/String;

    return-object v0
.end method

.method public static getSqlInsertScreenOffMemo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SDocDBSQL;->SQL_INSERT_SCREEN_OFF_MEMO:Ljava/lang/String;

    return-object v0
.end method
