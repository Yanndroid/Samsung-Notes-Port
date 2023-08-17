.class Lio/grpc/netty/NettyWritableBufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/WritableBufferAllocator;


# static fields
.field private static final MAX_BUFFER:I = 0x100000

.field private static final MIN_BUFFER:I = 0x1000


# instance fields
.field private final allocator:Lio/netty/buffer/ByteBufAllocator;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/NettyWritableBufferAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-void
.end method


# virtual methods
.method public allocate(I)Lio/grpc/internal/WritableBuffer;
    .locals 2

    const/16 v0, 0x1000

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v0, Lio/grpc/netty/NettyWritableBuffer;

    iget-object v1, p0, Lio/grpc/netty/NettyWritableBufferAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v1, p1, p1}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/NettyWritableBuffer;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method
