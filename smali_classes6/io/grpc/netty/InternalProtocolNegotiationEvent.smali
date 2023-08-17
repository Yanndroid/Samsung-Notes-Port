.class public final Lio/grpc/netty/InternalProtocolNegotiationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttributes(Lio/grpc/netty/ProtocolNegotiationEvent;)Lio/grpc/Attributes;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/netty/ProtocolNegotiationEvent;->getAttributes()Lio/grpc/Attributes;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lio/grpc/netty/ProtocolNegotiationEvent;
    .locals 1

    sget-object v0, Lio/grpc/netty/ProtocolNegotiationEvent;->DEFAULT:Lio/grpc/netty/ProtocolNegotiationEvent;

    return-object v0
.end method

.method public static getSecurity(Lio/grpc/netty/ProtocolNegotiationEvent;)Lio/grpc/InternalChannelz$Security;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/ProtocolNegotiationEvent;->getSecurity()Lio/grpc/InternalChannelz$Security;

    move-result-object p0

    return-object p0
.end method

.method public static withAttributes(Lio/grpc/netty/ProtocolNegotiationEvent;Lio/grpc/Attributes;)Lio/grpc/netty/ProtocolNegotiationEvent;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiationEvent;->withAttributes(Lio/grpc/Attributes;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p0

    return-object p0
.end method

.method public static withSecurity(Lio/grpc/netty/ProtocolNegotiationEvent;Lio/grpc/InternalChannelz$Security;)Lio/grpc/netty/ProtocolNegotiationEvent;
    .locals 0
    .param p1    # Lio/grpc/InternalChannelz$Security;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiationEvent;->withSecurity(Lio/grpc/InternalChannelz$Security;)Lio/grpc/netty/ProtocolNegotiationEvent;

    move-result-object p0

    return-object p0
.end method
