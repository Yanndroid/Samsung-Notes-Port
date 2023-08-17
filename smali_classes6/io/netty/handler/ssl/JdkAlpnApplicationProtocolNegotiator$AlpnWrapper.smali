.class final Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;
.super Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlpnWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;
    .locals 1

    invoke-static {p1}, Lio/netty/handler/ssl/Conscrypt;->isEngineSupported(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p1, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Lio/netty/handler/ssl/BouncyCastle;->isInUse(Ljavax/net/ssl/SSLEngine;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lio/netty/handler/ssl/BouncyCastleAlpnSslEngine;

    invoke-direct {p2, p1, p3, p4}, Lio/netty/handler/ssl/BouncyCastleAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V

    return-object p2

    :cond_2
    invoke-static {}, Lio/netty/handler/ssl/JdkAlpnSslUtils;->supportsAlpn()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lio/netty/handler/ssl/JdkAlpnSslEngine;

    invoke-direct {p2, p1, p3, p4}, Lio/netty/handler/ssl/JdkAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V

    return-object p2

    :cond_3
    invoke-static {}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p4, :cond_4

    invoke-static {p1, p3}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/JettyAlpnSslEngine;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {p1, p3}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/JettyAlpnSslEngine;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ALPN not supported. Unable to wrap SSLEngine of type \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
