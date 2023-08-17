.class final Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;
.super Lio/grpc/stub/ServerCallStreamObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerCallStreamObserverImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ServerCallStreamObserver<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private aborted:Z

.field private autoRequestEnabled:Z

.field public final call:Lio/grpc/ServerCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public volatile cancelled:Z

.field private completed:Z

.field private frozen:Z

.field private onCancelHandler:Ljava/lang/Runnable;

.field private onCloseHandler:Ljava/lang/Runnable;

.field private onReadyHandler:Ljava/lang/Runnable;

.field private sentHeaders:Z

.field private final serverStreamingOrBidi:Z


# direct methods
.method public constructor <init>(Lio/grpc/ServerCall;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/stub/ServerCallStreamObserver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->autoRequestEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->aborted:Z

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->completed:Z

    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    iput-boolean p2, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->serverStreamingOrBidi:Z

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->freeze()V

    return-void
.end method

.method public static synthetic access$200(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCancelHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$300(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onReadyHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCloseHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$500(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->autoRequestEnabled:Z

    return p0
.end method

.method private freeze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    return-void
.end method


# virtual methods
.method public disableAutoInboundFlowControl()V
    .locals 0

    invoke-virtual {p0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->disableAutoRequest()V

    return-void
.end method

.method public disableAutoRequest()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot disable auto flow control after initialization"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->autoRequestEnabled:Z

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 3

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->completed:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lio/grpc/Status;->trailersFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Metadata;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    :cond_0
    iget-object v1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->aborted:Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->cancelled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->serverStreamingOrBidi:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v0, "call already cancelled. Use ServerCallStreamObserver.setOnCancelHandler() to disable this exception"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->aborted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->completed:Z

    xor-int/2addr v0, v1

    const-string v2, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->sentHeaders:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v2}, Lio/grpc/ServerCall;->sendHeaders(Lio/grpc/Metadata;)V

    iput-boolean v1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->sentHeaders:Z

    :cond_2
    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public request(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->request(I)V

    return-void
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setCompression(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->call:Lio/grpc/ServerCall;

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setMessageCompression(Z)V

    return-void
.end method

.method public setOnCancelHandler(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot alter onCancelHandler after initialization. May only be called during the initial call to the application, before the service returns its StreamObserver"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCancelHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCloseHandler(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot alter onCloseHandler after initialization. May only be called during the initial call to the application, before the service returns its StreamObserver"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onCloseHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnReadyHandler(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->frozen:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot alter onReadyHandler after initialization. May only be called during the initial call to the application, before the service returns its StreamObserver"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->onReadyHandler:Ljava/lang/Runnable;

    return-void
.end method
