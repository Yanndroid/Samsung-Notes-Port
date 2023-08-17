.class final Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaintextUpgradeProtocolNegotiator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;

    invoke-virtual {p1}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;-><init>(Ljava/lang/String;Lio/grpc/netty/GrpcHttp2ConnectionHandler;)V

    new-instance v1, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;

    invoke-virtual {p1}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getNegotiationLogger()Lio/grpc/ChannelLogger;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-object v1
.end method

.method public scheme()Lio/netty/util/AsciiString;
    .locals 1

    sget-object v0, Lio/grpc/netty/Utils;->HTTP:Lio/netty/util/AsciiString;

    return-object v0
.end method
