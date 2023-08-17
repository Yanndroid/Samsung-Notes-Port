.class public Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EntireRestoreDocTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    return-void
.end method

.method private renameBackupFiles()V
    .locals 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renameBackupFiles file. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "renameBackupFiles failed to rename file"

    invoke-static {v5, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public decryptAndUnzip()I
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "sdoc.zip"

    const-string/jumbo v2, "zipIn"

    const-string v3, "encryptedFile"

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decryptAndUnzip storage size before decrypt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mVersion:I

    and-int/lit8 v5, v5, 0x40

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v0, "decryptAndUnzip retry do nothing in decryptAndUnzip"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v7, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    const-string v8, "sdoc_rename.bk"

    invoke-static {v7, v8}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, -0x6

    if-nez v7, :cond_1

    const-string v0, "decryptAndUnzip no encryptedFile"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAndUnzip encryptedFile length "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x2800

    new-array v9, v7, [B

    const/4 v10, -0x1

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget v15, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSecurityLevel:I

    iget-object v7, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionKey:Ljava/lang/String;

    invoke-static {v15, v14, v7}, Lx1/d;->d(ILjava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v7, :cond_2

    :try_start_2
    const-string v0, "decryptAndUnzip is null"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    iget v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    return v8

    :catchall_0
    move-exception v0

    move-object v10, v11

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v8, v11

    goto/16 :goto_4

    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v11, "decryptAndUnzip start decrypt"

    invoke-static {v4, v11}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    const-wide/16 v16, 0x0

    :goto_0
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-eq v11, v10, :cond_4

    invoke-virtual {v8, v9, v6, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v10, v11

    add-long v16, v16, v10

    const/16 v10, 0x1388

    if-ne v4, v10, :cond_3

    const-wide/16 v10, 0x1

    const-wide/16 v18, 0x13

    mul-long v18, v18, v16

    div-long v18, v18, v12

    add-long v10, v18, v10

    long-to-int v4, v10

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    move v4, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const/4 v10, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v10, "decryptAndUnzip end decrypt."

    invoke-static {v4, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decryptAndUnzip storage size before unzip "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v10, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_5
    iget-boolean v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    const/16 v24, 0x15

    const/16 v25, 0x28

    move-object/from16 v18, v10

    move-object/from16 v19, v4

    move/from16 v23, v0

    invoke-static/range {v18 .. v25}, Lx1/f;->b(Ljava/io/File;Ljava/io/File;ZZZZII)Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->renameBackupFiles()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v11, v10

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v11, v8

    const/4 v10, 0x0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :catchall_5
    move-exception v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    :try_start_6
    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decryptAndUnzip exception "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ENOSPC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x4

    move v6, v0

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decryptAndUnzip buffer["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2800

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    :goto_5
    iget v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    :goto_6
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decryptAndUnzip finish decryptAndUnzip result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mResult:I

    return v6

    :catchall_6
    move-exception v0

    move-object v10, v11

    :goto_7
    move-object v11, v8

    :goto_8
    invoke-virtual {v1, v11}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v14}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    throw v0
.end method

.method public prepare()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->prepare()V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mVersion:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const-string v1, "prepare retry, do nothing in prepare"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    const-string v1, "sdoc.bk"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    const-string v2, "sdoc_rename.bk"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed to rename file sdoc.bk, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mDbRestorePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed to deleteFile mDbResotrePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed to deleteFile mSDocBnRPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->mSDocBnRPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "prepare failed to mkdirs mSDocBnRPath path"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
