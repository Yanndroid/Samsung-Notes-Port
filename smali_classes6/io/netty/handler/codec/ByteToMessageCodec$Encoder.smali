.class final Lio/netty/handler/codec/ByteToMessageCodec$Encoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Encoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/ByteToMessageCodec;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/ByteToMessageCodec;Z)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;->this$0:Lio/netty/handler/codec/ByteToMessageCodec;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;->this$0:Lio/netty/handler/codec/ByteToMessageCodec;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/ByteToMessageCodec;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;->this$0:Lio/netty/handler/codec/ByteToMessageCodec;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageCodec;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
