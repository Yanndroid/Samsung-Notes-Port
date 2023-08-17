.class public Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SDOC_LOCKER_32BIT_KEY_INDEX:I = 0x0

.field public static final SDOC_LOCKER_64BIT_KEY_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SDocEncryptionHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->lambda$encryptContents$0(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static checkValidEncryptedContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->convertEncryptContentTo32bit(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidEncryptedContent, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkValidEncryptedContent - end, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private convertEncryptContentTo32bit(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v5, v0, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptContents(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v1, 0x0

    aget-object v5, v0, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptContents(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertEncryptContentTo32bit, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertEncryptContentTo32bit - end, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private encrypt(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 4

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->getContentSecureVersion(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypt, contentSecureVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  currentVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", checkInvalidEncryptedContent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, p3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    if-nez p3, :cond_0

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p5, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->getNoteFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getEncryptedCode(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->isEncryptedBy64BitKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {p5, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->checkValidEncryptedContent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptSDocTable(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptThumbnails(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "encrypt, done"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private encryptContents(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptContents, sDocUUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", checkInvalidEncryptedContent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ll4/a;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Ll4/a;-><init>(Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private encryptSDocTable(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10

    xor-int/lit8 v5, p3, 0x1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptSDocTable putString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UUID"

    const-string v2, "content"

    const-string v3, "displayContent"

    const-string v4, "filePath"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UUID IS \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v7, "sdoc"

    invoke-static {v7}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->builder(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->columns([Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    const/4 v6, 0x0

    invoke-virtual {v7, p2, v6}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->selection(Ljava/lang/String;[Ljava/lang/Object;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    invoke-virtual {v7}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->create()Landroidx/sqlite/db/SupportSQLiteQuery;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptSDocTable, encrypt text contents, uuid: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encryptSDocTable, encrypt CONTENT, length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v0, v1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->encrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->byteToString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x2

    :try_start_1
    invoke-static {v0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v8, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v8, v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v0, v1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v0, v1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v0, v1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateContentContents(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateContentContents(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptSDocTable, encrypt DISPLAY_CONTENT, length: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v1, v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->encrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v1, v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateDisplayContents(Ljava/lang/String;[B)I

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    move-object v1, v6

    move-object v2, v4

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptTextSearchData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v7}, Landroid/content/ContentValues;->size()I

    move-result p4

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptSDocTable, valueSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p4, :cond_8

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    :goto_4
    const-string p4, "contentSecureVersion"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object p1

    invoke-virtual {p1, v6, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->updateContentSecureVersion(Ljava/lang/String;I)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "encryptSDocTable, encrypt text contents. done, ret: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_9

    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw p1
.end method

.method public static encryptTextSearchData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->isLock(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v5, v0, v1

    xor-int/lit8 v6, v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptTextSearchData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static encryptTextSearchData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->getStrippedContent(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptTextSearchData, encrypt STRIPPED_CONTENT, length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance p3, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->encrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->byteToString([B)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, p3

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p3, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;-><init>([BLjava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;)[B

    move-result-object p0

    :goto_1
    if-eqz p5, :cond_3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->byteToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->updateStrippedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->encodeBase64([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->updateStrippedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encryptTextSearchData, e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private encryptThumbnails(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const-string v0, "contentSecureVersion"

    const-string v1, "UUID"

    const-string v2, "_data"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdocUUID IS \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "content"

    invoke-static {v2}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->builder(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->columns([Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->selection(Ljava/lang/String;[Ljava/lang/Object;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;

    invoke-virtual {v2}, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->create()Landroidx/sqlite/db/SupportSQLiteQuery;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    const/16 v0, 0xa

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encryptThumbnails, uuid: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", secureVersion: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, p3, :cond_1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptThumbnails, thumbnailPathMap size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "encryptThumbnails, path is empty.\n"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v1, "encryptThumbnails, file is not exist.\n"

    goto :goto_1

    :cond_5
    const-string v4, "encryptThumbnails, size: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", path: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_1
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ".aes"

    invoke-direct {v3, v4, v1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->encrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;)Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;->decrypt(Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;)Z

    move-result v1

    :goto_2
    const-string v3, "encryptThumbnails, result: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v1

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->updateContentSecureVersion(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptThumbnails, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p2
.end method

.method private static getContentSecureVersion(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getContentSecureVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isEncryptedBy64BitKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEncryptedBy64BitKey : usedKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "isEncryptedBy64BitKey : usedKey is null"

    :goto_0
    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/SDocLocker;->is64bitCodeAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "isEncryptedBy64BitKey, 64bit is not available : false"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEncryptedBy64BitKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", usedKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static isLock(I)Z
    .locals 2
    .param p0    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    const/4 v1, -0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isLock(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getLockType(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->isLock(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$encryptContents$0(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encrypt(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "encryptContents, encryptResult: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encryptContents(Ljava/lang/String;I)V
    .locals 7
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->isLock(I)Z

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptContents(Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public getNoteFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
