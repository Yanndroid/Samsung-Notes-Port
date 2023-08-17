.class final Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;
.super Lio/grpc/ForwardingClientCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigSelectingClientCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private callOptions:Lio/grpc/CallOptions;

.field private final channel:Lio/grpc/Channel;

.field private final configSelector:Lio/grpc/InternalConfigSelector;

.field private final context:Lio/grpc/Context;

.field private delegate:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/InternalConfigSelector;Lio/grpc/Channel;Ljava/util/concurrent/Executor;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalConfigSelector;",
            "Lio/grpc/Channel;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/ForwardingClientCall;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->configSelector:Lio/grpc/InternalConfigSelector;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->channel:Lio/grpc/Channel;

    iput-object p4, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {p5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p5, p3}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->context:Lio/grpc/Context;

    return-void
.end method

.method public static synthetic access$4800(Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;)Lio/grpc/Context;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->context:Lio/grpc/Context;

    return-object p0
.end method

.method private executeCloseObserverInContext(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall$1CloseInContext;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall$1CloseInContext;-><init>(Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public delegate()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/grpc/internal/PickSubchannelArgsImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    invoke-direct {v0, v1, p2, v2}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->configSelector:Lio/grpc/InternalConfigSelector;

    invoke-virtual {v1, v0}, Lio/grpc/InternalConfigSelector;->selectConfig(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/InternalConfigSelector$Result;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/InternalConfigSelector$Result;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->replaceInappropriateControlPlaneStatus(Lio/grpc/Status;)Lio/grpc/Status;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->executeCloseObserverInContext(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$4700()Lio/grpc/ClientCall;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    return-void

    :cond_0
    invoke-virtual {v0}, Lio/grpc/InternalConfigSelector$Result;->getInterceptor()Lio/grpc/ClientInterceptor;

    move-result-object v1

    invoke-virtual {v0}, Lio/grpc/InternalConfigSelector$Result;->getConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v2}, Lio/grpc/internal/ManagedChannelServiceConfig;->getMethodConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    sget-object v3, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    invoke-virtual {v2, v3, v0}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->channel:Lio/grpc/Channel;

    invoke-interface {v1, v0, v2, v3}, Lio/grpc/ClientInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->method:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;->delegate:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
