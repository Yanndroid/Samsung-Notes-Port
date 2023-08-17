.class Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "SyncOldServiceController"

    const-string v0, "onServiceConnected() start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->v()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->s(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    check-cast p2, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService$LocalBinder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService$LocalBinder;->getService()Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d:Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->CONNECTED:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->t(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    iget-object p2, p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    iget-object p2, p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->e:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d:Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;->a(Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->o(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-static {p2, v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->r(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v0, "SyncOldServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected() : Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->s(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Z)V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "SyncOldServiceController"

    const-string p2, "onServiceConnected() finish"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SyncOldServiceController"

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->u(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V

    return-void
.end method
