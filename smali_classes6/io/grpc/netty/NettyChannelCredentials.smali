.class final Lio/grpc/netty/NettyChannelCredentials;
.super Lio/grpc/ChannelCredentials;
.source "SourceFile"


# instance fields
.field private final negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;


# direct methods
.method private constructor <init>(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    const-string v0, "negotiator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    iput-object p1, p0, Lio/grpc/netty/NettyChannelCredentials;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    return-void
.end method

.method public static create(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)Lio/grpc/ChannelCredentials;
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyChannelCredentials;

    invoke-direct {v0, p0}, Lio/grpc/netty/NettyChannelCredentials;-><init>(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)V

    return-object v0
.end method


# virtual methods
.method public getNegotiator()Lio/grpc/netty/ProtocolNegotiator$ClientFactory;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyChannelCredentials;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    return-object v0
.end method

.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 0

    return-object p0
.end method
