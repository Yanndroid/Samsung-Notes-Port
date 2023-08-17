.class public interface abstract Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ServerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/InternalProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerFactory"
.end annotation


# virtual methods
.method public abstract newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
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
.end method

.method public bridge abstract synthetic newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
.end method
