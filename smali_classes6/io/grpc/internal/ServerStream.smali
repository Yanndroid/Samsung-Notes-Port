.class public interface abstract Lio/grpc/internal/ServerStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/Stream;


# virtual methods
.method public abstract cancel(Lio/grpc/Status;)V
.end method

.method public abstract close(Lio/grpc/Status;Lio/grpc/Metadata;)V
.end method

.method public abstract getAttributes()Lio/grpc/Attributes;
.end method

.method public abstract getAuthority()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract setDecompressor(Lio/grpc/Decompressor;)V
.end method

.method public abstract setListener(Lio/grpc/internal/ServerStreamListener;)V
.end method

.method public abstract statsTraceContext()Lio/grpc/internal/StatsTraceContext;
.end method

.method public abstract streamId()I
.end method

.method public abstract writeHeaders(Lio/grpc/Metadata;)V
.end method
