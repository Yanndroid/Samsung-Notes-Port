.class final Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;
.super Lio/grpc/stub/ClientCallStreamObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallToStreamObserverAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ClientCallStreamObserver<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field private aborted:Z

.field private autoRequestEnabled:Z

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private completed:Z

.field private frozen:Z

.field private initialRequest:I

.field private onReadyHandler:Ljava/lang/Runnable;

.field private final streamingResponse:Z


# direct methods
.method public constructor <init>(Lio/grpc/ClientCall;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/stub/ClientCallStreamObserver;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->initialRequest:I

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoRequestEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    iput-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    iput-boolean p2, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->streamingResponse:Z

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->freeze()V

    return-void
.end method

.method public static synthetic access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->streamingResponse:Z

    return p0
.end method

.method public static synthetic access$300(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoRequestEnabled:Z

    return p0
.end method

.method public static synthetic access$400(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->onReadyHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$500(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)I
    .locals 0

    iget p0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->initialRequest:I

    return p0
.end method

.method private freeze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public disableAutoInboundFlowControl()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->disableAutoRequestWithInitial(I)V

    return-void
.end method

.method public disableAutoRequestWithInitial(I)V
    .locals 3

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Initial requests must be non-negative"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->initialRequest:I

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->autoRequestEnabled:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot disable auto flow control after call started. Use ClientResponseObserver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    const-string v1, "Cancelled by client with StreamObserver.onError()"

    invoke-virtual {v0, v1, p1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->aborted:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->completed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public request(I)V
    .locals 1

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->streamingResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/grpc/ClientCall;->request(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    :goto_0
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->call:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    return-void
.end method

.method public setOnReadyHandler(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->frozen:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->onReadyHandler:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot alter onReadyHandler after call started. Use ClientResponseObserver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
