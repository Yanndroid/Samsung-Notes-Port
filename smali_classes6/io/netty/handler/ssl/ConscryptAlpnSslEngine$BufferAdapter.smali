.class final Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;
.super Lorg/conscrypt/AllocatedBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferAdapter"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final nettyBuffer:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-direct {p0}, Lorg/conscrypt/AllocatedBuffer;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;->nettyBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()Lorg/conscrypt/AllocatedBuffer;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;->nettyBuffer:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p0
.end method

.method public retain()Lorg/conscrypt/AllocatedBuffer;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;->nettyBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method
