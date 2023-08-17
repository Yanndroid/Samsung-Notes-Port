.class final Lio/grpc/netty/ProtocolNegotiators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;,
        Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;,
        Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiator;,
        Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;,
        Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiatorClientFactory;,
        Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;,
        Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiator;,
        Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiatorClientFactory;,
        Lio/grpc/netty/ProtocolNegotiators$HostPort;,
        Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorClientFactory;,
        Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;,
        Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;,
        Lio/grpc/netty/ProtocolNegotiators$ProxyProtocolNegotiationHandler;,
        Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;,
        Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorServerFactory;,
        Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiatorServerFactory;,
        Lio/grpc/netty/ProtocolNegotiators$FixedProtocolNegotiatorServerFactory;,
        Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;,
        Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;

.field private static final understoodServerTlsFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private static final understoodTlsFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/grpc/netty/ProtocolNegotiators;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/ProtocolNegotiators;->log:Ljava/util/logging/Logger;

    sget-object v0, Lio/grpc/TlsChannelCredentials$Feature;->MTLS:Lio/grpc/TlsChannelCredentials$Feature;

    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsChannelCredentials$Feature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/ProtocolNegotiators;->understoodTlsFeatures:Ljava/util/EnumSet;

    sget-object v0, Lio/grpc/TlsServerCredentials$Feature;->MTLS:Lio/grpc/TlsServerCredentials$Feature;

    sget-object v1, Lio/grpc/TlsServerCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsServerCredentials$Feature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/ProtocolNegotiators;->understoodServerTlsFeatures:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->unavailableException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static fixedServerFactory(Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$FixedProtocolNegotiatorServerFactory;

    invoke-direct {v0, p0}, Lio/grpc/netty/ProtocolNegotiators$FixedProtocolNegotiatorServerFactory;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v0
.end method

.method public static from(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;
    .locals 4

    instance-of v0, p0, Lio/grpc/TlsChannelCredentials;

    if-eqz v0, :cond_5

    check-cast p0, Lio/grpc/TlsChannelCredentials;

    sget-object v0, Lio/grpc/netty/ProtocolNegotiators;->understoodTlsFeatures:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Lio/grpc/TlsChannelCredentials;->incomprehensible(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS features not understood: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lio/grpc/netty/GrpcSslContexts;->forClient()Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lio/grpc/netty/FixedKeyManagerFactory;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/netty/FixedKeyManagerFactory;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getPrivateKey()[B

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getCertificateChain()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getPrivateKey()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getPrivateKeyPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lio/grpc/netty/FixedTrustManagerFactory;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/grpc/netty/FixedTrustManagerFactory;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getRootCertificates()[B

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->getRootCertificates()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;

    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->tlsClientFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lio/grpc/netty/ProtocolNegotiators;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exception building SslContext"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create SslContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lio/grpc/InsecureChannelCredentials;

    if-eqz v0, :cond_6

    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->plaintextClientFactory()Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Lio/grpc/CompositeChannelCredentials;

    if-eqz v0, :cond_7

    check-cast p0, Lio/grpc/CompositeChannelCredentials;

    invoke-virtual {p0}, Lio/grpc/CompositeChannelCredentials;->getChannelCredentials()Lio/grpc/ChannelCredentials;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/CompositeChannelCredentials;->getCallCredentials()Lio/grpc/CallCredentials;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Lio/grpc/netty/NettyChannelCredentials;

    if-eqz v0, :cond_8

    check-cast p0, Lio/grpc/netty/NettyChannelCredentials;

    invoke-virtual {p0}, Lio/grpc/netty/NettyChannelCredentials;->getNegotiator()Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lio/grpc/ChoiceChannelCredentials;

    if-eqz v0, :cond_b

    check-cast p0, Lio/grpc/ChoiceChannelCredentials;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/grpc/ChoiceChannelCredentials;->getCredentialsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ChannelCredentials;

    invoke-static {v1}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object v1

    iget-object v2, v1, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    if-nez v2, :cond_9

    return-object v1

    :cond_9
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported credential type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lio/grpc/ServerCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;
    .locals 4

    instance-of v0, p0, Lio/grpc/TlsServerCredentials;

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    check-cast p0, Lio/grpc/TlsServerCredentials;

    sget-object v0, Lio/grpc/netty/ProtocolNegotiators;->understoodServerTlsFeatures:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Lio/grpc/TlsServerCredentials;->incomprehensible(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS features not understood: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/grpc/netty/FixedKeyManagerFactory;

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/grpc/netty/FixedKeyManagerFactory;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getPrivateKey()[B

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getCertificateChain()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getPrivateKey()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getPrivateKeyPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lio/grpc/netty/GrpcSslContexts;->forServer(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lio/grpc/netty/FixedTrustManagerFactory;

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/netty/FixedTrustManagerFactory;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getRootCertificates()[B

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getRootCertificates()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;

    :cond_3
    :goto_1
    sget-object v2, Lio/grpc/netty/ProtocolNegotiators$2;->$SwitchMap$io$grpc$TlsServerCredentials$ClientAuth:[I

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getClientAuth()Lio/grpc/TlsServerCredentials$ClientAuth;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-eq v2, v1, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TlsServerCredentials.ClientAuth value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/TlsServerCredentials;->getClientAuth()Lio/grpc/TlsServerCredentials$ClientAuth;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_2

    :cond_5
    sget-object p0, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_2

    :cond_6
    sget-object p0, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    :goto_2
    invoke-virtual {v0, p0}, Lio/netty/handler/ssl/SslContextBuilder;->clientAuth(Lio/netty/handler/ssl/ClientAuth;)Lio/netty/handler/ssl/SslContextBuilder;

    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object p0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->serverTlsFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected error converting ServerCredentials to Netty SslContext"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "BUG! No key"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_8
    instance-of v0, p0, Lio/grpc/InsecureServerCredentials;

    if-eqz v0, :cond_9

    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->serverPlaintextFactory()Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p0, Lio/grpc/netty/NettyServerCredentials;

    if-eqz v0, :cond_a

    check-cast p0, Lio/grpc/netty/NettyServerCredentials;

    invoke-virtual {p0}, Lio/grpc/netty/NettyServerCredentials;->getNegotiator()Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p0, Lio/grpc/ChoiceServerCredentials;

    if-eqz v0, :cond_d

    check-cast p0, Lio/grpc/ChoiceServerCredentials;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/grpc/ChoiceServerCredentials;->getCredentialsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerCredentials;

    invoke-static {v2}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ServerCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object v2

    iget-object v3, v2, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    if-nez v3, :cond_b

    return-object v2

    :cond_b
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported credential type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    return-object p0
.end method

.method public static httpProxy(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "negotiator"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "proxyAddress"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Lio/grpc/netty/ProtocolNegotiator;->scheme()Lio/netty/util/AsciiString;

    move-result-object v6

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/ProtocolNegotiators$1ProxyNegotiator;-><init>(Lio/grpc/netty/ProtocolNegotiator;Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/netty/util/AsciiString;)V

    return-object v0
.end method

.method public static logSslEngineDetails(Ljava/util/logging/Level;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Lio/grpc/netty/ProtocolNegotiators;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-class v1, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/SslHandler;

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\nSSLEngine Details: [\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p2, v1, Lio/netty/handler/ssl/OpenSslEngine;

    if-eqz p2, :cond_1

    const-string p2, "    OpenSSL, "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Version: 0x"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->versionString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ALPN supported: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    invoke-static {p2}, Lio/netty/handler/ssl/SslProvider;->isAlpnSupported(Lio/netty/handler/ssl/SslProvider;)Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyAlpnConfigured()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "    Jetty ALPN"

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyNpnConfigured()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "    Jetty NPN"

    goto :goto_0

    :cond_3
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJava9AlpnAvailable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "    JDK9 ALPN"

    goto :goto_0

    :cond_4
    :goto_1
    const-string p2, "\n    TLS Protocol: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    Application Protocol: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslHandler;->applicationProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Need Client Auth: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n    Want Client Auth: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n    Supported protocols="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Enabled protocols="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Supported ciphers="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Enabled ciphers="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static parseAuthority(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$HostPort;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "authority"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Lio/grpc/netty/ProtocolNegotiators$HostPort;

    invoke-direct {v1, p0, v0}, Lio/grpc/netty/ProtocolNegotiators$HostPort;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static plaintext()Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiator;

    invoke-direct {v0}, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiator;-><init>()V

    return-object v0
.end method

.method public static plaintextClientFactory()Lio/grpc/netty/ProtocolNegotiator$ClientFactory;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiatorClientFactory;

    invoke-direct {v0}, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiatorClientFactory;-><init>()V

    return-object v0
.end method

.method public static plaintextUpgrade()Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiator;

    invoke-direct {v0}, Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiator;-><init>()V

    return-object v0
.end method

.method public static plaintextUpgradeClientFactory()Lio/grpc/netty/ProtocolNegotiator$ClientFactory;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiatorClientFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiatorClientFactory;-><init>(Lio/grpc/netty/ProtocolNegotiators$1;)V

    return-object v0
.end method

.method public static serverPlaintext()Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiator;

    invoke-direct {v0}, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiator;-><init>()V

    return-object v0
.end method

.method public static serverPlaintextFactory()Lio/grpc/netty/ProtocolNegotiator$ServerFactory;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiatorServerFactory;

    invoke-direct {v0}, Lio/grpc/netty/ProtocolNegotiators$PlaintextProtocolNegotiatorServerFactory;-><init>()V

    return-object v0
.end method

.method public static serverTls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/grpc/netty/ProtocolNegotiators;->serverTls(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p0

    return-object p0
.end method

.method public static serverTls(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslContext;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lio/grpc/netty/ProtocolNegotiator;"
        }
    .end annotation

    const-string v0, "sslContext"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lio/grpc/netty/ProtocolNegotiators$1;

    invoke-direct {v1, p0, p1, v0}, Lio/grpc/netty/ProtocolNegotiators$1;-><init>(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public static serverTlsFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorServerFactory;

    invoke-direct {v0, p0}, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorServerFactory;-><init>(Lio/netty/handler/ssl/SslContext;)V

    return-object v0
.end method

.method public static tls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/grpc/netty/ProtocolNegotiators;->tls(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p0

    return-object p0
.end method

.method public static tls(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslContext;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lio/grpc/netty/ProtocolNegotiator;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;-><init>(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)V

    return-object v0
.end method

.method public static tlsClientFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ClientFactory;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorClientFactory;

    invoke-direct {v0, p0}, Lio/grpc/netty/ProtocolNegotiators$TlsProtocolNegotiatorClientFactory;-><init>(Lio/netty/handler/ssl/SslContext;)V

    return-object v0
.end method

.method private static unavailableException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    return-object p0
.end method
