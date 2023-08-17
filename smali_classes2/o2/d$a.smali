.class public Lo2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/d;->onReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo2/d;


# direct methods
.method public constructor <init>(Lo2/d;)V
    .locals 0

    iput-object p1, p0, Lo2/d$a;->a:Lo2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo2/d$a;->a:Lo2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {v0, p2, p1}, Lo2/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lo2/d$a;->a:Lo2/d;

    iget-object v0, v0, Lo2/a;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "WDocCloudSyncHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceived() : mRequestType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo2/d$a;->a:Lo2/d;

    iget v3, v3, Lo2/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo2/d$a;->a:Lo2/d;

    iget v2, v1, Lo2/a;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v1, v1, Lo2/a;->j:Ly2/b;

    invoke-virtual {v1}, Ly2/b;->f()I

    move-result v1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lo2/d$a;->a:Lo2/d;

    new-instance v2, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask;

    iget-object v3, p0, Lo2/d$a;->a:Lo2/d;

    iget-object v4, v3, Lo2/a;->d:Landroid/content/Context;

    invoke-direct {v2, v4, p1, v3}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/RecoveryTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V

    :goto_0
    iput-object v2, v1, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lo2/d$a;->a:Lo2/d;

    new-instance v2, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;

    iget-object v3, p0, Lo2/d$a;->a:Lo2/d;

    iget-object v4, v3, Lo2/a;->d:Landroid/content/Context;

    invoke-direct {v2, v4, p1, v3}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncProcessTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lo2/d$a;->a:Lo2/d;

    iget-object v1, p1, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    iget-object p1, p1, Lo2/a;->j:Ly2/b;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->setRequestSyncInfo(Ly2/b;)V

    iget-object p1, p0, Lo2/d$a;->a:Lo2/d;

    iget-object v1, p1, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput v1, p1, Lo2/a;->a:I

    const-string p1, "WDocCloudSyncHelper"

    const-string v1, "onReceived() : execute SyncProcessTask!"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo2/d$a;->a:Lo2/d;

    iget-object v1, p1, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    iget-object p1, p1, Lo2/a;->f:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, v1, Lo2/a;->e:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
