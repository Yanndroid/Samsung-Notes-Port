.class public Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreTMemoTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "clear."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->e0(Z)V

    return-void
.end method

.method public decryptAndUnzip()I
    .locals 12

    const-string v0, "encryptedFile"

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    const-string v2, "Start decryptAndUnzip."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMemo_rename.exml"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMemo.xml"

    invoke-static {v3, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v8, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSecurityLevel:I

    iget-object v9, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionKey:Ljava/lang/String;

    invoke-static {v8, v7, v9}, Lx1/d;->d(ILjava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_0

    :try_start_2
    const-string v3, "InputStream is null."

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return v4

    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v5, 0x2800

    :try_start_4
    new-array v9, v5, [B

    :goto_0
    invoke-virtual {v8, v9, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    invoke-virtual {v1, v9, v6, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    new-instance v5, Lz/h;

    invoke-direct {v5}, Lz/h;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v9

    invoke-virtual {v9}, Lx/e;->a()Lx/a;

    move-result-object v9

    invoke-interface {v9}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5, v9, v3}, Lz/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TMemo item count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    new-instance v9, Ld1/d;

    const/16 v10, 0x20

    invoke-direct {v9, v10}, Ld1/d;-><init>(I)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ld1/d;->j0(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ld1/d;->O(Z)V

    invoke-virtual {v9, v5}, Ld1/d;->P(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    move v4, v6

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v5, v1

    move-object v1, v3

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v5, v1

    move-object v1, v3

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v5

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v8, v5

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v7, v5

    move-object v8, v7

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v7, v5

    move-object v8, v7

    :goto_2
    :try_start_5
    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception encryptedTMemo "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_3
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish decryptAndUnzip. result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catchall_3
    move-exception v1

    :goto_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v1
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->e0(Z)V

    return-void
.end method

.method public prepare()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "prepare."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/n;->e0(Z)V

    return-void
.end method

.method public update()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
