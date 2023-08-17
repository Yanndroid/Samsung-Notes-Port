.class final Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/InternalProtocolNegotiator$ClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/InternalNettyChannelCredentials;->toNegotiator(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/InternalProtocolNegotiator$ClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClientFactory"
.end annotation


# instance fields
.field public final synthetic val$result:Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;->val$result:Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;->val$result:Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    iget-object v0, v0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator$ClientFactory;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public newNegotiator()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
    .locals 2

    new-instance v0, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;

    iget-object v1, p0, Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;->val$result:Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    iget-object v1, v1, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    invoke-interface {v1}, Lio/grpc/netty/ProtocolNegotiator$ClientFactory;->newNegotiator()Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v0
.end method

.method public bridge synthetic newNegotiator()Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;->newNegotiator()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method
