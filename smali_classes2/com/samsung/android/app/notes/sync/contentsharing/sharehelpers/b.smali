.class public abstract Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;
.source "SourceFile"

# interfaces
.implements Lr/b;


# instance fields
.field public h:Lr/b;

.field public i:Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->h:Lr/b;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->i:Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MdeSdocHelper"

    const-string v1, "onEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->h:Lr/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->d:Z

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

.method public c(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MdeSdocHelper"

    const-string v1, "onError()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->h:Lr/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lr/b;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

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

.method public i(Ly1/a;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public k(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->e:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->c:Ljava/util/concurrent/Executor;

    iget p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    const/4 v0, 0x2

    if-eq p1, v3, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MdeSdocHelper"

    const-string p3, "Share(State) is already started!"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return p2

    :cond_1
    const-string p1, "MdeSdocHelper"

    const-string p3, "Share(State) is checking authorization!"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return p2

    :cond_2
    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->g()V

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

.method public l(Lr/b;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->h:Lr/b;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->i:Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->i:Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->h:Lr/b;

    if-eqz v0, :cond_0

    const-string v0, "MdeSdocHelper"

    const-string v1, "call onEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->h:Lr/b;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lr/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->d:Z

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MdeSdocHelper"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
