.class final Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/InternalProtocolNegotiators;->plaintext()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaintextNegotiator"
.end annotation


# instance fields
.field public final synthetic val$negotiator:Lio/grpc/netty/ProtocolNegotiator;


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator;->close()V

    return-void
.end method

.method public newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0, p1}, Lio/grpc/netty/ProtocolNegotiator;->newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object p1

    return-object p1
.end method

.method public scheme()Lio/netty/util/AsciiString;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;->val$negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator;->scheme()Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0
.end method
