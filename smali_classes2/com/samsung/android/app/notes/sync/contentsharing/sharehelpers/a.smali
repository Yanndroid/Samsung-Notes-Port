.class public Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/a;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;


# instance fields
.field public k:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MdeSdocDeleteHelper"

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
    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/MdeDeleteSDocTask;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->j:Ljava/util/List;

    invoke-direct {p1, v0, v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/MdeDeleteSDocTask;-><init>(Ljava/lang/String;Ljava/util/List;Lr/b;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->i:Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->c:Ljava/util/concurrent/Executor;

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

.method public n(Ljava/util/concurrent/Executor;)Z
    .locals 4

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
    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;->ALL:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/a;->k:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDeleteLocalSharedSdocFinished()V
    .locals 2

    const-string v0, "MdeSdocDeleteHelper"

    const-string v1, "onDeleteLocalSharedSdocFinished()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->d:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
