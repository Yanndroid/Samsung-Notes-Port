.class public Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;


# static fields
.field private static final EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

.field private static final REQUIRED_UPGRADE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

.field private final frameReader:Lio/netty/handler/codec/http2/Http2FrameReader;

.field private final handlerName:Ljava/lang/String;

.field private final handlers:[Lio/netty/channel/ChannelHandler;

.field private settings:Lio/netty/handler/codec/http2/Http2Settings;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-object v0, Lio/netty/handler/codec/http2/Http2CodecUtil;->HTTP_UPGRADE_SETTINGS_HEADER:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->REQUIRED_UPGRADE_HEADERS:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    sput-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlerName:Ljava/lang/String;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    new-instance p1, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-direct {p1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->frameReader:Lio/netty/handler/codec/http2/Http2FrameReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method private static createSettingsFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    new-instance v1, Lio/netty/handler/codec/http2/Http2Flags;

    invoke-direct {v1}, Lio/netty/handler/codec/http2/Http2Flags;-><init>()V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->writeFrameHeader(Lio/netty/buffer/ByteBuf;IBLio/netty/handler/codec/http2/Http2Flags;I)V

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p0
.end method

.method private decodeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Settings;
    .locals 3

    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Settings;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2Settings;-><init>()V

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->frameReader:Lio/netty/handler/codec/http2/Http2FrameReader;

    new-instance v2, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;-><init>(Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;Lio/netty/handler/codec/http2/Http2Settings;)V

    invoke-interface {v1, p1, p2, v2}, Lio/netty/handler/codec/http2/Http2FrameReader;->readFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2FrameListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method

.method private decodeSettingsHeader(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Settings;
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p2

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p2, v1}, Lio/netty/buffer/ByteBufUtil;->encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :try_start_0
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->URL_SAFE:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p2, v0}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->createSettingsFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->decodeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method


# virtual methods
.method public prepareUpgradeResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;)Z
    .locals 3

    const/4 p3, 0x0

    :try_start_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p2

    sget-object v0, Lio/netty/handler/codec/http2/Http2CodecUtil;->HTTP_UPGRADE_SETTINGS_HEADER:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->decodeSettingsHeader(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be 1 and only 1 "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " header."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    sget-object p2, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "Error during upgrade to HTTP/2"

    invoke-interface {p2, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method public requiredUpgradeHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->REQUIRED_UPGRADE_HEADERS:Ljava/util/List;

    return-object v0
.end method

.method public upgradeTo(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlerName:Ljava/lang/String;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-interface {p2, v0, v1, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    aget-object v3, v3, v0

    invoke-interface {v1, p2, v2, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {p2, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onHttpServerUpgrade(Lio/netty/handler/codec/http2/Http2Settings;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    :goto_1
    return-void
.end method
