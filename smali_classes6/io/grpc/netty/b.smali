.class public final synthetic Lio/grpc/netty/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lio/grpc/netty/InternalProtocolNegotiator$ClientFactory;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 0

    invoke-interface {p0}, Lio/grpc/netty/InternalProtocolNegotiator$ClientFactory;->newNegotiator()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;

    move-result-object p0

    return-object p0
.end method
