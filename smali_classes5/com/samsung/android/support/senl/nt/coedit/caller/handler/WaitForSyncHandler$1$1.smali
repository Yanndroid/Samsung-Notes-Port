.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->lambda$onReceived$0()V

    return-void
.end method

.method private synthetic lambda$onReceived$0()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestConnectSession()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->f(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->e(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "WaitForSyncHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS6-2] mWaitForSync, onReceived() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->e(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestDisconnectSession()V

    return-void

    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->e(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestDisconnectSession()V

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CS6-2] mWaitForSync, onReceived() : errCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , errMsg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WaitForSyncHandler"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "WaitForSyncHandler"

    const-string p2, "[CS6-1] mWaitForSync, onReceived()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/b;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/b;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
