.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "LcoeditCoreMessage/CatchupResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

.field public final synthetic val$request:LcoeditCoreMessage/CatchupRequest;

.field public final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;Ljava/lang/String;LcoeditCoreMessage/CatchupRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->val$request:LcoeditCoreMessage/CatchupRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    const-string v1, "CatchupRunnable response"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response, onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CatchupRunnable"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->access$100(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->val$requestId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->val$request:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;Ljava/lang/String;Ljava/lang/String;LcoeditCoreMessage/CatchupRequest;)V

    return-void
.end method

.method public onNext(LcoeditCoreMessage/CatchupResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->d(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;LcoeditCoreMessage/CatchupResponse;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process catchup response. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatchupRunnable"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable;

    invoke-virtual {p1}, LcoeditCoreMessage/CatchupResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LcoeditCoreMessage/CatchupResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/CatchupRunnable$1;->onNext(LcoeditCoreMessage/CatchupResponse;)V

    return-void
.end method
