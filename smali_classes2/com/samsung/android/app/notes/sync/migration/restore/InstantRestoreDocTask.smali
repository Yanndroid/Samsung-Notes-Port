.class public Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSnapShotFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InstantRestoreDocTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->prepareRestoreRepository()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->prepareSnapShotFile()V

    return-void
.end method

.method private createSnapShot()V
    .locals 8

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "createSnapShot"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    new-instance v0, Ls1/b;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mParam:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v2, Ls1/a;

    invoke-direct {v2}, Ls1/a;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->RESTORE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SDocBnR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->mSnapShotFile:Ljava/io/File;

    invoke-virtual/range {v2 .. v7}, Ls1/a;->a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lc3/n;->G(I)V

    return-void
.end method

.method private executeNoticeTaskCanceled()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mParam:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->o()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "delete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNoticeTaskCanceled needToClear "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->partialClear()V

    :goto_0
    return-void
.end method

.method private executeRequestInstantRestore()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "executeRequestInstantRestore"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->prepare()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->update()I

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreDocTask;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequestInstantRestore exception "

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

.method private executeRequestInstantSnapshot()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v1, "executeRequestInstantSnapshot"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->createSnapShot()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->transferSnapshot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

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

.method private prepareRestoreRepository()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SDocBnR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareRestoreRepository mkdirs sDocBnR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private prepareSnapShotFile()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->mSnapShotFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->mSnapShotFile:Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mParam:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->o()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lx1/h;->n(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transferSnapshot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mParam:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->o()Landroid/content/Intent;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->TAG:Ljava/lang/String;

    const-string v0, "InstantRestoreDocTask start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.samsung.android.intent.action.NOTICE_INSTANT_TASK_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_INSTANT_RESTORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string v0, "InstantRestoreDocTask invalid intent action"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->executeNoticeTaskCanceled()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->executeRequestInstantRestore()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;->executeRequestInstantSnapshot()V

    :goto_1
    const-string v0, "InstantRestoreDocTask end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x2cbe1068 -> :sswitch_2
        0x59eaa1a -> :sswitch_1
        0x70fed434 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
