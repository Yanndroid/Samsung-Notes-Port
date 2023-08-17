.class public final Lorg/conscrypt/Conscrypt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/Conscrypt$ProviderBuilder;,
        Lorg/conscrypt/Conscrypt$Version;
    }
.end annotation


# static fields
.field private static final VERSION:Lorg/conscrypt/Conscrypt$Version;

.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "-1"

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    const-class v3, Lorg/conscrypt/Conscrypt;

    const-string v4, "conscrypt.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "org.conscrypt.version.major"

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v6, "org.conscrypt.version.minor"

    invoke-virtual {v4, v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v7, "org.conscrypt.version.patch"

    invoke-virtual {v4, v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v5

    goto :goto_0

    :catch_0
    move v6, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :cond_0
    move v0, v2

    move v6, v0

    :goto_0
    invoke-static {v3}, Lorg/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v1}, Lorg/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-object v3, v1

    :catch_2
    move v5, v2

    move v6, v5

    :catch_3
    :goto_2
    invoke-static {v3}, Lorg/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move v0, v2

    move v2, v5

    :goto_3
    if-ltz v2, :cond_1

    if-ltz v6, :cond_1

    if-ltz v0, :cond_1

    new-instance v3, Lorg/conscrypt/Conscrypt$Version;

    invoke-direct {v3, v2, v6, v0, v1}, Lorg/conscrypt/Conscrypt$Version;-><init>(IIILorg/conscrypt/Conscrypt$1;)V

    sput-object v3, Lorg/conscrypt/Conscrypt;->VERSION:Lorg/conscrypt/Conscrypt$Version;

    goto :goto_4

    :cond_1
    sput-object v1, Lorg/conscrypt/Conscrypt;->VERSION:Lorg/conscrypt/Conscrypt$Version;

    :goto_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAvailability()V
    .locals 0

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->checkAvailability()V

    return-void
.end method

.method public static exportKeyingMaterial(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;[BI)[B
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptSocket;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocols(Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationProtocols(Ljavax/net/ssl/SSLSocket;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLEngine;)[B
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getChannelId()[B

    move-result-object p0

    return-object p0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLSocket;)[B
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getChannelId()[B

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDefaultHostnameVerifier(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    const-class p0, Lorg/conscrypt/Conscrypt;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/conscrypt/TrustManagerImpl;->getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostnameOrIP(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHostnameVerifier(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/TrustManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/TrustManagerImpl;->getHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object p0

    return-object p0
.end method

.method public static getTlsUnique(Ljavax/net/ssl/SSLEngine;)[B
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getTlsUnique()[B

    move-result-object p0

    return-object p0
.end method

.method public static getTlsUnique(Ljavax/net/ssl/SSLSocket;)[B
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getTlsUnique()[B

    move-result-object p0

    return-object p0
.end method

.method public static isAvailable()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isConscrypt(Ljava/security/Provider;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/OpenSSLProvider;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLContext;)Z
    .locals 0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object p0

    instance-of p0, p0, Lorg/conscrypt/OpenSSLProvider;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLEngine;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/AbstractConscryptEngine;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/AbstractConscryptSocket;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    return p0
.end method

.method public static isConscrypt(Ljavax/net/ssl/TrustManager;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/TrustManagerImpl;

    return p0
.end method

.method public static maxEncryptedPacketLength()I
    .locals 1

    const/16 v0, 0x4145

    return v0
.end method

.method public static maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptEngine;->maxSealOverhead()I

    move-result p0

    return p0
.end method

.method public static newPreferredSSLContextSpi()Ljavax/net/ssl/SSLContextSpi;
    .locals 1

    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    invoke-static {}, Lorg/conscrypt/OpenSSLContextImpl;->getPreferred()Lorg/conscrypt/OpenSSLContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public static newProvider()Ljava/security/Provider;
    .locals 1

    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lorg/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method

.method public static newProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/conscrypt/Conscrypt;->checkAvailability()V

    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->setName(Ljava/lang/String;)Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 2

    new-instance v0, Lorg/conscrypt/Conscrypt$ProviderBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/Conscrypt$ProviderBuilder;-><init>(Lorg/conscrypt/Conscrypt$1;)V

    return-object v0
.end method

.method public static setApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/ApplicationProtocolSelector;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V

    return-void
.end method

.method public static setApplicationProtocolSelector(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/ApplicationProtocolSelector;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V

    return-void
.end method

.method public static setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public static setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public static setBufferAllocator(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/BufferAllocator;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    return-void
.end method

.method public static setBufferAllocator(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/BufferAllocator;)V
    .locals 1

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    instance-of v0, p0, Lorg/conscrypt/ConscryptEngineSocket;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ConscryptEngineSocket;->setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    :cond_0
    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLEngine;Ljava/security/PrivateKey;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLSocket;Ljava/security/PrivateKey;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public static setClientSessionCache(Ljavax/net/ssl/SSLContext;Lorg/conscrypt/SSLClientSessionCache;)V
    .locals 2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p0

    instance-of v0, p0, Lorg/conscrypt/ClientSessionContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/ClientSessionContext;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ClientSessionContext;->setPersistentCache(Lorg/conscrypt/SSLClientSessionCache;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a conscrypt client context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setDefaultBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/ConscryptEngine;->setDefaultBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    return-void
.end method

.method public static declared-synchronized setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .locals 1

    const-class v0, Lorg/conscrypt/Conscrypt;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/conscrypt/TrustManagerImpl;->setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/HandshakeListener;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setHandshakeListener(Lorg/conscrypt/HandshakeListener;)V

    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public static setHostnameVerifier(Ljavax/net/ssl/TrustManager;Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/TrustManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/TrustManagerImpl;->setHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V

    return-void
.end method

.method public static setServerSessionCache(Ljavax/net/ssl/SSLContext;Lorg/conscrypt/SSLServerSessionCache;)V
    .locals 2

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p0

    instance-of v0, p0, Lorg/conscrypt/ServerSessionContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/ServerSessionContext;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ServerSessionContext;->setPersistentCache(Lorg/conscrypt/SSLServerSessionCache;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a conscrypt client context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLServerSocketFactory;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocket(Z)V

    return-void
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocket(Z)V

    return-void
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    invoke-static {p0}, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setUseSessionTickets(Z)V

    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setUseSessionTickets(Z)V

    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;
    .locals 3

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/AbstractConscryptEngine;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/AbstractConscryptSocket;
    .locals 3

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/AbstractConscryptSocket;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;
    .locals 3

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt server socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lorg/conscrypt/OpenSSLSocketFactoryImpl;
    .locals 3

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toConscrypt(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/TrustManagerImpl;
    .locals 3

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/conscrypt/TrustManagerImpl;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Conscrypt trust manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/AbstractConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/AbstractConscryptEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public static version()Lorg/conscrypt/Conscrypt$Version;
    .locals 1

    sget-object v0, Lorg/conscrypt/Conscrypt;->VERSION:Lorg/conscrypt/Conscrypt$Version;

    return-object v0
.end method

.method public static wrapHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    new-instance v0, Lorg/conscrypt/Conscrypt$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/Conscrypt$1;-><init>(Ljavax/net/ssl/HostnameVerifier;)V

    return-object v0
.end method
