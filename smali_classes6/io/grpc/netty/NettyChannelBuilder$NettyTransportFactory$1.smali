.class Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;

.field public final synthetic val$keepAliveTimeNanosState:Lio/grpc/internal/AtomicBackoff$State;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;Lio/grpc/internal/AtomicBackoff$State;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory$1;->this$0:Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;

    iput-object p2, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory$1;->val$keepAliveTimeNanosState:Lio/grpc/internal/AtomicBackoff$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory$1;->val$keepAliveTimeNanosState:Lio/grpc/internal/AtomicBackoff$State;

    invoke-virtual {v0}, Lio/grpc/internal/AtomicBackoff$State;->backoff()V

    return-void
.end method
