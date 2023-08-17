.class public Lo2/b;
.super Lo2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo2/a;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    return-void
.end method


# virtual methods
.method public k(Ljava/util/concurrent/Executor;I)Z
    .locals 2

    iget-boolean v0, p0, Lo2/a;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p1, p0, Lo2/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lo2/a;->m:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lo2/a;->d:Landroid/content/Context;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const-string p1, "SyncHelper"

    const-string p2, "cancel request due to the ending process!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lo2/a;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo2/a;->f:Ljava/util/concurrent/Executor;

    iput p2, p0, Lo2/a;->c:I

    iget p1, p0, Lo2/a;->a:I

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object p2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, p2, :cond_3

    const-string p1, "SyncHelper"

    const-string p2, "cancel SyncTask"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->setListener(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V

    const/16 p1, 0x6b

    invoke-virtual {p0, p1}, Lo2/a;->j(I)Z

    iput v1, p0, Lo2/a;->c:I

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lo2/a;->a:I

    invoke-virtual {p0}, Lo2/b;->m()V

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Ljava/util/concurrent/Executor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo2/b;->k(Ljava/util/concurrent/Executor;I)Z

    move-result p1

    return p1
.end method

.method public final m()V
    .locals 2

    const-string v0, "SyncHelper"

    const-string v1, "Request SA Auth"

    invoke-static {v0, v1}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo2/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    iget-object v1, p0, Lo2/a;->h:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    invoke-virtual {v0, v1}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method
