.class interface abstract Lio/grpc/netty/ProtocolNegotiator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/ProtocolNegotiator$ServerFactory;,
        Lio/grpc/netty/ProtocolNegotiator$ClientFactory;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
.end method

.method public abstract scheme()Lio/netty/util/AsciiString;
.end method
