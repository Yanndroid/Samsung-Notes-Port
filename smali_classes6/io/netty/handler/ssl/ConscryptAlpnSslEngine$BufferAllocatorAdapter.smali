.class final Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;
.super Lorg/conscrypt/BufferAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferAllocatorAdapter"
.end annotation


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/BufferAllocator;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-void
.end method


# virtual methods
.method public allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;
    .locals 2

    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;

    iget-object v1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v1, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method
