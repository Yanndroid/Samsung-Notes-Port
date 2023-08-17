.class public final Lio/netty/handler/codec/socks/SocksInitResponse;
.super Lio/netty/handler/codec/socks/SocksResponse;
.source "SourceFile"


# instance fields
.field private final authScheme:Lio/netty/handler/codec/socks/SocksAuthScheme;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/socks/SocksAuthScheme;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksResponseType;->INIT:Lio/netty/handler/codec/socks/SocksResponseType;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksResponse;-><init>(Lio/netty/handler/codec/socks/SocksResponseType;)V

    const-string v0, "authScheme"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/socks/SocksAuthScheme;

    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksInitResponse;->authScheme:Lio/netty/handler/codec/socks/SocksAuthScheme;

    return-void
.end method


# virtual methods
.method public authScheme()Lio/netty/handler/codec/socks/SocksAuthScheme;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksInitResponse;->authScheme:Lio/netty/handler/codec/socks/SocksAuthScheme;

    return-object v0
.end method

.method public encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/socks/SocksMessage;->protocolVersion()Lio/netty/handler/codec/socks/SocksProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksProtocolVersion;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksInitResponse;->authScheme:Lio/netty/handler/codec/socks/SocksAuthScheme;

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksAuthScheme;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method
