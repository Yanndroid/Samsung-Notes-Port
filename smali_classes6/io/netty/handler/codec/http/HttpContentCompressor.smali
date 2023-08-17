.class public Lio/netty/handler/codec/http/HttpContentCompressor;
.super Lio/netty/handler/codec/http/HttpContentEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$DeflateEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$GzipEncoderFactory;
    }
.end annotation


# instance fields
.field private final brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

.field private final compressionLevel:I

.field private final contentSizeThreshold:I

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/http/CompressionEncoderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

.field private final memLevel:I

.field private final supportsCompressionOptions:Z

.field private final windowBits:I

.field private final zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xf

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x9

    const-string v2, "compressionLevel"

    invoke-static {p1, v0, v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    const/16 p1, 0xf

    const-string v2, "windowBits"

    invoke-static {p2, v1, p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    const/4 p1, 0x1

    const-string p2, "memLevel"

    invoke-static {p3, p1, v1, p2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    const-string p1, "contentSizeThreshold"

    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->supportsCompressionOptions:Z

    return-void
.end method

.method public varargs constructor <init>(I[Lio/netty/handler/codec/compression/CompressionOptions;)V
    .locals 8

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    const-string v0, "contentSizeThreshold"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "compressionOptions"

    invoke-static {v0, p2}, Lio/netty/util/internal/ObjectUtil;->deepCheckNotNull(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v6, p2, v1

    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v7, v6, Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v7, :cond_1

    move-object v2, v6

    check-cast v2, Lio/netty/handler/codec/compression/BrotliOptions;

    goto :goto_1

    :cond_1
    instance-of v7, v6, Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v7, :cond_2

    move-object v3, v6

    check-cast v3, Lio/netty/handler/codec/compression/GzipOptions;

    goto :goto_1

    :cond_2
    instance-of v7, v6, Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v7, :cond_3

    move-object v4, v6

    check-cast v4, Lio/netty/handler/codec/compression/DeflateOptions;

    goto :goto_1

    :cond_3
    instance-of v5, v6, Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v5, :cond_4

    move-object v5, v6

    check-cast v5, Lio/netty/handler/codec/compression/ZstdOptions;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
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

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->brotli()Lio/netty/handler/codec/compression/BrotliOptions;

    move-result-object p2

    move-object v2, p2

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_3
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->gzip()Lio/netty/handler/codec/compression/GzipOptions;

    move-result-object v3

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->deflate()Lio/netty/handler/codec/compression/DeflateOptions;

    move-result-object v4

    invoke-static {}, Lio/netty/handler/codec/compression/Zstd;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->zstd()Lio/netty/handler/codec/compression/ZstdOptions;

    move-result-object p2

    move-object v5, p2

    goto :goto_4

    :cond_7
    move-object v5, p1

    :cond_8
    :goto_4
    iput-object v3, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    iput-object v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    iput-object v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    if-eqz v3, :cond_9

    new-instance v0, Lio/netty/handler/codec/http/HttpContentCompressor$GzipEncoderFactory;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor$GzipEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v1, "gzip"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v4, :cond_a

    new-instance v0, Lio/netty/handler/codec/http/HttpContentCompressor$DeflateEncoderFactory;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor$DeflateEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v1, "deflate"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    new-instance v0, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v1, "br"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v5, :cond_c

    new-instance v0, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string p1, "zstd"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 p1, -0x1

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->supportsCompressionOptions:Z

    return-void
.end method

.method public varargs constructor <init>([Lio/netty/handler/codec/compression/CompressionOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(I[Lio/netty/handler/codec/compression/CompressionOptions;)V

    return-void
.end method

.method public static synthetic access$400(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/GzipOptions;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    return-object p0
.end method

.method public static synthetic access$500(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/DeflateOptions;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    return-object p0
.end method

.method public static synthetic access$600(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/BrotliOptions;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    return-object p0
.end method

.method public static synthetic access$700(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/ZstdOptions;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    return-object p0
.end method


# virtual methods
.method public beginEncode(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)Lio/netty/handler/codec/http/HttpContentEncoder$Result;
    .locals 10

    iget v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    iget-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->supportsCompressionOptions:Z

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpContentCompressor;->determineEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    iget-object p2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/handler/codec/http/CompressionEncoderFactory;

    if-eqz p2, :cond_3

    new-instance v1, Lio/netty/handler/codec/http/HttpContentEncoder$Result;

    new-instance v3, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v4, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v5}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v6

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    invoke-interface {p2}, Lio/netty/handler/codec/http/CompressionEncoderFactory;->createEncoder()Lio/netty/handler/codec/MessageToByteEncoder;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-direct {v3, v4, v5, v6, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    invoke-direct {v1, p1, v3}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;-><init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lio/netty/handler/codec/compression/ZlibWrapper;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v1

    :cond_5
    sget-object p2, Lio/netty/handler/codec/http/HttpContentCompressor$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v2, :cond_7

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    const-string p2, "deflate"

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_7
    const-string p2, "gzip"

    :goto_0
    new-instance v1, Lio/netty/handler/codec/http/HttpContentEncoder$Result;

    new-instance v3, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v4, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v5}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v6

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget v7, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iget v8, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iget v9, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    invoke-static {p1, v7, v8, v9}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-direct {v3, v4, v5, v6, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    invoke-direct {v1, p2, v3}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;-><init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-object v1
.end method

.method public determineEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, ","

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    :goto_0
    const-string v10, "deflate"

    const-string v11, "gzip"

    const-string v12, "zstd"

    const-string v13, "br"

    if-ge v4, v2, :cond_6

    aget-object v15, v1, v4

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v3, 0x3d

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_0

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_0
    move/from16 v14, v16

    :goto_1
    const-string v3, "*"

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v9, v14

    goto :goto_2

    :cond_1
    invoke-virtual {v15, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    cmpl-float v3, v14, v5

    if-lez v3, :cond_2

    move v5, v14

    goto :goto_2

    :cond_2
    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    cmpl-float v3, v14, v6

    if-lez v3, :cond_3

    move v6, v14

    goto :goto_2

    :cond_3
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    cmpl-float v3, v14, v7

    if-lez v3, :cond_4

    move v7, v14

    goto :goto_2

    :cond_4
    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    cmpl-float v3, v14, v8

    if-lez v3, :cond_5

    move v8, v14

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    cmpl-float v1, v5, v3

    if-gtz v1, :cond_9

    cmpl-float v1, v6, v3

    if-gtz v1, :cond_9

    cmpl-float v1, v7, v3

    if-gtz v1, :cond_9

    cmpl-float v1, v8, v3

    if-lez v1, :cond_7

    goto :goto_3

    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v5, v1

    if-eqz v2, :cond_a

    cmpl-float v2, v5, v6

    if-ltz v2, :cond_a

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v2, :cond_a

    return-object v13

    :cond_a
    cmpl-float v2, v6, v1

    if-eqz v2, :cond_b

    cmpl-float v2, v6, v7

    if-ltz v2, :cond_b

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v2, :cond_b

    return-object v12

    :cond_b
    cmpl-float v2, v7, v1

    if-eqz v2, :cond_c

    cmpl-float v2, v7, v8

    if-ltz v2, :cond_c

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v2, :cond_c

    return-object v11

    :cond_c
    cmpl-float v2, v8, v1

    if-eqz v2, :cond_8

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v2, :cond_8

    return-object v10

    :goto_4
    cmpl-float v2, v9, v2

    if-lez v2, :cond_10

    cmpl-float v2, v5, v1

    if-nez v2, :cond_d

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v2, :cond_d

    return-object v13

    :cond_d
    cmpl-float v2, v6, v1

    if-nez v2, :cond_e

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v2, :cond_e

    return-object v12

    :cond_e
    cmpl-float v2, v7, v1

    if-nez v2, :cond_f

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v2, :cond_f

    return-object v11

    :cond_f
    cmpl-float v1, v8, v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v1, :cond_10

    return-object v10

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public determineWrapper(Ljava/lang/String;)Lio/netty/handler/codec/compression/ZlibWrapper;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v2, v0, :cond_4

    aget-object v7, p1, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x3d

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    add-int/lit8 v9, v9, 0x1

    :try_start_0
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    move v6, v8

    :catch_0
    :goto_1
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    cmpl-float v8, v6, v3

    if-lez v8, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    const-string v8, "deflate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    cmpl-float v7, v6, v4

    if-lez v7, :cond_3

    move v4, v6

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpl-float p1, v3, v6

    if-gtz p1, :cond_8

    cmpl-float p1, v4, v6

    if-lez p1, :cond_5

    goto :goto_3

    :cond_5
    cmpl-float p1, v5, v6

    if-lez p1, :cond_7

    cmpl-float p1, v3, v1

    if-nez p1, :cond_6

    sget-object p1, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object p1

    :cond_6
    cmpl-float p1, v4, v1

    if-nez p1, :cond_7

    sget-object p1, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1

    :cond_8
    :goto_3
    cmpl-float p1, v3, v4

    if-ltz p1, :cond_9

    sget-object p1, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object p1

    :cond_9
    sget-object p1, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object p1
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method
