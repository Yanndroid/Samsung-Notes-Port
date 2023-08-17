.class public Lio/grpc/netty/GrpcSslContexts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/GrpcSslContexts$ConscryptHolder;
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1784"
.end annotation


# static fields
.field private static final ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

.field private static final HTTP2_VERSION:Ljava/lang/String; = "h2"

.field private static final IBM_PROVIDER_NAME:Ljava/lang/String; = "IBMJSSE2"

.field private static final NEXT_PROTOCOL_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

.field private static final NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

.field private static final OPENJSSE_PROVIDER_NAME:Ljava/lang/String; = "OpenJSSE"

.field private static final SUN_PROVIDER_NAME:Ljava/lang/String; = "SunJSSE"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lio/grpc/netty/GrpcSslContexts;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/GrpcSslContexts;->logger:Ljava/util/logging/Logger;

    const-string v0, "h2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/GrpcSslContexts;->NEXT_PROTOCOL_VERSIONS:Ljava/util/List;

    new-instance v1, Lio/netty/handler/ssl/ApplicationProtocolConfig;

    sget-object v2, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    sget-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->NO_ADVERTISE:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    sget-object v4, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/Iterable;)V

    sput-object v1, Lio/grpc/netty/GrpcSslContexts;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    new-instance v1, Lio/netty/handler/ssl/ApplicationProtocolConfig;

    sget-object v2, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/Iterable;)V

    sput-object v1, Lio/grpc/netty/GrpcSslContexts;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    new-instance v1, Lio/netty/handler/ssl/ApplicationProtocolConfig;

    sget-object v2, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/Iterable;)V

    sput-object v1, Lio/grpc/netty/GrpcSslContexts;->NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-static {}, Lio/grpc/netty/GrpcSslContexts;->defaultSslProvider()Lio/netty/handler/ssl/SslProvider;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static configure(Lio/netty/handler/ssl/SslContextBuilder;Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1784"
    .end annotation

    sget-object v0, Lio/grpc/netty/GrpcSslContexts$1;->$SwitchMap$io$netty$handler$ssl$SslProvider:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAlpnSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lio/grpc/netty/GrpcSslContexts;->NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/GrpcSslContexts;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    :goto_0
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->sslProvider(Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http2/Http2SecurityUtil;->CIPHERS:Ljava/util/List;

    sget-object v1, Lio/netty/handler/ssl/SupportedCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/SupportedCipherSuiteFilter;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->applicationProtocolConfig(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lio/grpc/netty/GrpcSslContexts;->findJdkProvider()Ljava/security/Provider;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p0, p1}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;Ljava/security/Provider;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not find Jetty NPN/ALPN or Conscrypt as installed JDK providers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static configure(Lio/netty/handler/ssl/SslContextBuilder;Ljava/security/Provider;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SunJSSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyAlpnConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lio/grpc/netty/GrpcSslContexts;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyNpnConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/grpc/netty/GrpcSslContexts;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    goto :goto_2

    :cond_1
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJava9AlpnAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selected, but Java 9+ and Jetty NPN/ALPN unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBMJSSE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenJSSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lio/grpc/internal/ConscryptLoader;->isConscrypt(Ljava/security/Provider;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lio/grpc/netty/GrpcSslContexts;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    const-string v1, "TLSv1.2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->protocols([Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown provider; can\'t configure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJava9AlpnAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :goto_2
    sget-object v1, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    invoke-virtual {p0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->sslProvider(Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    sget-object v1, Lio/netty/handler/codec/http2/Http2SecurityUtil;->CIPHERS:Ljava/util/List;

    sget-object v2, Lio/netty/handler/ssl/SupportedCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/SupportedCipherSuiteFilter;

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->applicationProtocolConfig(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->sslContextProvider(Ljava/security/Provider;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selected, but Java 9+ ALPN unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static defaultSslProvider()Lio/netty/handler/ssl/SslProvider;
    .locals 4

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/grpc/netty/GrpcSslContexts;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Selecting OPENSSL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v0, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    return-object v0

    :cond_0
    invoke-static {}, Lio/grpc/netty/GrpcSslContexts;->findJdkProvider()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lio/grpc/netty/GrpcSslContexts;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Selecting JDK with provider {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    return-object v0

    :cond_1
    sget-object v0, Lio/grpc/netty/GrpcSslContexts;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Java 9 ALPN API unavailable (this may be normal)"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "netty-tcnative unavailable (this may be normal)"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sget-object v2, Lio/grpc/netty/GrpcSslContexts$ConscryptHolder;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    const-string v3, "Conscrypt not found (this may be normal)"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->getJettyAlpnUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Jetty ALPN unavailable (this may be normal)"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find TLS ALPN provider; no working netty-tcnative, Conscrypt, or Jetty NPN/ALPN available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ensureAlpnAndH2Enabled(Lio/netty/handler/ssl/ApplicationProtocolNegotiator;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "ALPN must be configured"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "ALPN must be enabled and list HTTP/2 as a supported protocol."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    const-string v1, "h2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object p0

    const-string v2, "This ALPN config does not support HTTP/2. Expected %s, but got %s\'."

    invoke-static {v0, v2, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static findJdkProvider()Ljava/security/Provider;
    .locals 6

    const-string v0, "SSLContext.TLS"

    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SunJSSE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyAlpnConfigured()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyNpnConfigured()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJava9AlpnAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IBMJSSE2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpenJSSE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lio/grpc/internal/ConscryptLoader;->isConscrypt(Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_3
    :goto_1
    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJava9AlpnAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lio/grpc/netty/GrpcSslContexts$ConscryptHolder;->PROVIDER:Ljava/security/Provider;

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forClient()Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/SslContextBuilder;->forClient()Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0

    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static forServer(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static forServer(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0

    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static forServer(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/GrpcSslContexts;->configure(Lio/netty/handler/ssl/SslContextBuilder;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    return-object p0
.end method
