.class public final Lio/netty/handler/proxy/Socks5ProxyHandler;
.super Lio/netty/handler/proxy/ProxyHandler;
.source "SourceFile"


# static fields
.field private static final AUTH_PASSWORD:Ljava/lang/String; = "password"

.field private static final INIT_REQUEST_NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequest;

.field private static final INIT_REQUEST_PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequest;

.field private static final PROTOCOL:Ljava/lang/String; = "socks5"


# instance fields
.field private decoderName:Ljava/lang/String;

.field private encoderName:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lio/netty/handler/proxy/Socks5ProxyHandler;->INIT_REQUEST_NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequest;

    new-instance v0, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;

    const/4 v2, 0x2

    new-array v2, v2, [Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lio/netty/handler/proxy/Socks5ProxyHandler;->INIT_REQUEST_PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequest;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lio/netty/handler/proxy/Socks5ProxyHandler;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;-><init>(Ljava/net/SocketAddress;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, p1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p3, p1

    :cond_1
    iput-object p2, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->username:Ljava/lang/String;

    iput-object p3, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->password:Ljava/lang/String;

    return-void
.end method

.method private sendConnectCommand(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    invoke-virtual {p0}, Lio/netty/handler/proxy/ProxyHandler;->destinationAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5AddressType;->DOMAIN:Lio/netty/handler/codec/socksx/v5/Socks5AddressType;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5AddressType;->IPv4:Lio/netty/handler/codec/socksx/v5/Socks5AddressType;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5AddressType;->IPv6:Lio/netty/handler/codec/socksx/v5/Socks5AddressType;

    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v3, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->decoderName:Ljava/lang/String;

    new-instance v4, Lio/netty/handler/codec/socksx/v5/Socks5CommandResponseDecoder;

    invoke-direct {v4}, Lio/netty/handler/codec/socksx/v5/Socks5CommandResponseDecoder;-><init>()V

    invoke-interface {p1, v3, v3, v4}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    new-instance p1, Lio/netty/handler/codec/socksx/v5/DefaultSocks5CommandRequest;

    sget-object v3, Lio/netty/handler/codec/socksx/v5/Socks5CommandType;->CONNECT:Lio/netty/handler/codec/socksx/v5/Socks5CommandType;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {p1, v3, v1, v2, v0}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5CommandRequest;-><init>(Lio/netty/handler/codec/socksx/v5/Socks5CommandType;Lio/netty/handler/codec/socksx/v5/Socks5AddressType;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->sendToProxyServer(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Lio/netty/handler/proxy/ProxyConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown address type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/proxy/ProxyHandler;->exceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private socksAuthMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addCodec(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponseDecoder;

    invoke-direct {v1}, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponseDecoder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->decoderName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->decoderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->encoderName:Ljava/lang/String;

    sget-object v2, Lio/netty/handler/codec/socksx/v5/Socks5ClientEncoder;->DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5ClientEncoder;

    invoke-interface {v0, p1, v1, v2}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public authScheme()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/proxy/Socks5ProxyHandler;->socksAuthMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    if-ne v0, v1, :cond_0

    const-string v0, "password"

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    return-object v0
.end method

.method public handleResponse(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p2, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponse;

    invoke-direct {p0}, Lio/netty/handler/proxy/Socks5ProxyHandler;->socksAuthMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponse;->authMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    if-eq v2, v3, :cond_1

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponse;->authMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/netty/handler/proxy/ProxyConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected authMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5InitialResponse;->authMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/netty/handler/proxy/ProxyHandler;->exceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/Socks5ProxyHandler;->sendConnectCommand(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_2

    :cond_2
    sget-object p2, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    if-ne v0, p2, :cond_5

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object p2, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->decoderName:Ljava/lang/String;

    new-instance v0, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthResponseDecoder;

    invoke-direct {v0}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthResponseDecoder;-><init>()V

    invoke-interface {p1, p2, p2, v0}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    new-instance p1, Lio/netty/handler/codec/socksx/v5/DefaultSocks5PasswordAuthRequest;

    iget-object p2, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->username:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    iget-object v2, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->password:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, v2

    :cond_4
    invoke-direct {p1, p2, v0}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5PasswordAuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->sendToProxyServer(Ljava/lang/Object;)V

    :goto_2
    return v1

    :cond_5
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_6
    instance-of v0, p2, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthResponse;

    if-eqz v0, :cond_8

    check-cast p2, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthResponse;

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthResponse;->status()Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;->SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    if-ne v0, v2, :cond_7

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/Socks5ProxyHandler;->sendConnectCommand(Lio/netty/channel/ChannelHandlerContext;)V

    return v1

    :cond_7
    new-instance p1, Lio/netty/handler/proxy/ProxyConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthResponse;->status()Lio/netty/handler/codec/socksx/v5/Socks5PasswordAuthStatus;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/netty/handler/proxy/ProxyHandler;->exceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p2, Lio/netty/handler/codec/socksx/v5/Socks5CommandResponse;

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5CommandResponse;->status()Lio/netty/handler/codec/socksx/v5/Socks5CommandStatus;

    move-result-object p1

    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5CommandStatus;->SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5CommandStatus;

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    new-instance p1, Lio/netty/handler/proxy/ProxyConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/netty/handler/codec/socksx/v5/Socks5CommandResponse;->status()Lio/netty/handler/codec/socksx/v5/Socks5CommandStatus;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/netty/handler/proxy/ProxyHandler;->exceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newInitialMessage(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/proxy/Socks5ProxyHandler;->socksAuthMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object p1

    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    if-ne p1, v0, :cond_0

    sget-object p1, Lio/netty/handler/proxy/Socks5ProxyHandler;->INIT_REQUEST_PASSWORD:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequest;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/proxy/Socks5ProxyHandler;->INIT_REQUEST_NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequest;

    :goto_0
    return-object p1
.end method

.method public password()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->password:Ljava/lang/String;

    return-object v0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    const-string v0, "socks5"

    return-object v0
.end method

.method public removeDecoder(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->decoderName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/String;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->decoderName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    :cond_0
    return-void
.end method

.method public removeEncoder(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->encoderName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method public username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/Socks5ProxyHandler;->username:Ljava/lang/String;

    return-object v0
.end method
