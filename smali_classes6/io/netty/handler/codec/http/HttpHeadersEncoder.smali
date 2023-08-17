.class final Lio/netty/handler/codec/http/HttpHeadersEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLON_AND_SPACE_SHORT:I = 0x3a20


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encoderHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    invoke-static {p2, v2, p0}, Lio/netty/handler/codec/http/HttpHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    add-int/2addr v2, v0

    const/16 p0, 0x3a20

    invoke-static {p2, v2, p0}, Lio/netty/buffer/ByteBufUtil;->setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v2, 0x2

    invoke-static {p2, v2, p1}, Lio/netty/handler/codec/http/HttpHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    add-int/2addr v2, v1

    const/16 p0, 0xd0a

    invoke-static {p2, v2, p0}, Lio/netty/buffer/ByteBufUtil;->setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V
    .locals 2

    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    :goto_0
    return-void
.end method
