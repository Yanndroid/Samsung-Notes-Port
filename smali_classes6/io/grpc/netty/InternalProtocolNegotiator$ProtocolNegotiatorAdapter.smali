.class final Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/InternalProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtocolNegotiatorAdapter"
.end annotation


# instance fields
.field private final negotiator:Lio/grpc/netty/ProtocolNegotiator;


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "negotiator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/ProtocolNegotiator;

    iput-object p1, p0, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;->negotiator:Lio/grpc/netty/ProtocolNegotiator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;->negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator;->close()V

    return-void
.end method

.method public newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;->negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0, p1}, Lio/grpc/netty/ProtocolNegotiator;->newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object p1

    return-object p1
.end method

.method public scheme()Lio/netty/util/AsciiString;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;->negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator;->scheme()Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0
.end method
