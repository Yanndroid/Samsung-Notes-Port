.class public Lcom/samsung/android/app/notes/sync/migration/MigrationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/migration/a;


# static fields
.field public static final j:Ljava/lang/String;

.field public static k:Lcom/samsung/android/app/notes/sync/migration/MigrationController;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;

.field public c:Lp1/a;

.field public d:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

.field public e:Landroid/content/ServiceConnection;

.field public f:Landroid/content/ServiceConnection;

.field public g:Z

.field public h:Z

.field public i:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MigrationController"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->k:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->d:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->g:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->h:Z

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;-><init>(Lcom/samsung/android/app/notes/sync/migration/a;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->i:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->e:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lp1/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->c:Lp1/a;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->g:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->h:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->d:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->g:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->h:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->d:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Lp1/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->n(Lp1/a;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->o(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->k:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->k:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->k:Lcom/samsung/android/app/notes/sync/migration/MigrationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->j:Ljava/lang/String;

    const-string v1, "onStartBackup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->r()V

    return-void
.end method

.method public final n(Lp1/a;)V
    .locals 2

    invoke-virtual {p1}, Lp1/a;->D()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->INSTANT:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/InstantBackupTask;-><init>(Lp1/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;-><init>(Lp1/a;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->setBackUpCompleteListener(Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->c:Lp1/a;

    invoke-virtual {v0}, Lp1/a;->t()Ljava/lang/String;

    move-result-object v0

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
    const-string v1, "com.samsung.android.intent.action.NOTICE_INSTANT_UPLOAD_DONE"

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

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->i:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->k()V

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->i:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->h()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->r()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->i:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->i()V

    :goto_1
    return-void

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

.method public final r()V
    .locals 4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->e:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public s(Lp1/a;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->c:Lp1/a;

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$b;->a:[I

    invoke-virtual {p1}, Lp1/a;->D()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->r()V

    :goto_0
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationController$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController$3;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->isTaskAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->stopTask()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->d:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->stopForegroundService()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->d:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    :cond_1
    return-void
.end method
