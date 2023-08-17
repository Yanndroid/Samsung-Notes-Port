.class final Lio/grpc/netty/ProtocolNegotiators$FixedProtocolNegotiatorServerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ServerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedProtocolNegotiatorServerFactory"
.end annotation


# instance fields
.field private final protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "protocolNegotiator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/ProtocolNegotiator;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$FixedProtocolNegotiatorServerFactory;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    return-void
.end method


# virtual methods
.method public newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lio/grpc/netty/ProtocolNegotiator;"
        }
    .end annotation

    iget-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$FixedProtocolNegotiatorServerFactory;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    return-object p1
.end method
