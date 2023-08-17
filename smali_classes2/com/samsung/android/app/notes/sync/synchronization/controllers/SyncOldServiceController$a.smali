.class public Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->v()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->q(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncOldServiceController"

    const-string/jumbo v2, "unbindService()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    iget-object v2, v1, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->p(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    sget-object v2, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;->DISCONNECTING:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->t(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$ServiceState;)V

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "SyncOldServiceController"

    const-string v2, "cancel to unbindService()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SyncOldServiceController"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->u(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;)V

    return-void
.end method
