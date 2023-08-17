.class final Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ClientFactory;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TlsProtocolNegotiatorClientFactory"
.end annotation


# instance fields
.field private final sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sslContext"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/SslContext;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorClientFactory;->sslContext:Lio/netty/handler/ssl/SslContext;

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

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorClientFactory;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-static {v0}, Lio/grpc/netty/ProtocolNegotiators;->tls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method
