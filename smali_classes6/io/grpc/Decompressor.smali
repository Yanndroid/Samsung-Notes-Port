.class public interface abstract Lio/grpc/Decompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1704"
.end annotation


# virtual methods
.method public abstract decompress(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public abstract getMessageEncoding()Ljava/lang/String;
.end method
