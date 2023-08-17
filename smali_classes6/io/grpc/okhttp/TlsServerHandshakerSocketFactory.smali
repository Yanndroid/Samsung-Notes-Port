.class final Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/okhttp/HandshakerSocketFactory;


# instance fields
.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private final delegate:Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    invoke-direct {v0}, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->delegate:Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    invoke-virtual {p1}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->getFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->getConnectionSpec()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-void
.end method


# virtual methods
.method public handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    .locals 7

    iget-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->delegate:Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    invoke-virtual {v0, p1, p2}, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;->handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    instance-of v0, p2, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    iget-object v4, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-virtual {v4, v0, v2}, Lio/grpc/okhttp/internal/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_2:Lio/grpc/okhttp/internal/Protocol;

    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->get()Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-virtual {v6}, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v6

    if-eqz v6, :cond_0

    new-array v3, v3, [Lio/grpc/okhttp/internal/Protocol;

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v5, v0, v1, v2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->attributes:Lio/grpc/Attributes;

    invoke-virtual {p1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object p1

    sget-object v1, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v2, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    invoke-virtual {p1, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p1

    sget-object v1, Lio/grpc/Grpc;->TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p1

    new-instance v1, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    new-instance v2, Lio/grpc/InternalChannelz$Security;

    new-instance v3, Lio/grpc/InternalChannelz$Tls;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-direct {v3, v0}, Lio/grpc/InternalChannelz$Tls;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v2, v3}, Lio/grpc/InternalChannelz$Security;-><init>(Lio/grpc/InternalChannelz$Tls;)V

    invoke-direct {v1, p2, p1, v2}, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;-><init>(Ljava/net/Socket;Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected NPN/ALPN "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketFactory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not produce an SSLSocket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
