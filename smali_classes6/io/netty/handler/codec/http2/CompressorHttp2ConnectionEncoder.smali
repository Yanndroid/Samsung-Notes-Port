.class public Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;
.super Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;
.source "SourceFile"


# static fields
.field public static final DEFAULT_COMPRESSION_LEVEL:I = 0x6

.field public static final DEFAULT_MEM_LEVEL:I = 0x8

.field public static final DEFAULT_WINDOW_BITS:I = 0xf


# instance fields
.field private brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

.field private compressionLevel:I

.field private deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

.field private gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

.field private memLevel:I

.field private final propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final supportsCompressionOptions:Z

.field private windowBits:I

.field private zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V
    .locals 1

    invoke-static {}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->defaultCompressionOptions()[Lio/netty/handler/codec/compression/CompressionOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;[Lio/netty/handler/codec/compression/CompressionOptions;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;III)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    const/4 p1, 0x0

    const/16 v0, 0x9

    const-string v1, "compressionLevel"

    invoke-static {p2, p1, v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->compressionLevel:I

    const/16 p2, 0xf

    const-string v1, "windowBits"

    invoke-static {p3, v0, p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->windowBits:I

    const/4 p2, 0x1

    const-string p3, "memLevel"

    invoke-static {p4, p2, v0, p3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->memLevel:I

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p2

    new-instance p3, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;

    invoke-direct {p3, p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;-><init>(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)V

    invoke-interface {p2, p3}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->supportsCompressionOptions:Z

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;[Lio/netty/handler/codec/compression/CompressionOptions;)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    const-string p1, "CompressionOptions"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lio/netty/util/internal/ObjectUtil;->deepCheckNotNull(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v1, p2, v0

    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v2, :cond_0

    check-cast v1, Lio/netty/handler/codec/compression/BrotliOptions;

    iput-object v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v2, :cond_1

    check-cast v1, Lio/netty/handler/codec/compression/GzipOptions;

    iput-object v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v2, :cond_2

    check-cast v1, Lio/netty/handler/codec/compression/DeflateOptions;

    iput-object v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v2, :cond_3

    check-cast v1, Lio/netty/handler/codec/compression/ZstdOptions;

    iput-object v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lio/netty/handler/codec/compression/CompressionOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->supportsCompressionOptions:Z

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$2;

    invoke-direct {p2, p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$2;-><init>(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)V

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object p0
.end method

.method private bindCompressorToStream(Lio/netty/channel/embedded/EmbeddedChannel;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p2, v0, p1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static defaultCompressionOptions()[Lio/netty/handler/codec/compression/CompressionOptions;
    .locals 5

    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lio/netty/handler/codec/compression/CompressionOptions;

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->brotli()Lio/netty/handler/codec/compression/BrotliOptions;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->gzip()Lio/netty/handler/codec/compression/GzipOptions;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->deflate()Lio/netty/handler/codec/compression/DeflateOptions;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    new-array v0, v3, [Lio/netty/handler/codec/compression/CompressionOptions;

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->gzip()Lio/netty/handler/codec/compression/GzipOptions;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->deflate()Lio/netty/handler/codec/compression/DeflateOptions;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private newCompressionChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 8

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->supportsCompressionOptions:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget-object v5, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    invoke-virtual {v5}, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel()I

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    invoke-virtual {v6}, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits()I

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel()I

    move-result v7

    invoke-static {p2, v5, v6, v7}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-direct {v0, v3, v4, p1, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    return-object v0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v0, :cond_1

    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget-object v5, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    invoke-virtual {v5}, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel()I

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    invoke-virtual {v6}, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits()I

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel()I

    move-result v7

    invoke-static {p2, v5, v6, v7}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-direct {v0, v3, v4, p1, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ZlibWrapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget v5, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->compressionLevel:I

    iget v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->windowBits:I

    iget v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->memLevel:I

    invoke-static {p2, v5, v6, v7}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-direct {v0, v3, v4, p1, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    return-object v0
.end method

.method private newCompressor(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p2, p3}, Lio/netty/handler/codec/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newContentCompressor(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->getTargetContentEncoding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, p3}, Lio/netty/handler/codec/Headers;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p2, p3, v0}, Lio/netty/handler/codec/Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    :goto_0
    sget-object p3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {p2, p3}, Lio/netty/handler/codec/Headers;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object p1
.end method

.method private static nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->readOutbound()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 0

    invoke-virtual {p2}, Lio/netty/channel/embedded/EmbeddedChannel;->finishAndReleaseAll()Z

    iget-object p2, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2Stream;->removeProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    return-void
.end method

.method public getTargetContentEncoding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public newContentCompressor(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 8

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->BR:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v4, Lio/netty/handler/codec/compression/BrotliEncoder;

    iget-object v5, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    invoke-virtual {v5}, Lio/netty/handler/codec/compression/BrotliOptions;->parameters()Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/BrotliEncoder;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    aput-object v4, v2, v1

    invoke-direct {p2, v0, v3, p1, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    return-object p2

    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v0, :cond_3

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->ZSTD:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v4, Lio/netty/handler/codec/compression/ZstdEncoder;

    iget-object v5, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    invoke-virtual {v5}, Lio/netty/handler/codec/compression/ZstdOptions;->compressionLevel()I

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    invoke-virtual {v6}, Lio/netty/handler/codec/compression/ZstdOptions;->blockSize()I

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/ZstdOptions;->maxEncodeSize()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    aput-object v4, v2, v1

    invoke-direct {p2, v0, v3, p1, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    :goto_0
    sget-object p2, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    :goto_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressionChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    sget-object p2, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_1
.end method

.method public writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p6

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    move/from16 v10, p2

    invoke-interface {v0, v10}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v11, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedChannel;

    :goto_0
    move-object v12, v0

    if-nez v12, :cond_1

    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p3, v1, v13

    invoke-virtual {v12, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOutbound([Ljava/lang/Object;)Z

    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz p5, :cond_5

    invoke-virtual {v12}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-super/range {v1 .. v7}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_4

    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    :cond_4
    return-object v0

    :cond_5
    :try_start_1
    invoke-interface/range {p6 .. p6}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p5, :cond_6

    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    :cond_6
    return-object v9

    :cond_7
    :try_start_2
    new-instance v14, Lio/netty/util/concurrent/PromiseCombiner;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v14, v2}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    move/from16 v5, p4

    move-object v4, v1

    :goto_2
    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-nez v1, :cond_8

    if-eqz p5, :cond_8

    move v2, v0

    goto :goto_3

    :cond_8
    move v2, v13

    :goto_3
    if-eqz v2, :cond_a

    invoke-virtual {v12}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-nez v1, :cond_9

    move v2, v0

    goto :goto_4

    :cond_9
    move v2, v13

    :cond_a
    :goto_4
    move-object v15, v1

    move v6, v2

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v7

    invoke-virtual {v14, v7}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Promise;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-super/range {v1 .. v7}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    if-nez v15, :cond_b

    invoke-virtual {v14, v9}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p5, :cond_c

    goto :goto_5

    :cond_b
    move v5, v13

    move-object v4, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v9, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p5, :cond_c

    :goto_5
    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    :cond_c
    return-object v9

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz p5, :cond_d

    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    :cond_d
    throw v1
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p3, p8}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressor(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    invoke-super/range {p0 .. p9}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->bindCompressorToStream(Lio/netty/channel/embedded/EmbeddedChannel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p9, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    return-object p9
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p3, p5}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressor(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->bindCompressorToStream(Lio/netty/channel/embedded/EmbeddedChannel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p6, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    return-object p6
.end method
