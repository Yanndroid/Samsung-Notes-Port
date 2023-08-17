.class Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/ProtocolNegotiators;->httpProxy(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/ProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyNegotiator"
.end annotation


# instance fields
.field public final synthetic val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

.field public final synthetic val$proxyAddress:Ljava/net/SocketAddress;

.field public final synthetic val$proxyPassword:Ljava/lang/String;

.field public final synthetic val$proxyUsername:Ljava/lang/String;

.field public final synthetic val$scheme:Lio/netty/util/AsciiString;


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiator;Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/netty/util/AsciiString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$proxyAddress:Ljava/net/SocketAddress;

    iput-object p3, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$proxyUsername:Ljava/lang/String;

    iput-object p4, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$proxyPassword:Ljava/lang/String;

    iput-object p5, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$scheme:Lio/netty/util/AsciiString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator;->close()V

    return-void
.end method

.method public newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0, p1}, Lio/grpc/netty/ProtocolNegotiator;->newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-virtual {p1}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getNegotiationLogger()Lio/grpc/ChannelLogger;

    move-result-object v6

    new-instance p1, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$proxyAddress:Ljava/net/SocketAddress;

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$proxyUsername:Ljava/lang/String;

    iget-object v4, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$proxyPassword:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-object p1
.end method

.method public scheme()Lio/netty/util/AsciiString;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;->val$scheme:Lio/netty/util/AsciiString;

    return-object v0
.end method
