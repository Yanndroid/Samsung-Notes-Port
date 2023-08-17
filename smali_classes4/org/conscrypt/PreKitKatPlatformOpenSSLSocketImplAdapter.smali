.class public Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.source "SourceFile"


# instance fields
.field private final delegate:Lorg/conscrypt/AbstractConscryptSocket;


# direct methods
.method public constructor <init>(Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    iput-object p1, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Shouldn\'t be here!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->close()V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->connect(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoWriteTimeout()I

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t be here!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public sendUrgentData(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->sendUrgentData(I)V

    return-void
.end method

.method public setAlpnProtocols([B)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setAlpnProtocols([B)V

    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHandshakeTimeout(I)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setKeepAlive(Z)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setNpnProtocols([B)V

    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setOOBInline(Z)V

    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptSocket;->setPerformancePreferences(III)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSendBufferSize(I)V

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSoTimeout(I)V

    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSoWriteTimeout(I)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setTrafficClass(I)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setUseSessionTickets(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    return-void
.end method

.method public shutdownInput()V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->shutdownInput()V

    return-void
.end method

.method public shutdownOutput()V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->shutdownOutput()V

    return-void
.end method

.method public startHandshake()V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/PreKitKatPlatformOpenSSLSocketImplAdapter;->delegate:Lorg/conscrypt/AbstractConscryptSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Shouldn\'t be here!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
