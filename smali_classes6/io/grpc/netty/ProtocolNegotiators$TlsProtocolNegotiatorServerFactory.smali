.class final Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorServerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ServerFactory;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TlsProtocolNegotiatorServerFactory"
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

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorServerFactory;->sslContext:Lio/netty/handler/ssl/SslContext;

    return-void
.end method


# virtual methods
.method public newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 1
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

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorServerFactory;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-static {v0, p1}, Lio/grpc/netty/ProtocolNegotiators;->serverTls(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p1

    return-object p1
.end method
