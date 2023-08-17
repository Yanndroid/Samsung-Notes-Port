.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$originFilePath:Ljava/lang/String;

.field public final synthetic val$resourceId:Ljava/lang/String;

.field public final synthetic val$tempFilePath:Ljava/lang/String;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$originFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$tempFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$uuid:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$groupId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$resourceId:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "syncSpenWNote, ret : "

    const-string v1, "ServiceConnectHandler"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$originFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$tempFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$uuid:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$groupId:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$resourceId:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$uuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFinished(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFailed()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS7-2] syncSpenWNote, in ServiceConnectExecutor, e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    return-void

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$3;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFailed()V

    :cond_2
    throw v3
.end method
