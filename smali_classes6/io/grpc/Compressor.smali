.class public interface abstract Lio/grpc/Compressor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1704"
.end annotation


# virtual methods
.method public abstract compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end method

.method public abstract getMessageEncoding()Ljava/lang/String;
.end method
