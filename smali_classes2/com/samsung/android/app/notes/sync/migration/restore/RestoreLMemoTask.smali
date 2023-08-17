.class public Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEtcPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreLMemoTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->mEtcPath:Ljava/lang/String;

    return-void
.end method

.method private restoreCategory()V
    .locals 13

    const-string v0, "parentUuid"

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->mEtcPath:Ljava/lang/String;

    const-string v2, "memo.json"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreCategory. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    const-string v7, "FolderList"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v5

    move-object v1, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    const-string v0, "Size Error."

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_1
    :goto_1
    if-ge v5, v7, :cond_3

    :try_start_3
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v8, "uuid"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "title"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object v10, v2

    :cond_2
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restore category uuid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-direct {v2, v8, v10, v9, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->insert(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restoreCategory() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->N(Z)V

    return-void
.end method

.method public decryptAndUnzip()I
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "encryptedFile"

    const-string v3, "decryptedFile"

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    const-string v4, "Start decryptAndUnzip."

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v14, v11

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v14, v11

    goto/16 :goto_8

    :cond_0
    :try_start_2
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v8, "memo_rename.bk"

    invoke-static {v0, v8}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->mEtcPath:Ljava/lang/String;

    const-string v9, "sdoc.zip"

    invoke-static {v8, v9}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    iget v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSecurityLevel:I

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionKey:Ljava/lang/String;

    invoke-static {v0, v9, v11}, Lx1/d;->d(ILjava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v11, :cond_1

    const/4 v0, -0x6

    :try_start_5
    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return v0

    :catchall_1
    move-exception v0

    move-object v14, v6

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v14, v6

    goto/16 :goto_8

    :cond_1
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v0, 0x2800

    :try_start_7
    new-array v15, v0, [B

    move v6, v7

    :goto_1
    invoke-virtual {v11, v15, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v5, :cond_3

    invoke-virtual {v14, v15, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    const/16 v4, 0x1388

    if-ne v6, v4, :cond_2

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    div-long v18, v18, v12

    add-long v5, v18, v16

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    move v6, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->mEtcPath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    const-string v8, "Start unzip."

    invoke-static {v6, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    iget-boolean v8, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    const/16 v22, 0x1a

    const/16 v23, 0x32

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move/from16 v21, v8

    invoke-static/range {v16 .. v23}, Lx1/f;->b(Ljava/io/File;Ljava/io/File;ZZZZII)Ljava/util/ArrayList;

    const-string v0, "End unzip."

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    move v5, v7

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v6, v5

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v6, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_8

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    goto :goto_4

    :catch_4
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    :catchall_5
    move-exception v0

    const/4 v6, 0x0

    goto :goto_3

    :catch_5
    move-exception v0

    const/4 v6, 0x0

    goto :goto_6

    :catchall_6
    move-exception v0

    const/4 v6, 0x0

    goto :goto_2

    :catch_6
    move-exception v0

    const/4 v6, 0x0

    goto :goto_5

    :catchall_7
    move-exception v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    :goto_4
    const/4 v14, 0x0

    goto :goto_b

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_5
    const/4 v10, 0x0

    :goto_6
    const/4 v11, 0x0

    :goto_7
    const/4 v14, 0x0

    :goto_8
    :try_start_9
    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decryptAndUnzip Exception. "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ENOSPC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, -0x4

    const/4 v4, 0x2

    goto :goto_9

    :cond_4
    const/4 v4, 0x2

    const/4 v5, -0x1

    :goto_9
    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_a
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish decryptAndUnzip. result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catchall_8
    move-exception v0

    :goto_b
    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->N(Z)V

    return-void
.end method

.method public prepare()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "prepare."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/n;->N(Z)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->mEtcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deleteFile mEtcPath path. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->mEtcPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "Failed to mkdirs mEtcPath path."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update()I
    .locals 5

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/LMemoConverter;->getMemoCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->restoreCategory()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ld1/d;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ld1/d;-><init>(I)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "LMemo count 0."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    return v1
.end method
