.class public interface abstract Lio/netty/handler/stream/ChunkedInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract isEndOfInput()Z
.end method

.method public abstract length()J
.end method

.method public abstract progress()J
.end method

.method public abstract readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBufAllocator;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
