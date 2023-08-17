.class public interface abstract Lio/grpc/HasByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/7387"
.end annotation


# virtual methods
.method public abstract byteBufferSupported()Z
.end method

.method public abstract getByteBuffer()Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
