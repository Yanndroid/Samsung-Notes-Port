.class public final synthetic Lio/grpc/netty/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 0

    invoke-interface {p0, p1}, Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;->newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;

    move-result-object p0

    return-object p0
.end method
