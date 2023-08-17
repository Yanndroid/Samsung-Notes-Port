.class public Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;
.super Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x2800

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EntireBackupTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lp1/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;-><init>(Lp1/a;)V

    return-void
.end method

.method private backupDocData()I
    .locals 5

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupDocData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v4}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp1/a;->E(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNeedToStop:Z

    const/4 v2, -0x5

    if-eqz v1, :cond_1

    const-string v1, "backupDocData needToStop 1"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipDocDataFiles()I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNeedToStop:Z

    if-eqz v1, :cond_3

    const-string v1, "backupDocData needToStop 2"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->encryptZipFile()I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNeedToStop:Z

    if-eqz v3, :cond_6

    const-string v1, "backupDocData needToStop 3"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupDocData exception case "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ENOSPC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x4

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    move v1, v0

    :cond_6
    return v1
.end method

.method private closeCloseable(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCloseable exception while closing stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private deleteTempBackupFiles()V
    .locals 8

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "deleteTempBackupFiles start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdoc.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "deleteTempBackupFiles failed to delete SDOC_LIST"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "category.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "deleteTempBackupFiles failed to delete CATEGORY_LIST"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "categoryOder.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "deleteTempBackupFiles failed to delete CATEGORY_ORDER_LIST"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preferences.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "deleteTempBackupFiles failed to delete PREFERENCE_LIST"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTempBackupFiles zipFiles Failed to deleteFile widgetIdFolder path "

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

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->A()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTempBackupFiles zipFiles Failed to deleteFile Databases_Restore_PATH path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_2
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteTempBackupFiles failed to deleteFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private encryptZipFile()I
    .locals 15

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "encryptZipFile start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdoc.zip"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "encryptZipFile Zip file is not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v8, 0x2800

    new-array v8, v8, [B

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v11}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sdoc.bk"

    invoke-static {v11, v12}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v11, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v11}, Lp1/a;->u()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v12}, Lp1/a;->v()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lx1/d;->e(ILjava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    move v11, v3

    :goto_0
    invoke-virtual {v9, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    if-eq v12, v0, :cond_2

    invoke-virtual {v2, v8, v3, v12}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v12, v12

    add-long/2addr v6, v12

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_1

    const-wide/16 v11, 0x3d

    const-wide/16 v13, 0x27

    mul-long/2addr v13, v6

    div-long/2addr v13, v4

    add-long/2addr v13, v11

    long-to-int v11, v13

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v12

    invoke-virtual {v12, v11}, Lc3/n;->E(I)V

    move v11, v3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lc3/n;->E(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-direct {p0, v10}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    move v0, v3

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move-object v10, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v9, v2

    move-object v10, v9

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v9, v2

    move-object v10, v9

    :goto_1
    :try_start_3
    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptZipFile exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-direct {p0, v10}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string v2, "encryptZipFile failed to delete sdoc.zip"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptZipFile failed to deleteFile BnR path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptZipFile finish encryptZipFile result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_2
    move-exception v0

    :goto_4
    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-direct {p0, v10}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getProgressTimerTask(I)Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask$a;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;I)V

    return-object v0
.end method

.method private sendResponseEntireBackup(I)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->w()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lc3/n;->H(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1, v1}, Lc3/n;->H(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    if-ne p1, v0, :cond_2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->w()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v1, v3}, Lc3/n;->H(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->x()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v3}, Lp1/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1, v0}, Lc3/n;->H(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private transferBackUpData(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "transferBackUpData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->s()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lx1/h;->l(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private zipContentData(Ljava/util/zip/ZipOutputStream;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "zipContentData start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const/16 v1, 0x38

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->getProgressTimerTask(I)Ljava/util/TimerTask;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x186a0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->getAllDataList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "zipContentData contentFilePath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v7}, Lp1/a;->y()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v5, p1, v4}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipFile(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zipContentData _DATA no Data or void data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x4

    div-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc3/n;->E(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lc3/n;->E(I)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "zipContentData finish"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zipDatabases(Ljava/util/zip/ZipOutputStream;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "zipDatabases start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zipDatabases failed to mkdirs targetFolder path"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v3}, Lp1/a;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v3}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x33

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipFolder(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;I)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    const/16 v1, 0x37

    invoke-virtual {p1, v1}, Lc3/n;->E(I)V

    const-string/jumbo p1, "zipDatabases finish"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zipDocDataFiles()I
    .locals 6

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "zipDocDataFiles start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getAllPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    :try_start_0
    new-instance v0, Lq1/a;

    invoke-direct {v0}, Lq1/a;-><init>()V

    new-instance v1, Lq1/b$a;

    invoke-direct {v1}, Lq1/b$a;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/b$a;->b(Landroid/content/Context;)Lq1/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->D()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/b$a;->e(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)Lq1/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/b$a;->c(Ljava/lang/String;)Lq1/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/b$a;->d(Ljava/lang/String;)Lq1/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lq1/b$a;->a()Lq1/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq1/a;->a(Lq1/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zipDocDataFiles failed to make backup files "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdoc.zip"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdoc.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "category.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "categoryOder.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashtag.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashtagContent.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashtagNote4.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookMark.list"

    invoke-static {v0, v1, v3}, Lx1/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v4}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xd

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipFolder(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zipDocDataFiles failed to make widget zip files "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipDocFiles(Ljava/util/zip/ZipOutputStream;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipDatabases(Ljava/util/zip/ZipOutputStream;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipContentData(Ljava/util/zip/ZipOutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zipDocDataFiles failed to make zip files "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->deleteTempBackupFiles()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "zipDocDataFiles finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_4
    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method private zipDocFiles(Ljava/util/zip/ZipOutputStream;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "zipDocFiles start"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const/16 v3, 0xd

    invoke-direct {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->getProgressTimerTask(I)Ljava/util/TimerTask;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x186a0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v4, v1, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getAllDataList(ZZ)Ljava/util/List;

    move-result-object v4

    iget-object v7, v1, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->getAllRecycleBinDataList(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v8}, Lp1/a;->r()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move-object v9, v0

    move v11, v3

    move v10, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v12}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v1, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v13}, Lp1/a;->r()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "b_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v12, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->makeFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "zipDocFiles failed to make zip file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x2800

    :try_start_1
    new-array v13, v13, [B

    sget-object v14, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v3, "zipDocFiles noteFilePath "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move v0, v5

    :goto_2
    invoke-virtual {v3, v13}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v12, -0x1

    if-eq v9, v12, :cond_3

    :try_start_4
    invoke-virtual {v2, v13, v5, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    const/16 v9, 0x1388

    if-ne v0, v9, :cond_2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, v11}, Lc3/n;->E(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v5

    :cond_2
    add-int/2addr v0, v6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v0, v10, 0x25

    :try_start_5
    div-int/2addr v0, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v12, 0xd

    add-int/lit8 v11, v0, 0xd

    :try_start_6
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, v11}, Lc3/n;->E(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    move-object v9, v3

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v3

    goto :goto_6

    :catch_3
    move-exception v0

    const/16 v12, 0xd

    :goto_3
    move-object v9, v3

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_4
    const/16 v12, 0xd

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move v12, v3

    :goto_5
    :try_start_7
    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "zipDocFiles exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-direct {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    invoke-direct {v1, v9}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    move v12, v3

    :goto_7
    move v3, v12

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lc3/n;->E(I)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "zipDocFiles finish"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zipFile(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;I)V
    .locals 4

    const/16 v0, 0x2800

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p3, v0, p1, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    const/16 v1, 0x1388

    if-ne p2, v1, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p2

    invoke-virtual {p2, p4}, Lc3/n;->E(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

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
    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "zipFile exception "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    throw p1
.end method

.method private zipFolder(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;I)V
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->zipFolder(Ljava/io/File;Ljava/io/File;Ljava/util/zip/ZipOutputStream;I)V

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x2800

    :try_start_0
    new-array v6, v6, [B

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move v4, v2

    :goto_1
    invoke-virtual {v7, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    invoke-virtual {p3, v6, v2, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    rem-int/lit16 v5, v4, 0x1388

    if-nez v5, :cond_1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    invoke-virtual {v5, p4}, Lc3/n;->E(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v7}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v5, v7

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v5, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v4

    :goto_2
    :try_start_2
    sget-object v6, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "zipFolder exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, v5}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_4
    invoke-direct {p0, v5}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->closeCloseable(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "zipFolder directory param is not a real folder in NormalBackupTask"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string v0, "EntireBackupTask start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mIsAlive:Z

    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntireBackupTask failed to delete files in BnR path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    const-string v0, "EntireBackupTask failed to mkdirs BnR path."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->backupDocData()I

    move-result p1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntireBackupTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->transferBackUpData(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->sendResponseEntireBackup(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mIsAlive:Z

    const-string p1, "EntireBackupTask finish"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->E(I)V

    return-void
.end method
