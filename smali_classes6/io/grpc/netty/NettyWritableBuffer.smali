.class Lio/grpc/netty/NettyWritableBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/WritableBuffer;


# instance fields
.field private final bytebuf:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    return-void
.end method


# virtual methods
.method public bytebuf()Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public readableBytes()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void
.end method

.method public writableBytes()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    return v0
.end method

.method public write(B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyWritableBuffer;->bytebuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    return-void
.end method
