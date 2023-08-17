.class Lio/grpc/netty/NettyClientTransport$3;
.super Lio/grpc/netty/NettyClientStream$TransportState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientTransport;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/netty/NettyClientHandler;Lio/netty/channel/EventLoop;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lio/grpc/netty/NettyClientTransport$3;->this$0:Lio/grpc/netty/NettyClientTransport;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/NettyClientStream$TransportState;-><init>(Lio/grpc/netty/NettyClientHandler;Lio/netty/channel/EventLoop;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public statusFromFailedFuture(Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport$3;->this$0:Lio/grpc/netty/NettyClientTransport;

    invoke-static {v0, p1}, Lio/grpc/netty/NettyClientTransport;->access$100(Lio/grpc/netty/NettyClientTransport;Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method
