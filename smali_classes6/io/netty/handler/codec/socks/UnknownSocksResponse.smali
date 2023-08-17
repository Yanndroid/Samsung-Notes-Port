.class public final Lio/netty/handler/codec/socks/UnknownSocksResponse;
.super Lio/netty/handler/codec/socks/SocksResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksResponseType;->UNKNOWN:Lio/netty/handler/codec/socks/SocksResponseType;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksResponse;-><init>(Lio/netty/handler/codec/socks/SocksResponseType;)V

    return-void
.end method


# virtual methods
.method public encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    return-void
.end method
