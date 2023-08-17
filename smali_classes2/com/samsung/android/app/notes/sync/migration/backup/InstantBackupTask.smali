.class public Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;
.super Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSnapShotFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InstantBackupTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lp1/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;-><init>(Lp1/a;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->prepareSnapShotFile()V

    return-void
.end method

.method private clearBackupData()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBackupData "

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

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBackupData. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private clearSnapShot()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearSnapShot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->mSnapShotFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->mSnapShotFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private createBackupData()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "createBackupData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    return-void
.end method

.method private createSnapShot()V
    .locals 9

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "createSnapShot"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/b;

    new-instance v1, Ls1/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ls1/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ls1/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ls1/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v3, Ls1/a;

    invoke-direct {v3}, Ls1/a;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->BACKUP:Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SDocBnR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->mSnapShotFile:Ljava/io/File;

    invoke-virtual/range {v3 .. v8}, Ls1/a;->a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    return-void
.end method

.method private executeNoticeInstantUploadDone()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "executeNoticeInstantUploadDone"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->clearBackupData()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->clearSnapShot()V

    return-void
.end method

.method private executeNoticeTaskCanceled()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "executeNoticeTaskCanceled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private executeRequestInstantSnapshot()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    const-string v1, "executeRequestInstantSnapshot"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->createBackupData()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->createSnapShot()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->transferSnapshot()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->makeDebugBackupList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestInstantSnapshot exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private makeDebugBackupList()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_backuplist.json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->mSnapShotFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeDebugBackupList. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private prepareSnapShotFile()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareSnapShotFile mkdirs sourceFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "backuplist.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->mSnapShotFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSnapShotFile exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private transferSnapshot()V
    .locals 7

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->mSnapShotFile:Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v2}, Lp1/a;->s()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lx1/h;->n(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transferSnapshot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v5}, Lp1/a;->s()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Intent[%s] copyCount[%d]"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    return-void

    :cond_0
    new-instance v0, Lp1/c;

    const-string/jumbo v1, "transferSnapshot failed to copy"

    invoke-direct {v0, v1}, Lp1/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->TAG:Ljava/lang/String;

    const-string v0, "InstantBackupTask start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mIsAlive:Z

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v1}, Lp1/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string v0, "com.samsung.android.intent.action.NOTICE_INSTANT_TASK_CANCELED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "com.samsung.android.intent.action.NOTICE_INSTANT_UPLOAD_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "InstantBackupTask invalid intent action"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->executeNoticeTaskCanceled()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->executeNoticeInstantUploadDone()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->executeRequestInstantSnapshot()V

    :goto_2
    const-string v0, "InstantBackupTask end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x2cbe1068 -> :sswitch_2
        -0x24d50a9f -> :sswitch_1
        0x70fed434 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lc3/n;->G(I)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->x()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lc3/n;->L(Ljava/lang/String;II)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    return-void
.end method
