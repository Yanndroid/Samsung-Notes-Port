.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->lambda$onReceived$0()V

    return-void
.end method

.method private synthetic lambda$onReceived$0()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestConnectSession()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->i(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const-string v0, "WaitForDownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS9] handleMessage, onReceived() : No trim, et = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestDisconnectSession()V

    return-void

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    new-instance v2, Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    invoke-direct {v2}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;-><init>()V

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->f(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "WaitForDownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-2] handleMessage, onReceived() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestDisconnectSession()V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->requestDisconnectSession()V

    throw v0
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7-2] handleMessage, onError() : errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , errMsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WaitForDownloadHandler"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "WaitForDownloadHandler"

    const-string p2, "[CS7] handleMessage, onReceived()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->e(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/a;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/a;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
