.class public interface abstract Lio/grpc/internal/Deframer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeWhenComplete()V
.end method

.method public abstract deframe(Lio/grpc/internal/ReadableBuffer;)V
.end method

.method public abstract request(I)V
.end method

.method public abstract setDecompressor(Lio/grpc/Decompressor;)V
.end method

.method public abstract setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
.end method

.method public abstract setMaxInboundMessageSize(I)V
.end method
