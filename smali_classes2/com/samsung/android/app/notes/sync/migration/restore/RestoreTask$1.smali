.class Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MigrationService is connected."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/notes/sync/R$string;->migration_restore_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    check-cast p2, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;->getService()Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->c(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->a(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->startForegroundService(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->b(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;Z)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MigrationService is disconnected."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->c(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->b(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;Z)V

    return-void
.end method
