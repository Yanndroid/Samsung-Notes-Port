.class public Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivateSCloudTask"


# instance fields
.field private isActivated:Z

.field private mActivateMethod:Le2/a;

.field private final mContext:Landroid/content/Context;

.field private mRegisterListener:Le2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le2/a;Le2/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->isActivated:Z

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mActivateMethod:Le2/a;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mRegisterListener:Le2/b;

    return-void
.end method

.method private activatePushToServerAsync()V
    .locals 4

    const-string v0, "ActivateSCloudTask"

    const-string v1, "[PUSH] Try to activate push to server"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mActivateMethod:Le2/a;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Le2/a;->a(Landroid/content/Context;La2/d$f;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->isActivated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->isActivated:Z

    if-eqz v1, :cond_1

    const-string v1, "[PUSH] Success to activate push to server"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "[PUSH] Fail to activate push to server"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "ActivateSCloudTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->activatePushToServerAsync()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "ActivateSCloudTask"

    const-string v1, "onCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mRegisterListener:Le2/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->isActivated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le2/b;->onEnded(I)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Le2/b;->onEnded(I)V

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->mRegisterListener:Le2/b;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;->isActivated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le2/b;->onEnded(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Le2/b;->onEnded(I)V

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "ActivateSCloudTask"

    const-string v0, "onPostExecute() ends"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
