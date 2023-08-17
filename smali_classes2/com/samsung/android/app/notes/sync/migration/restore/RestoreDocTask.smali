.class public Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mDbRestorePath:Ljava/lang/String;

.field private final mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field public final mSDocBnRPath:Ljava/lang/String;

.field public final mSDocDataPath:Ljava/lang/String;

.field private final mWidgetIdPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreDocTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->v()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    goto :goto_1

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    const/16 p1, 0x80

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    const/16 p1, 0x40

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_3

    const/16 p1, 0x400

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_4

    const/16 p1, 0x800

    goto :goto_0

    :cond_4
    const/16 v0, 0x1000

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    :cond_5
    :goto_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->n()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocDataPath:Ljava/lang/String;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mDbRestorePath:Ljava/lang/String;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mWidgetIdPath:Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    return-void
.end method

.method private clearSDocTempFiles()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "clearSDocTempFiles"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mDbRestorePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSDocTempFiles failed to deleteFile Databases_Restore_PATH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSDocTempFiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile failed to mkdirs path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile exception failed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private copyTempFiles(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/h;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-le v1, v3, :cond_6

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyTempFiles "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld1/h;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyTempFiles ignore copy because this file is already included in the restore item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    if-nez v5, :cond_5

    :cond_4
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    invoke-virtual {v5}, Lc3/n;->o()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->copyFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private getBookMarkItems(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "getBookMarkItems"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "bookmark_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ld1/a$a;

    invoke-direct {v5}, Ld1/a$a;-><init>()V

    const-string v6, "bookmark_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ld1/a$a;->d(J)Ld1/a$a;

    move-result-object v5

    const-string v6, "bookmark_doc_uuid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld1/a$a;->b(Ljava/lang/String;)Ld1/a$a;

    move-result-object v5

    const-string v6, "bookmark_page_uuid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld1/a$a;->h(Ljava/lang/String;)Ld1/a$a;

    move-result-object v5

    const-string v6, "bookmark_index"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ld1/a$a;->e(I)Ld1/a$a;

    move-result-object v5

    const-string v6, "bookmark_favorite"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ld1/a$a;->c(I)Ld1/a$a;

    move-result-object v5

    const-string v6, "bookmark_is_deleted"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ld1/a$a;->f(I)Ld1/a$a;

    move-result-object v5

    const-string v6, "bookmark_is_dirty"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Ld1/a$a;->g(I)Ld1/a$a;

    move-result-object v4

    invoke-virtual {v4}, Ld1/a$a;->a()Ld1/a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v4, v3, 0x32

    if-nez v4, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBookMarkItems failed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw p1
.end method

.method private getHashTagContent(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v2, "getHashTagContent"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v6, "hashtag_content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    goto :goto_0

    :cond_0
    move-object v4, v2

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    const-string v4, "getHashTagContent size error"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return-object v2

    :cond_1
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    if-ge v5, v6, :cond_3

    :try_start_3
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "tag_uuid"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "tag_extra_info"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "deleted"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "timestamp"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v13, "extra_timestamp"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v0, Ld1/h;

    const-string v15, "hashtagContent.list"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v3

    move-object/from16 p1, v4

    const-wide/16 v3, 0x0

    :try_start_4
    invoke-direct {v0, v2, v15, v3, v4}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Ld1/h;->G(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ld1/h;->E(I)V

    invoke-virtual {v0, v11, v12}, Ld1/h;->H(J)V

    invoke-virtual {v0, v13, v14}, Ld1/h;->I(J)V

    invoke-virtual {v0, v9}, Ld1/h;->F(Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v0, v5, 0x32

    if-nez v0, :cond_2

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, p1

    move-object/from16 v3, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_2
    move-object/from16 v2, v16

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_3
    move-object/from16 v2, v16

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v2

    move-object v2, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v7, v2

    :goto_4
    :try_start_5
    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHashTagContent failed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_5
    return-object v7

    :goto_6
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getHashTagInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/j;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v2, "getHashTagInfo"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v12, p1

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v6, "hashtag_info"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object v13, v4

    move v14, v6

    goto :goto_0

    :cond_0
    move-object v13, v2

    move v14, v5

    :goto_0
    const/4 v4, 0x1

    if-ge v14, v4, :cond_1

    const-string v4, "getHashTagInfo size error"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return-object v2

    :cond_1
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v5

    :goto_1
    if-ge v0, v14, :cond_3

    :try_start_3
    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "tag_uuid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v4, "deleted"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v4, "extra_info"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ld1/j;

    move-object v4, v2

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v11}, Ld1/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v2, v0, 0x32

    if-nez v2, :cond_2

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v15, v2

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v2

    :goto_3
    :try_start_4
    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHashTagInfo failed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_4
    return-object v15

    :goto_5
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getHashTagItem(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lv1/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "getHashTagItem"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, "hashtag_info"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object p1, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    const-string p1, "getHashTagItem size error"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-ge v3, v4, :cond_3

    :try_start_3
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "tag_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "doc_uuid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "display_name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nomalize_name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v7, v1}, Lv1/b;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lv1/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v1, v3, 0x32

    if-nez v1, :cond_2

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_3
    :try_start_4
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHashTagItem failed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_4
    return-object v0

    :goto_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw p1
.end method

.method private isNotSupportedLockState(ILjava/lang/String;)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    const-string v0, ".sdoc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedOtherDocType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeImportItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/io/File;)Ld1/d;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocDataPath:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->a()Lx/a;

    move-result-object v5

    invoke-interface {v5}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {v6, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_b

    sget-object v9, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "makeImportItem exist note"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v10

    const-string v11, "makeImportItem exception get doc data "

    const-string v12, "makeImportItem restoreFile is not exist, recovery"

    const/4 v13, 0x0

    if-eqz v10, :cond_3

    const-string v10, "makeImportItem not existing note"

    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v14

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v10

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide v14

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getCreatedTime(Ljava/lang/String;Z)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    cmp-long v4, p7, v14

    if-nez v4, :cond_2

    cmp-long v4, p9, v10

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "makeImportItem same memo is in bin, recovery"

    invoke-static {v9, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    move v6, v8

    move v9, v6

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, "makeImportItem different doc in bin, make new"

    invoke-static {v9, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    move v9, v6

    move v4, v8

    move v8, v9

    :goto_2
    move/from16 v16, v6

    move v6, v4

    move v4, v8

    move/from16 v8, v16

    goto/16 :goto_7

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_3
    const-string v10, "makeImportItem existing note"

    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v14

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v10

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide v14

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getCreatedTime(Ljava/lang/String;Z)J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    cmp-long v4, p9, v10

    if-eqz v4, :cond_5

    const-string v4, "makeImportItem different memo in list"

    invoke-static {v9, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    :goto_4
    move v6, v4

    goto :goto_5

    :cond_5
    cmp-long v4, p7, v14

    if-lez v4, :cond_6

    const-string v4, "makeImportItem previous memo in list"

    invoke-static {v9, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto :goto_4

    :goto_5
    move v9, v7

    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v16

    goto/16 :goto_7

    :cond_6
    if-gez v4, :cond_9

    const-string v0, "makeImportItem changed memo in list"

    invoke-static {v9, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "makeImportItem failed to mkdirs mSDocTempPath path"

    invoke-static {v9, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p11 .. p11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p11

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeImportItem failed copy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    return-object v13

    :cond_9
    const-string v0, "makeImportItem same memo in list, skip"

    invoke-static {v9, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mWidgetIdPath:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->makeNewWidgetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :catch_2
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_a
    invoke-static {v9, v12}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    move v9, v6

    move v4, v8

    goto :goto_7

    :cond_b
    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeImportItem not exist note "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    move v9, v4

    move v6, v8

    :goto_7
    new-instance v10, Ld1/d;

    const/16 v11, 0x1e

    invoke-direct {v10, v11}, Ld1/d;-><init>(I)V

    if-eqz v8, :cond_c

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ld1/d;->h0(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mWidgetIdPath:Ljava/lang/String;

    invoke-direct {v1, v12, v11, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->makeNewWidgetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v10, v2}, Ld1/d;->h0(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mWidgetIdPath:Ljava/lang/String;

    invoke-direct {v1, v11, v2, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->makeNewWidgetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v10, v0}, Ld1/d;->j0(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ld1/d;->R(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ld1/d;->O(Z)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ld1/d;->Q(Z)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ld1/d;->N(I)V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ld1/d;->J(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ld1/d;->i0(J)V

    invoke-virtual {v10, v11, v12}, Ld1/d;->I(J)V

    invoke-virtual {v10, v4}, Ld1/d;->e0(Z)V

    invoke-virtual {v10, v6}, Ld1/d;->f0(Z)V

    invoke-virtual {v10, v8}, Ld1/d;->K(Z)V

    invoke-virtual {v10, v9}, Ld1/d;->X(Z)V

    invoke-virtual {v10, v3}, Ld1/d;->T(I)V

    return-object v10
.end method

.method private makeNewWidgetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewWidgetInfo old "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "uuid"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p2, "file_info"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".widget"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "makeNewWidgetInfo failed to delete file (.widget)"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p1

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_5

    :catch_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    :goto_0
    move-object v1, p1

    move-object p1, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_1
    :try_start_2
    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "makeNewWidgetInfo exception failed to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    :goto_3
    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "makeNewWidgetInfo failed to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_1
    :goto_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return-void

    :goto_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw p1
.end method

.method private restoreBookMarkItems(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/a;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "restoreBookMarkItems"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/a;

    invoke-virtual {v4}, Ld1/a;->g()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ld1/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    invoke-direct {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;-><init>()V

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ld1/a;->e()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setId(J)V

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setDocumentUuid(Ljava/lang/String;)V

    invoke-virtual {v4}, Ld1/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setPageUuid(Ljava/lang/String;)V

    invoke-virtual {v4}, Ld1/a;->f()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setIndex(I)V

    invoke-virtual {v4}, Ld1/a;->d()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setFavorite(I)V

    invoke-virtual {v4}, Ld1/a;->g()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setIsDeleted(I)V

    invoke-virtual {v4}, Ld1/a;->h()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setIsDirty(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->getDocumentUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v4, v3, 0x32

    if-nez v4, :cond_3

    const/16 v4, 0x32

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesDocumentPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->deleteByDocumentUuid(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->insert(Ljava/util/List;)V

    return-void
.end method

.method private restoreHashTag(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv1/a;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv1/a;

    invoke-virtual {v4}, Lv1/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lv1/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    move-object v6, v7

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    move v9, v8

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->getDocUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v7, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreHashTag ignore hash tag, doc uuid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->getId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4}, Lv1/a;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v9, v2

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v8, :cond_5

    sget-object v7, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreHashTag add hash tag, doc uuid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-direct {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;-><init>()V

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Lv1/a;->c()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setId(Ljava/lang/Long;)V

    :cond_4
    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lv1/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setNormalizeName(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V

    :cond_5
    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v3, v3, 0x32

    if-nez v3, :cond_6

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    :cond_6
    move v3, v4

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private restoreHashTagContentOld(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 16
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/h;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreHashTagContentOld size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->k()Lb0/c;

    move-result-object v13

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, p2

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v2}, Ld1/h;->m()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreHashTagContentOld sDocUuid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", hashtagUuid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ld1/h;->q()I

    move-result v6

    invoke-virtual {v2}, Ld1/h;->n()J

    move-result-wide v7

    invoke-virtual {v2}, Ld1/h;->o()J

    move-result-wide v9

    invoke-virtual {v2}, Ld1/h;->l()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v12

    move-object v2, v13

    move-object v3, v1

    invoke-interface/range {v2 .. v12}, Lb0/c;->setNoteTagContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;I)I

    rem-int/lit8 v2, v14, 0x32

    if-nez v2, :cond_2

    const/16 v2, 0x2e

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    goto :goto_2

    :cond_2
    move-object/from16 v3, p0

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v3, p0

    return-void
.end method

.method private restoreHashTagOld(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/j;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreHashTagOld size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v0, :cond_6

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/j;

    invoke-virtual {v2}, Ld1/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/j;

    invoke-virtual {v2}, Ld1/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/j;

    invoke-virtual {v3}, Ld1/j;->g()Z

    move-result v3

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/j;

    invoke-virtual {v5}, Ld1/j;->d()J

    move-result-wide v5

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld1/j;

    invoke-virtual {v7}, Ld1/j;->c()Ljava/lang/String;

    move-result-object v9

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->k()Lb0/c;

    move-result-object v3

    const/4 v7, 0x1

    invoke-interface {v3, v1, v2, v7}, Lb0/c;->getTagUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v4, "restoreHashTagOld recovery"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    const/4 v8, 0x0

    move-object v2, v3

    move-object v3, v1

    move-object v4, v7

    move v7, v8

    invoke-interface/range {v2 .. v7}, Lb0/c;->recoveryTag(Landroid/content/Context;Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v7, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreHashTagOld add hashtagItemInfo "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1, v4, v2, v10}, Lb0/c;->addTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v7

    move-object v2, v3

    move-object v3, v1

    invoke-interface/range {v2 .. v9}, Lb0/c;->setTagModifiedAndServerTimestampAndExtraInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V

    :goto_2
    rem-int/lit8 v2, v11, 0x32

    if-nez v2, :cond_5

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreHashTagOld ignore hashtagName isDeleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private restoreSDocInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "recycle_bin_time_moved"

    const-string v2, "msLastSyncTime"

    const-string v3, "msSyncDocumentId"

    const-string v4, "msSyncAccountId"

    const-string v5, "restorePath"

    const-string v6, "deleted"

    sget-object v7, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v8, "restoreSDocInfo"

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v9}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v12, "file_info"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    goto :goto_0

    :cond_0
    move-object v10, v8

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v12, v13, :cond_1

    const-string v0, "restoreSDocInfo size Error"

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return-object v8

    :cond_1
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_9

    :try_start_3
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "uuid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v14, "filename"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v14, "timestamp"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v18, v14

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    new-instance v14, Ld1/h;

    move-object v15, v14

    invoke-direct/range {v15 .. v20}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    const-string v15, "savedtime"

    move/from16 v16, v12

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ld1/h;->D(J)V

    const-string v11, "favorite"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v14, v11}, Ld1/h;->t(Z)V

    const-string v11, "category_uuid"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ld1/h;->s(Ljava/lang/String;)V

    const-string v11, "extra_timestamp"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ld1/h;->y(J)V

    const-string v11, "lockstate"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v14, v11}, Ld1/h;->A(I)V

    const-string v11, "createTime"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ld1/h;->z(J)V

    const-string v11, "filepath"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ld1/h;->u(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ld1/h;->C(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ld1/h;->w(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ld1/h;->x(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ld1/h;->v(J)V

    :cond_6
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ld1/h;->B(J)V

    :cond_7
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v11, v8, 0x32

    if-nez v11, :cond_8

    const/16 v11, 0x29

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v16

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v8

    :goto_3
    move-object v8, v9

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v8

    :goto_4
    :try_start_4
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSDocInfo failed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_5
    return-object v7

    :goto_6
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method private restoreServerPasswordTimeInfo(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v0, "restoreServerPasswordTimeInfo file not exist"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "restoreServerPasswordTimeInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "file_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "server_password_time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lx2/b;->h(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_7

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreServerPasswordTimeInfo exception failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    :goto_4
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreServerPasswordTimeInfo failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_6
    return-void

    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->clearSDocTempFiles()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->partialClear()V

    return-void
.end method

.method public copyFileWidget(Ljava/io/File;)V
    .locals 5

    const-string v0, "copyFileWidget exception failed to delete waste files"

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string v2, "copyFileWidget"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mWidgetIdPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "copyFileWidget to mkdirs widgetIdFolder path"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->copyFileWidget(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".widget"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mWidgetIdPath:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileWidget restoreFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFileWidget exception while copying widgets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public decryptAndUnzip()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->T(Z)V

    return-void
.end method

.method public partialClear()V
    .locals 2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->T(Z)V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mResult:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/n;->T(Z)V

    return-void
.end method

.method public update()I
    .locals 27

    move-object/from16 v13, p0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x29

    invoke-virtual {v13, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, v13, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    const-string v4, "serverPasswordTime.list"

    invoke-static {v3, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->restoreServerPasswordTimeInfo(Ljava/io/File;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, v13, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->copyFileWidget(Ljava/io/File;)V

    invoke-virtual {v13, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    :try_start_0
    invoke-virtual {v13, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    iget-object v2, v13, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-static {v2}, Lx1/e;->g(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    iget-object v1, v13, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    const-string v2, "sdoc.list"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->restoreSDocInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const/16 v1, 0x2b

    invoke-virtual {v13, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v10, :cond_11

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update syncItemInfo size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_e

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    iget-object v0, v13, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v0, v5, 0x14

    if-nez v0, :cond_0

    mul-int/lit8 v0, v5, 0x2

    div-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x2c

    invoke-virtual {v13, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update skip1 backupFile is not exist"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-wide v2, v6

    move-object v1, v8

    move/from16 v17, v9

    move-object v14, v10

    move-object v4, v13

    move v13, v5

    :goto_3
    move-object v5, v11

    goto/16 :goto_c

    :cond_1
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->h()I

    move-result v14

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v14, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->isNotSupportedLockState(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update skip2 not supported lockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".sdocx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getFormatVersion(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x7f2

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "update skip3 unsupported previous format. version "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getMinFormatVersion(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getSdkFormatVersion()I

    move-result v1

    if-le v0, v1, :cond_4

    sget-object v12, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v17, v6

    :try_start_2
    const-string/jumbo v6, "update skip4 unsupported forward format version min "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sdk : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    move-object v1, v8

    move-object v14, v10

    move-object v4, v13

    move-wide/from16 v2, v17

    move v13, v5

    move/from16 v17, v9

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    move-wide/from16 v17, v6

    goto :goto_6

    :catch_1
    move-exception v0

    move-wide/from16 v17, v6

    :goto_5
    :try_start_3
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update failed to get format version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/4 v0, 0x5

    if-ne v14, v0, :cond_7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update skip5 locked sdocx file in Secure Folder Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_4

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getHashedAccountGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update failed to get owner id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :cond_6
    move-wide/from16 v17, v6

    :cond_7
    const/4 v0, 0x0

    :goto_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/h;

    invoke-virtual {v1}, Ld1/h;->j()J

    move-result-wide v6

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/h;

    invoke-virtual {v1}, Ld1/h;->g()J

    move-result-wide v19

    move-wide/from16 v21, v19

    const/4 v12, 0x0

    move-wide/from16 v19, v6

    goto :goto_8

    :cond_8
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide v19

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getCreatedTime(Ljava/lang/String;Z)J

    move-result-wide v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-wide/from16 v21, v6

    :goto_8
    :try_start_7
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/h;

    invoke-virtual {v1}, Ld1/h;->r()Z

    move-result v6

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/h;

    invoke-virtual {v1}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/h;

    invoke-virtual {v1}, Ld1/h;->q()I

    move-result v15

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "update need to save memo"

    invoke-static {v1, v12}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v3

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v23, v4

    move-object v4, v7

    move v7, v5

    move v5, v6

    move-wide/from16 v24, v17

    move v6, v15

    move v13, v7

    move v7, v14

    move-object v14, v8

    move/from16 v17, v9

    move-wide/from16 v8, v19

    move-object/from16 v26, v11

    move-object/from16 v18, v14

    move-object v14, v10

    move-wide/from16 v10, v21

    :try_start_8
    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->makeImportItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/io/File;)Ld1/d;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    invoke-virtual {v2}, Ld1/h;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld1/d;->g0(J)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    invoke-virtual {v2}, Ld1/h;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld1/d;->M(J)V

    invoke-virtual {v1, v0}, Ld1/d;->Y(Ljava/lang/String;)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld1/d;->c0(Ljava/lang/String;)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld1/d;->V(Ljava/lang/String;)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld1/d;->W(Ljava/lang/String;)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-virtual {v0}, Ld1/h;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld1/d;->U(J)V

    const/4 v0, 0x2

    if-ne v15, v0, :cond_9

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Ld1/d;->Z(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_9

    :cond_9
    move-wide/from16 v2, v24

    :goto_9
    move-object/from16 v4, p0

    :try_start_9
    iget-object v0, v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ld1/d;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v23

    move-object/from16 v5, v26

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_a
    move-object/from16 v6, v23

    move-object/from16 v5, v26

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdoc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_b
    :goto_a
    move-object/from16 v1, v18

    goto :goto_c

    :cond_c
    move-object/from16 v1, v18

    goto :goto_b

    :cond_d
    move-object/from16 v4, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v24

    :goto_b
    move-object/from16 v5, v26

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v1, v8

    move-object v14, v10

    move-object v4, v13

    move-wide/from16 v2, v17

    move v13, v5

    move/from16 v17, v9

    move-object v5, v11

    sget-object v6, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update exception get doc data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v0, v13, 0x1

    move-object v8, v1

    move-wide v6, v2

    move-object v13, v4

    move-object v11, v5

    move-object v10, v14

    move/from16 v9, v17

    move v5, v0

    goto/16 :goto_0

    :cond_e
    move-object v1, v8

    move-object v14, v10

    move-object v5, v11

    move-object v4, v13

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update restore old tag list"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    const-string v3, "hashtag.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->getHashTagInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->restoreHashTagOld(Ljava/util/List;)V

    iget-object v2, v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    const-string v3, "hashtagContent.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->getHashTagContent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->restoreHashTagContentOld(Ljava/util/List;Ljava/util/HashMap;)V

    const-string/jumbo v1, "update restore new tag list"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    const-string v2, "hashtagNote4.list"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->getHashTagItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct {v4, v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->restoreHashTag(Ljava/util/List;Ljava/util/HashMap;)V

    :cond_f
    iget-object v1, v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    const-string v2, "bookMark.list"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->getBookMarkItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {v4, v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->restoreBookMarkItems(Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_d

    :cond_10
    const-string/jumbo v1, "update restore bookmark no items"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    const-string v1, "preferenceUpdated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/migration/c;->D(Ljava/lang/String;Z)V

    invoke-direct {v4, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->copyTempFiles(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->clearSDocTempFiles()V

    const/4 v2, 0x0

    goto :goto_e

    :cond_11
    move-object v14, v10

    move-object v4, v13

    const-string/jumbo v1, "update syncItemInfo == null or syncItemInfo.size == 0"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->copyTempFiles(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->clearSDocTempFiles()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :goto_e
    move v14, v2

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v4, v13

    :goto_f
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update failed updateDB exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->clearSDocTempFiles()V

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    move v14, v1

    :goto_10
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v14, v4, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mResult:I

    return v14
.end method
