.class Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;
.super Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->onCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    const-string p1, "externalSnapStart-onComplete"

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;->releaseHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    :cond_0
    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalSnapStart, onError. Failed to sync note. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSnapStartTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    const-string p1, "externalSnapStart-onError"

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;->releaseHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    :cond_0
    return-void
.end method
