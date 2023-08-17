.class Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;
.super Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalSnapStart, onCompleted. call sync method, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExternalSnapStartTask"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    iget-object v3, p2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mGroupId:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mWorkspaceId:Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->callback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    invoke-direct {v6, p0, p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->externalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalSnapStart, snapSync, onError. Failed to snapSync note. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSnapStartTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapStartTask$1;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    const-string p1, "externalSnapStart, snapSync-onError"

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;->releaseHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    :cond_0
    return-void
.end method
