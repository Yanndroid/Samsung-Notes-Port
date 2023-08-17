.class public Lcom/samsung/android/app/notes/sync/importing/core/e;
.super Lcom/samsung/android/app/notes/sync/importing/core/a;
.source "SourceFile"


# instance fields
.field public final n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/a;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/e;->n:Z

    return-void
.end method


# virtual methods
.method public e(Ljava/util/concurrent/Executor;Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;Z)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/a;->e(Ljava/util/concurrent/Executor;Ljava/util/List;Z)Z

    const-string v0, "ImportHelper"

    const-string v1, "requestDownloadLists()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    if-ne v3, v1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "ImportHelper"

    const-string p2, "Add the docs to mDownloadAppendList"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "ImportHelper"

    const-string p2, "Add the docs to mDownloadList"

    goto :goto_0

    :goto_1
    monitor-exit p0

    return v2

    :cond_2
    if-nez p3, :cond_3

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    :cond_3
    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    const-string p2, "ImportHelper"

    const-string p3, "request REQUEST_DOWNLOAD_LISTS"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/e;->k(Ljava/util/concurrent/Executor;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/util/concurrent/Executor;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->f(Ljava/util/concurrent/Executor;)Z

    const-string v0, "ImportHelper"

    const-string v1, "Start getting the doc list"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/e;->k(Ljava/util/concurrent/Executor;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Ljava/util/concurrent/Executor;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->g(Ljava/util/concurrent/Executor;)Z

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/e;->k(Ljava/util/concurrent/Executor;I)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k(Ljava/util/concurrent/Executor;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->d:Ljava/util/concurrent/Executor;

    iget p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    iput p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->i:Z

    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/e;->n:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->stop()V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/e;->l()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->k:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;->onReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l()V
    .locals 2

    const-string v0, "ImportHelper"

    const-string v1, "Start getting the token"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->k:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    invoke-virtual {v0, v1}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
