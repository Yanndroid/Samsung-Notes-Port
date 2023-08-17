.class Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;
.super Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializingServerCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field private static final ERROR_MSG:Ljava/lang/String; = "Encountered error during serialized access"


# instance fields
.field private closeCalled:Z

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;


# direct methods
.method public constructor <init>(Lio/grpc/ServerCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;-><init>(Lio/grpc/ServerCall;)V

    new-instance p1, Lio/grpc/internal/SerializingExecutor;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->closeCalled:Z

    return-void
.end method

.method public static synthetic access$001(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1001(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->getAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$101(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;I)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->request(I)V

    return-void
.end method

.method public static synthetic access$201(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Metadata;)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->sendHeaders(Lio/grpc/Metadata;)V

    return-void
.end method

.method public static synthetic access$300(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->closeCalled:Z

    return p0
.end method

.method public static synthetic access$302(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->closeCalled:Z

    return p1
.end method

.method public static synthetic access$401(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method public static synthetic access$501(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Z
    .locals 0

    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->isReady()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$601(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Z
    .locals 0

    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$701(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->setMessageCompression(Z)V

    return-void
.end method

.method public static synthetic access$801(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->setCompression(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$901(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;)Lio/grpc/Attributes;
    .locals 0

    invoke-super {p0}, Lio/grpc/ForwardingServerCall$SimpleForwardingServerCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$4;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$4;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 4

    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$9;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$9;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Attributes;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$10;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$10;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isCancelled()Z
    .locals 4

    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$6;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$6;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isReady()Z
    .locals 4

    const-string v0, "Encountered error during serialized access"

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v3, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$5;

    invoke-direct {v3, p0, v1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$5;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v2, v3}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public request(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$2;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;I)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendHeaders(Lio/grpc/Metadata;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$3;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$3;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Lio/grpc/Metadata;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$1;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$8;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$8;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall$7;-><init>(Lio/grpc/util/TransmitStatusRuntimeExceptionInterceptor$SerializingServerCall;Z)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
