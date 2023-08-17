.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->createStreamObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "LcoeditCoreMessage/ServerMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const-string v1, "ContinuousMessageRunnable"

    if-eqz v0, :cond_0

    const-string v0, "responseObserver, onCompleted ignore already interrupted"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "responseObserver, onCompleted"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinuousMessageRunnable Completed but Invalid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->setConnectedState()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const-string v1, "ContinuousMessageRunnable"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseObserver, onError ignore already interrupted, message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseObserver, onError : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Need to connect before GET_DEVICE_LIST request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[handleConnect] duplicate connect try"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object p1

    const-string v0, "ContinuousMessageRunnable Error"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->setErrorState()V

    return-void
.end method

.method public onNext(LcoeditCoreMessage/ServerMsg;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->h(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getServerCmd()LcoeditCoreMessage/ServerCmd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->g(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->d(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->f(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;LcoeditCoreMessage/ServerMsg;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;->setConnectedState()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LcoeditCoreMessage/ServerMsg;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$1;->onNext(LcoeditCoreMessage/ServerMsg;)V

    return-void
.end method
