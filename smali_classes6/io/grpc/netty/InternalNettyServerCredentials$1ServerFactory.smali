.class final Lio/grpc/netty/InternalNettyServerCredentials$1ServerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/InternalNettyServerCredentials;->toNegotiator(Lio/grpc/ServerCredentials;)Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServerFactory"
.end annotation


# instance fields
.field public final synthetic val$result:Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/InternalNettyServerCredentials$1ServerFactory;->val$result:Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;

    iget-object v1, p0, Lio/grpc/netty/InternalNettyServerCredentials$1ServerFactory;->val$result:Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    iget-object v1, v1, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    invoke-interface {v1, p1}, Lio/grpc/netty/ProtocolNegotiator$ServerFactory;->newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiatorAdapter;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v0
.end method

.method public bridge synthetic newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/InternalNettyServerCredentials$1ServerFactory;->newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;

    move-result-object p1

    return-object p1
.end method
