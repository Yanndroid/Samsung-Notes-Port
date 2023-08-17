.class public Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NUM_OF_SERVICE_CONNECT_EXECUTOR:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ServiceConnectHandler"


# instance fields
.field private final mServiceConnectExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "ServiceConnectHandler_service_connect_executor"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->mServiceConnectExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public connectServiceToDownloadNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v0, p3

    const-string v11, "ServiceConnectHandler"

    const-string v1, "[CS7] connectServiceToDownloadNote()"

    invoke-static {v11, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v12}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_down_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-direct {v14, v10, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "document_uuid"

    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v15, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$2;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v14, v15, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    const-wide/32 v2, 0x927c0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v15, v13}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {v10, v15}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v2, "connectServiceToDownloadNote, TimeoutException"

    invoke-static {v11, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v2

    const-string v3, "connectServiceToDownloadNote-Timeout"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->forceCancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    :goto_2
    invoke-virtual {v15, v13}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {v10, v15}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public downloadSpenWNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7] downloadSpenWNote() : uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ServiceConnectHandler"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v10, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->mServiceConnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
    .locals 12

    const-string v0, "ServiceConnectHandler"

    const-string v1, "syncSpenWNote() "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->mServiceConnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V

    invoke-interface {v1, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v11, p1

    move-object/from16 v0, p4

    const-string v12, "ServiceConnectHandler"

    const-string v1, "externalSnapStart, CoeditService"

    invoke-static {v12, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v13}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_sync_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-direct {v15, v11, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "document_uuid"

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v10, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v16, v12

    move-object v12, v10

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$4;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v15, v12, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    const-wide/32 v2, 0x927c0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v12, v14}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v2, "externalSnapStart, TimeoutException"

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v2

    const-string v3, "externalSnapStart-Timeout"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->forceCancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    :goto_2
    invoke-virtual {v12, v14}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw v0
.end method
