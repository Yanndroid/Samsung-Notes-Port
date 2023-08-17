.class public Lio/netty/channel/unix/Socket;
.super Lio/netty/channel/unix/FileDescriptor;
.source "SourceFile"


# static fields
.field public static final UDS_SUN_PATH_SIZE:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile isIpv6Preferred:Z


# instance fields
.field public final ipv6:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    invoke-static {p1}, Lio/netty/channel/unix/Socket;->isIPv6(I)Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    return-void
.end method

.method private static native accept(I[B)I
.end method

.method private static native bind(IZ[BII)I
.end method

.method private static native bindDomainSocket(I[B)I
.end method

.method private static native connect(IZ[BII)I
.end method

.method private static native connectDomainSocket(I[B)I
.end method

.method private static native disconnect(IZ)I
.end method

.method private static native finishConnect(I)I
.end method

.method private static native getIntOpt(III)I
.end method

.method private static native getRawOptAddress(IIIJI)V
.end method

.method private static native getRawOptArray(III[BII)V
.end method

.method private static native getReceiveBufferSize(I)I
.end method

.method private static native getSendBufferSize(I)I
.end method

.method private static native getSoError(I)I
.end method

.method private static native getSoLinger(I)I
.end method

.method private static native getTrafficClass(IZ)I
.end method

.method public static initialize()V
    .locals 1

    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isIPv6Preferred0(Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/unix/Socket;->isIpv6Preferred:Z

    return-void
.end method

.method private static native isBroadcast(I)I
.end method

.method private static native isIPv6(I)Z
.end method

.method public static isIPv6Preferred()Z
    .locals 1

    sget-boolean v0, Lio/netty/channel/unix/Socket;->isIpv6Preferred:Z

    return v0
.end method

.method private static native isIPv6Preferred0(Z)Z
.end method

.method private static native isKeepAlive(I)I
.end method

.method private static native isReuseAddress(I)I
.end method

.method private static native isReusePort(I)I
.end method

.method private static native isTcpNoDelay(I)I
.end method

.method private static native listen(II)I
.end method

.method private static native localAddress(I)[B
.end method

.method private static native msgFastopen()I
.end method

.method public static newSocketDgram()Lio/netty/channel/unix/Socket;
    .locals 2

    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDgram0()I
    .locals 1

    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketDgram0(Z)I

    move-result v0

    return v0
.end method

.method public static newSocketDgram0(Lio/netty/channel/socket/InternetProtocolFamily;)I
    .locals 0

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->shouldUseIpv6(Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result p0

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketDgram0(Z)I

    move-result p0

    return p0
.end method

.method public static newSocketDgram0(Z)I
    .locals 2

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketDgramFd(Z)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Lio/netty/channel/ChannelException;

    const-string v1, "newSocketDgram"

    invoke-static {v1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native newSocketDgramFd(Z)I
.end method

.method public static newSocketDomain()Lio/netty/channel/unix/Socket;
    .locals 2

    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomain0()I
    .locals 3

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDomain"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newSocketDomainDgram()Lio/netty/channel/unix/Socket;
    .locals 2

    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomainDgram0()I
    .locals 3

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainDgramFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDomainDgram"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketDomainDgramFd()I
.end method

.method private static native newSocketDomainFd()I
.end method

.method public static newSocketStream()Lio/netty/channel/unix/Socket;
    .locals 2

    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream0()I
    .locals 1

    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketStream0(Z)I

    move-result v0

    return v0
.end method

.method public static newSocketStream0(Lio/netty/channel/socket/InternetProtocolFamily;)I
    .locals 0

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->shouldUseIpv6(Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result p0

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketStream0(Z)I

    move-result p0

    return p0
.end method

.method public static newSocketStream0(Z)I
    .locals 2

    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketStreamFd(Z)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Lio/netty/channel/ChannelException;

    const-string v1, "newSocketStream"

    invoke-static {v1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native newSocketStreamFd(Z)I
.end method

.method private static native recvFd(I)I
.end method

.method private static native recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
.end method

.method private static native recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;
.end method

.method private static native recvFromAddressDomainSocket(IJII)Lio/netty/channel/unix/DomainDatagramSocketAddress;
.end method

.method private static native recvFromDomainSocket(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;
.end method

.method private static native remoteAddress(I)[B
.end method

.method private static native sendFd(II)I
.end method

.method private static native sendTo(IZLjava/nio/ByteBuffer;II[BIII)I
.end method

.method private static native sendToAddress(IZJII[BIII)I
.end method

.method private static native sendToAddressDomainSocket(IJII[B)I
.end method

.method private static native sendToAddresses(IZJI[BIII)I
.end method

.method private static native sendToAddressesDomainSocket(IJI[B)I
.end method

.method private static native sendToDomainSocket(ILjava/nio/ByteBuffer;II[B)I
.end method

.method private static native setBroadcast(II)V
.end method

.method private static native setIntOpt(IIII)V
.end method

.method private static native setKeepAlive(II)V
.end method

.method private static native setRawOptAddress(IIIJI)V
.end method

.method private static native setRawOptArray(III[BII)V
.end method

.method private static native setReceiveBufferSize(II)V
.end method

.method private static native setReuseAddress(II)V
.end method

.method private static native setReusePort(II)V
.end method

.method private static native setSendBufferSize(II)V
.end method

.method private static native setSoLinger(II)V
.end method

.method private static native setTcpNoDelay(II)V
.end method

.method private static native setTrafficClass(IZI)V
.end method

.method public static shouldUseIpv6(Lio/netty/channel/socket/InternetProtocolFamily;)Z
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native shutdown(IZZ)I
.end method

.method public static useIpv6(Lio/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/Inet6Address;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private useIpv6(Ljava/net/InetAddress;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/netty/channel/unix/Socket;->useIpv6(Lio/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final accept([B)I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->accept(I[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "accept"

    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 5

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const-string v1, "bind"

    if-eqz v0, :cond_1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v2

    iget v3, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-direct {p0, v0}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v0

    iget-object v4, v2, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v2, v2, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v3, v0, v4, v2, p1}, Lio/netty/channel/unix/Socket;->bind(IZ[BII)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    check-cast p1, Lio/netty/channel/unix/DomainSocketAddress;

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {p1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->bindDomainSocket(I[B)I

    move-result p1

    if-ltz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {v1, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Z
    .locals 4

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-direct {p0, v0}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v0

    iget-object v3, v1, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v1, v1, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v2, v0, v3, v1, p1}, Lio/netty/channel/unix/Socket;->connect(IZ[BII)I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_2

    check-cast p1, Lio/netty/channel/unix/DomainSocketAddress;

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {p1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->connectDomainSocket(I[B)I

    move-result p1

    :goto_0
    if-gez p1, :cond_1

    const-string v0, "connect"

    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disconnect()V
    .locals 2

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/unix/Socket;->disconnect(IZ)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "disconnect"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final finishConnect()Z
    .locals 2

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->finishConnect(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "finishConnect"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIntOpt(II)I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2}, Lio/netty/channel/unix/Socket;->getIntOpt(III)I

    move-result p1

    return p1
.end method

.method public getRawOpt(IILjava/nio/ByteBuffer;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v3, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static/range {p3 .. p3}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v6, v4

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lio/netty/channel/unix/Socket;->getRawOptAddress(IIIJI)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v3, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v7, v2, v4

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lio/netty/channel/unix/Socket;->getRawOptArray(III[BII)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v2, v14, [B

    iget v9, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    const/4 v13, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v2

    invoke-static/range {v9 .. v14}, Lio/netty/channel/unix/Socket;->getRawOptArray(III[BII)V

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getReceiveBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSendBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSoError()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoError(I)I

    move-result v0

    return v0
.end method

.method public final getSoLinger()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoLinger(I)I

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 2

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/unix/Socket;->getTrafficClass(IZ)I

    move-result v0

    return v0
.end method

.method public final isBroadcast()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isBroadcast(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isInputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isKeepAlive()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isKeepAlive(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isOutputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isReuseAddress()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReuseAddress(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReusePort()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReusePort(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShutdown()Z
    .locals 2

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isInputShutdown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isOutputShutdown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTcpNoDelay()Z
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isTcpNoDelay(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final listen(I)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->listen(II)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "listen"

    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1
.end method

.method public final localAddress()Ljava/net/InetSocketAddress;
    .locals 3

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->localAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final recvFd()I
    .locals 2

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->recvFd(I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq v0, v1, :cond_3

    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "recvFd"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final recvFromAddressDomainSocket(JII)Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvFromAddressDomainSocket(IJII)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final recvFromDomainSocket(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recvFromDomainSocket(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final remoteAddress()Ljava/net/InetSocketAddress;
    .locals 3

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->remoteAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final sendFd(I)I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->sendFd(II)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sendFd"

    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;I)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/netty/channel/unix/Socket;->sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I

    move-result p1

    return p1
.end method

.method public final sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    move-object v4, v1

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    move-object v9, v2

    move v10, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    move-object v9, v2

    move v10, v3

    :goto_0
    if-eqz p6, :cond_1

    invoke-static {}, Lio/netty/channel/unix/Socket;->msgFastopen()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    iget v4, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v11, p5

    invoke-static/range {v4 .. v12}, Lio/netty/channel/unix/Socket;->sendTo(IZLjava/nio/ByteBuffer;II[BIII)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    :cond_2
    sget v2, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v1, v2, :cond_3

    if-eqz p6, :cond_3

    return v3

    :cond_3
    sget v2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v1, v2, :cond_4

    const-string v2, "sendTo"

    invoke-static {v2, v1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_4
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendTo failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final sendToAddress(JIILjava/net/InetAddress;I)I
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/netty/channel/unix/Socket;->sendToAddress(JIILjava/net/InetAddress;IZ)I

    move-result p1

    return p1
.end method

.method public final sendToAddress(JIILjava/net/InetAddress;IZ)I
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    move-object v4, v1

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    move-object v10, v2

    move v11, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    move-object v10, v2

    move v11, v3

    :goto_0
    if-eqz p7, :cond_1

    invoke-static {}, Lio/netty/channel/unix/Socket;->msgFastopen()I

    move-result v2

    move v13, v2

    goto :goto_1

    :cond_1
    move v13, v3

    :goto_1
    iget v4, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    move-wide v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v12, p6

    invoke-static/range {v4 .. v13}, Lio/netty/channel/unix/Socket;->sendToAddress(IZJII[BIII)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    :cond_2
    sget v2, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v1, v2, :cond_3

    if-eqz p7, :cond_3

    return v3

    :cond_3
    sget v2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v1, v2, :cond_4

    const-string v2, "sendToAddress"

    invoke-static {v2, v1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_4
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendToAddress failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final sendToAddressDomainSocket(JII[B)I
    .locals 6

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/netty/channel/unix/Socket;->sendToAddressDomainSocket(IJII[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const-string p2, "sendToAddressDomainSocket"

    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final sendToAddresses(JILjava/net/InetAddress;I)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/netty/channel/unix/Socket;->sendToAddresses(JILjava/net/InetAddress;IZ)I

    move-result p1

    return p1
.end method

.method public final sendToAddresses(JILjava/net/InetAddress;IZ)I
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    move-object v4, v1

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v4

    move-object v9, v2

    move v10, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    move-object v9, v2

    move v10, v3

    :goto_0
    if-eqz p6, :cond_1

    invoke-static {}, Lio/netty/channel/unix/Socket;->msgFastopen()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    iget v4, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    move-wide v6, p1

    move/from16 v8, p3

    move/from16 v11, p5

    invoke-static/range {v4 .. v12}, Lio/netty/channel/unix/Socket;->sendToAddresses(IZJI[BIII)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    :cond_2
    sget v2, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v1, v2, :cond_3

    if-eqz p6, :cond_3

    return v3

    :cond_3
    sget v2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v1, v2, :cond_4

    const-string v2, "sendToAddresses"

    invoke-static {v2, v1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_4
    new-instance v1, Ljava/net/PortUnreachableException;

    const-string v2, "sendToAddresses failed"

    invoke-direct {v1, v2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final sendToAddressesDomainSocket(JI[B)I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->sendToAddressesDomainSocket(IJI[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const-string p2, "sendToAddressesDomainSocket"

    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final sendToDomainSocket(Ljava/nio/ByteBuffer;II[B)I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->sendToDomainSocket(ILjava/nio/ByteBuffer;II[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const-string p2, "sendToDomainSocket"

    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final setBroadcast(Z)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setBroadcast(II)V

    return-void
.end method

.method public setIntOpt(III)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->setIntOpt(IIII)V

    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setKeepAlive(II)V

    return-void
.end method

.method public setRawOpt(IILjava/nio/ByteBuffer;)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v3, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static/range {p3 .. p3}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v6, v4

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lio/netty/channel/unix/Socket;->setRawOptAddress(IIIJI)V

    :goto_0
    move-object/from16 v2, p3

    goto :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v3, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v7, v2, v4

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lio/netty/channel/unix/Socket;->setRawOptArray(III[BII)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v12, v14, [B

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v9, v0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    const/4 v13, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v9 .. v14}, Lio/netty/channel/unix/Socket;->setRawOptArray(III[BII)V

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReceiveBufferSize(II)V

    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReuseAddress(II)V

    return-void
.end method

.method public final setReusePort(Z)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReusePort(II)V

    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSendBufferSize(II)V

    return-void
.end method

.method public final setSoLinger(I)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSoLinger(II)V

    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setTcpNoDelay(II)V

    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 2

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1, p1}, Lio/netty/channel/unix/Socket;->setTrafficClass(IZI)V

    return-void
.end method

.method public final shutdown()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lio/netty/channel/unix/Socket;->shutdown(ZZ)V

    return-void
.end method

.method public final shutdown(ZZ)V
    .locals 3

    :cond_0
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isClosed(I)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_1

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isInputShutdown(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->inputShutdown(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {v1}, Lio/netty/channel/unix/FileDescriptor;->isOutputShutdown(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lio/netty/channel/unix/FileDescriptor;->outputShutdown(I)I

    move-result v1

    :cond_2
    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/unix/FileDescriptor;->casState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2}, Lio/netty/channel/unix/Socket;->shutdown(IZZ)I

    move-result p1

    if-gez p1, :cond_4

    const-string p2, "shutdown"

    invoke-static {p2, p1}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
