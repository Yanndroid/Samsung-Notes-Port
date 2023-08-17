.class public interface abstract Lio/grpc/internal/Framer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract dispose()V
.end method

.method public abstract flush()V
.end method

.method public abstract isClosed()Z
.end method

.method public abstract setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;
.end method

.method public abstract setMaxOutboundMessageSize(I)V
.end method

.method public abstract setMessageCompression(Z)Lio/grpc/internal/Framer;
.end method

.method public abstract writePayload(Ljava/io/InputStream;)V
.end method
