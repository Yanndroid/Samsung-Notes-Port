.class final Lio/grpc/netty/NettyServerCredentials;
.super Lio/grpc/ServerCredentials;
.source "SourceFile"


# instance fields
.field private final negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;


# direct methods
.method private constructor <init>(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/ServerCredentials;-><init>()V

    const-string v0, "negotiator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    iput-object p1, p0, Lio/grpc/netty/NettyServerCredentials;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    return-void
.end method

.method public static create(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/ServerCredentials;
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyServerCredentials;

    invoke-direct {v0, p0}, Lio/grpc/netty/NettyServerCredentials;-><init>(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)V

    return-object v0
.end method


# virtual methods
.method public getNegotiator()Lio/grpc/netty/ProtocolNegotiator$ServerFactory;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerCredentials;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    return-object v0
.end method
