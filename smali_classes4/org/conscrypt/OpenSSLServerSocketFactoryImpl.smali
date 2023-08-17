.class final Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SourceFile"


# static fields
.field private static useEngineSocketByDefault:Z


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lorg/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lorg/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    sput-boolean v0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    sget-boolean v0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    :try_start_0
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefault()Lorg/conscrypt/SSLParametersImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    sget-boolean v0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/SSLParametersImpl;

    iput-object p1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .locals 2

    sput-boolean p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocketByDefault:Z

    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    instance-of v1, v0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    invoke-virtual {v0, p0}, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocket(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2

    new-instance v0, Lorg/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/conscrypt/ConscryptServerSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v0, v1}, Lorg/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lorg/conscrypt/ConscryptServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2

    new-instance v0, Lorg/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p1, v1}, Lorg/conscrypt/ConscryptServerSocket;-><init>(ILorg/conscrypt/SSLParametersImpl;)V

    iget-boolean p1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lorg/conscrypt/ConscryptServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2

    new-instance v0, Lorg/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p1, p2, v1}, Lorg/conscrypt/ConscryptServerSocket;-><init>(IILorg/conscrypt/SSLParametersImpl;)V

    iget-boolean p1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lorg/conscrypt/ConscryptServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2

    new-instance v0, Lorg/conscrypt/ConscryptServerSocket;

    iget-object v1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/conscrypt/ConscryptServerSocket;-><init>(IILjava/net/InetAddress;Lorg/conscrypt/SSLParametersImpl;)V

    iget-boolean p1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptServerSocket;->setUseEngineSocket(Z)Lorg/conscrypt/ConscryptServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUseEngineSocket(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;->useEngineSocket:Z

    return-void
.end method
