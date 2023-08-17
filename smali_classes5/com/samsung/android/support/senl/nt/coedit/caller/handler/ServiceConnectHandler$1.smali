.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->downloadSpenWNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
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

.field public final synthetic val$resourceId:Ljava/lang/String;

.field public final synthetic val$tempFilePath:Ljava/lang/String;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$tempFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$uuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$groupId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$resourceId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$tempFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$uuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$groupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$resourceId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->connectServiceToDownloadNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$uuid:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFinished(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFailed()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    const-string v1, "ServiceConnectHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-2] downloadSpenWNote, run() : fail to connectToDownloadNote, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFailed()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;->onFailed()V

    :cond_2
    throw v0
.end method
