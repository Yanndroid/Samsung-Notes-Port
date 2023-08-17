.class public final Lio/netty/handler/codec/compression/StandardCompressionOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static brotli()Lio/netty/handler/codec/compression/BrotliOptions;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/BrotliOptions;->DEFAULT:Lio/netty/handler/codec/compression/BrotliOptions;

    return-object v0
.end method

.method public static brotli(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)Lio/netty/handler/codec/compression/BrotliOptions;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/compression/BrotliOptions;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/compression/BrotliOptions;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    return-object v0
.end method

.method public static deflate()Lio/netty/handler/codec/compression/DeflateOptions;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/DeflateOptions;->DEFAULT:Lio/netty/handler/codec/compression/DeflateOptions;

    return-object v0
.end method

.method public static deflate(III)Lio/netty/handler/codec/compression/DeflateOptions;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/compression/DeflateOptions;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/compression/DeflateOptions;-><init>(III)V

    return-object v0
.end method

.method public static gzip()Lio/netty/handler/codec/compression/GzipOptions;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/GzipOptions;->DEFAULT:Lio/netty/handler/codec/compression/GzipOptions;

    return-object v0
.end method

.method public static gzip(III)Lio/netty/handler/codec/compression/GzipOptions;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/compression/GzipOptions;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/compression/GzipOptions;-><init>(III)V

    return-object v0
.end method

.method public static zstd()Lio/netty/handler/codec/compression/ZstdOptions;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/ZstdOptions;->DEFAULT:Lio/netty/handler/codec/compression/ZstdOptions;

    return-object v0
.end method

.method public static zstd(III)Lio/netty/handler/codec/compression/ZstdOptions;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/compression/ZstdOptions;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/compression/ZstdOptions;-><init>(III)V

    return-object v0
.end method
