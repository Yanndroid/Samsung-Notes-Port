.class public Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;


# instance fields
.field public a:I

.field public final b:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public c:I

.field public final d:Landroid/content/Context;

.field public e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

.field public h:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

.field public i:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

.field public j:Ly2/b;

.field public final k:Ljava/lang/Object;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lo2/a;->a:I

    const/4 v1, 0x0

    iput v1, p0, Lo2/a;->c:I

    const/4 v2, 0x0

    iput-object v2, p0, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    iput-object v2, p0, Lo2/a;->f:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lo2/a;->g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    iput-object v2, p0, Lo2/a;->h:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    iput-object v2, p0, Lo2/a;->i:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lo2/a;->k:Ljava/lang/Object;

    iput-boolean v0, p0, Lo2/a;->l:Z

    iput-boolean v1, p0, Lo2/a;->m:Z

    iput-object p1, p0, Lo2/a;->d:Landroid/content/Context;

    iput-object p2, p0, Lo2/a;->b:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance p1, Ly2/b;

    invoke-direct {p1, v1}, Ly2/b;-><init>(I)V

    iput-object p1, p0, Lo2/a;->j:Ly2/b;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lo2/a;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lo2/a;->a:I

    const/4 v2, 0x0

    iput v2, p0, Lo2/a;->c:I

    iget-object v3, p0, Lo2/a;->g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lo2/a;->l:Z

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->a(ILjava/lang/String;)V

    iput-boolean v1, p0, Lo2/a;->l:Z

    :cond_0
    iget-object p1, p0, Lo2/a;->j:Ly2/b;

    invoke-virtual {p1}, Ly2/b;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 4

    iget-object v0, p0, Lo2/a;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lo2/a;->a:I

    const/4 v2, 0x0

    iput v2, p0, Lo2/a;->c:I

    iget-object v3, p0, Lo2/a;->g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lo2/a;->l:Z

    invoke-interface {v3, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->c(I)V

    iput-boolean v1, p0, Lo2/a;->l:Z

    :cond_0
    iget-object p1, p0, Lo2/a;->j:Ly2/b;

    invoke-virtual {p1}, Ly2/b;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(I)V
    .locals 4

    iget-object v0, p0, Lo2/a;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lo2/a;->a:I

    const/4 v2, 0x0

    iput v2, p0, Lo2/a;->c:I

    iget-object v3, p0, Lo2/a;->g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lo2/a;->l:Z

    invoke-interface {v3, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->d(I)V

    iput-boolean v1, p0, Lo2/a;->l:Z

    :cond_0
    iget-object p1, p0, Lo2/a;->j:Ly2/b;

    invoke-virtual {p1}, Ly2/b;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Ly2/b;
    .locals 1

    iget-object v0, p0, Lo2/a;->j:Ly2/b;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lo2/a;->a:I

    return v0
.end method

.method public g(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V
    .locals 0

    iput-object p1, p0, Lo2/a;->h:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    return-void
.end method

.method public h(Ly2/b;)V
    .locals 0

    iput-object p1, p0, Lo2/a;->j:Ly2/b;

    return-void
.end method

.method public i(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo2/a;->g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(I)Z
    .locals 5

    iget-boolean v0, p0, Lo2/a;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "AbsSyncHelper"

    const-string v0, "cancel stop due to the ending process!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lo2/a;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v4, :cond_1

    const-string v1, "AbsSyncHelper"

    const-string v2, "stop() : mSyncTask is running!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->stop(I)V

    goto :goto_0

    :cond_1
    const-string v2, "AbsSyncHelper"

    const-string v4, "stop() : mSyncTask is null or mSyncTask is stop!"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lo2/a;->a:I

    iget-object v2, p0, Lo2/a;->j:Ly2/b;

    invoke-virtual {v2}, Ly2/b;->a()V

    iput v3, p0, Lo2/a;->c:I

    iget-object v2, p0, Lo2/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v2

    iget-object v4, p0, Lo2/a;->h:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    invoke-virtual {v2, v4}, Lf/a;->g(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    iget-object v2, p0, Lo2/a;->g:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lo2/a;->l:Z

    iput-boolean v1, p0, Lo2/a;->m:Z

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->b()Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->a(I)I

    move-result p1

    invoke-interface {v2, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->c(I)V

    iput-boolean v1, p0, Lo2/a;->l:Z

    iput-boolean v3, p0, Lo2/a;->m:Z

    :cond_2
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
