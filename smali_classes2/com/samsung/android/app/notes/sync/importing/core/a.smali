.class public Lcom/samsung/android/app/notes/sync/importing/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;


# instance fields
.field public final a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public final b:Landroid/content/Context;

.field public c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

.field public d:Ljava/util/concurrent/Executor;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

.field public k:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->d:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->i:Z

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->k:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    add-int/2addr v1, v0

    return v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public d()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->NONE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    :goto_0
    return-object v0
.end method

.method public e(Ljava/util/concurrent/Executor;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/util/concurrent/Executor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/util/concurrent/Executor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->k:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    return-void
.end method

.method public i(Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget v0, v0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mRequestType:I

    const-string v4, "AbsSyncHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop() - type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , requestType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_1

    const-string v0, "AbsSyncHelper"

    const-string v1, "call onImportEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    goto :goto_0

    :cond_0
    const-string v0, "AbsSyncHelper"

    const-string v3, "stop() - mSync is null!"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->k:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    invoke-virtual {v0, v3}, Lf/a;->g(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_1

    const-string v0, "AbsSyncHelper"

    const-string v1, "call onImportEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->NONE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->getSuccessfulList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

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

.method public onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    const-string v0, "AbsSyncHelper"

    const-string v1, "onGetListEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

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

.method public onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    const-string v0, "AbsSyncHelper"

    const-string v1, "onSyncEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

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

.method public onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AbsSyncHelper"

    const-string v1, "onImportEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "AbsSyncHelper"

    const-string p2, "onImportEnded() : mHasError is true!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->i:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iget p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->h:Ljava/util/List;

    const-string p2, "AbsSyncHelper"

    const-string v0, "call requestDownloadLists()"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->e(Ljava/util/concurrent/Executor;Ljava/util/List;Z)Z

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iput v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->g:I

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->i:Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

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

.method public onImportStart(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 0

    return-void
.end method

.method public onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V

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

.method public onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->j:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

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
