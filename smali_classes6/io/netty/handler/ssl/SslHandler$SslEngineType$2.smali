.class final enum Lio/netty/handler/ssl/SslHandler$SslEngineType$2;
.super Lio/netty/handler/ssl/SslHandler$SslEngineType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler$SslEngineType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler$SslEngineType;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;Lio/netty/handler/ssl/SslHandler$1;)V

    return-void
.end method


# virtual methods
.method public allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    invoke-virtual {p1, p3, p4}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->calculateOutNetBufSize(II)I

    move-result p1

    invoke-interface {p2, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I
    .locals 0

    return p2
.end method

.method public jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    invoke-static {p4, v1, v4}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    check-cast v3, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2, v4, p3}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object v0, p1, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object v0, p1, v2

    throw p2

    :cond_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p2, v0, p3}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result p3

    invoke-static {p4, v1, p3}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p4, v1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object p2
.end method
