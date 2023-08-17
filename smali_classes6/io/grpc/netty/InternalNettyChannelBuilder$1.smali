.class Lio/grpc/netty/InternalNettyChannelBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/InternalNettyChannelBuilder;->setProtocolNegotiatorFactory(Lio/grpc/netty/NettyChannelBuilder;Lio/grpc/netty/InternalNettyChannelBuilder$ProtocolNegotiatorFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$protocolNegotiator:Lio/grpc/netty/InternalNettyChannelBuilder$ProtocolNegotiatorFactory;


# direct methods
.method public constructor <init>(Lio/grpc/netty/InternalNettyChannelBuilder$ProtocolNegotiatorFactory;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/InternalNettyChannelBuilder$1;->val$protocolNegotiator:Lio/grpc/netty/InternalNettyChannelBuilder$ProtocolNegotiatorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method

.method public newNegotiator()Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalNettyChannelBuilder$1;->val$protocolNegotiator:Lio/grpc/netty/InternalNettyChannelBuilder$ProtocolNegotiatorFactory;

    invoke-interface {v0}, Lio/grpc/netty/InternalNettyChannelBuilder$ProtocolNegotiatorFactory;->buildProtocolNegotiator()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method
