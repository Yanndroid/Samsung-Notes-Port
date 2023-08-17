.class public interface abstract Lio/grpc/okhttp/internal/framed/Variant;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getProtocol()Lio/grpc/okhttp/internal/Protocol;
.end method

.method public abstract newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;
.end method

.method public abstract newWriter(Lokio/BufferedSink;Z)Lio/grpc/okhttp/internal/framed/FrameWriter;
.end method
