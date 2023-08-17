.class public abstract Lorg/conscrypt/OpenSSLSocketImpl;
.super Lorg/conscrypt/AbstractConscryptSocket;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->close()V

    return-void
.end method

.method public final getAlpnSelectedProtocol()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toProtocolBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannelId()[B
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeepAlive()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPort()I
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getNpnSelectedProtocol()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOOBInline()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReceiveBufferSize()I
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReuseAddress()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSendBufferSize()I
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSoLinger()I
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoWriteTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTcpNoDelay()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrafficClass()I
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isBound()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInputShutdown()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOutputShutdown()Z
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public final setAlpnProtocols([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/conscrypt/EmptyArray;->BYTE:[B

    :cond_0
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public final setAlpnProtocols([Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public abstract setChannelIdEnabled(Z)V
.end method

.method public abstract setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method public setHandshakeTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHandshakeTimeout(I)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setKeepAlive(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setKeepAlive(Z)V

    return-void
.end method

.method public final setNpnProtocols([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setNpnProtocols([B)V

    return-void
.end method

.method public bridge synthetic setPerformancePreferences(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptSocket;->setPerformancePreferences(III)V

    return-void
.end method

.method public bridge synthetic setReceiveBufferSize(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public bridge synthetic setReuseAddress(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public bridge synthetic setSendBufferSize(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSendBufferSize(I)V

    return-void
.end method

.method public bridge synthetic setSoLinger(ZI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSoWriteTimeout(I)V

    return-void
.end method

.method public bridge synthetic setTcpNoDelay(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public bridge synthetic setTrafficClass(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setTrafficClass(I)V

    return-void
.end method

.method public abstract setUseSessionTickets(Z)V
.end method

.method public bridge synthetic shutdownInput()V
    .locals 0

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->shutdownInput()V

    return-void
.end method

.method public bridge synthetic shutdownOutput()V
    .locals 0

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->shutdownOutput()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
