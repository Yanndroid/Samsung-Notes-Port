.class public Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;
.super Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;


# instance fields
.field public h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

.field public i:I

.field public j:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->i:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    const-string v0, "CoeditSdocShareHelper"

    const-string v1, "onShareEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->i:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;->b()V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;->d(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;->f(Ljava/util/ArrayList;)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->i:I

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Ly1/a;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->f(Ljava/util/ArrayList;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CoeditSdocShareHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish getting account id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    new-instance p1, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->f:Ljava/lang/String;

    invoke-direct {p1, v0, p0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->j:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/util/concurrent/Executor;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->e:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->c:Ljava/util/concurrent/Executor;

    iget p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    const/4 v0, 0x2

    if-eq p1, v3, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CoeditSdocShareHelper"

    const-string v0, "Share(state) is already started!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return p2

    :cond_1
    const-string p1, "CoeditSdocShareHelper"

    const-string v0, "Share(state) is checking authorization!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return p2

    :cond_2
    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g()V

    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->j:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->j:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->i:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    if-eqz v1, :cond_0

    const-string v1, "CoeditSdocShareHelper"

    const-string v2, "call onShareEnded()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->h:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    invoke-interface {v1}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;->b()V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
