.class public interface abstract Lio/netty/buffer/ByteBufAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lio/netty/buffer/ByteBufAllocator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/netty/buffer/ByteBufUtil;->DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

    sput-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    return-void
.end method


# virtual methods
.method public abstract buffer()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract buffer(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract buffer(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract calculateNewCapacity(II)I
.end method

.method public abstract compositeBuffer()Lio/netty/buffer/CompositeByteBuf;
.end method

.method public abstract compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;
.end method

.method public abstract compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;
.end method

.method public abstract compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;
.end method

.method public abstract compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;
.end method

.method public abstract compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;
.end method

.method public abstract directBuffer()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract directBuffer(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract directBuffer(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract heapBuffer()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract heapBuffer(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract heapBuffer(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract ioBuffer()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract ioBuffer(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract ioBuffer(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract isDirectBufferPooled()Z
.end method
