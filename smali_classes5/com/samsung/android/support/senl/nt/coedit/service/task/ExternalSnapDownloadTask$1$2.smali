.class Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;->onCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

.field public final synthetic val$result:Ljava/lang/String;

.field public final synthetic val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "externalSnapDownload, onCompleted, "

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;->a(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$result:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ExternalSnapDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS7-2] externalSnapDownload, run, onCompleted() : fail to save doc, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->callback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onCompleted()V

    return-void

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$spenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1$2;->val$result:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    throw v1
.end method
