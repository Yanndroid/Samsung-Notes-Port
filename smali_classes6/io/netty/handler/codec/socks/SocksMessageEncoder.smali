.class public Lio/netty/handler/codec/socks/SocksMessageEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/handler/codec/socks/SocksMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/socks/SocksMessage;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-virtual {p2, p3}, Lio/netty/handler/codec/socks/SocksMessage;->encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    check-cast p2, Lio/netty/handler/codec/socks/SocksMessage;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/socks/SocksMessageEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/socks/SocksMessage;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
