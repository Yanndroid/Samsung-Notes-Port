.class public interface abstract Lio/grpc/internal/Stream;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract flush()V
.end method

.method public abstract isReady()Z
.end method

.method public abstract optimizeForDirectExecutor()V
.end method

.method public abstract request(I)V
.end method

.method public abstract setCompressor(Lio/grpc/Compressor;)V
.end method

.method public abstract setMessageCompression(Z)V
.end method

.method public abstract writeMessage(Ljava/io/InputStream;)V
.end method
