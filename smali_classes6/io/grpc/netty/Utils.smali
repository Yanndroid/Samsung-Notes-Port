.class Lio/grpc/netty/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/Utils$EventLoopGroupType;,
        Lio/grpc/netty/Utils$FlowControlReader;,
        Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;,
        Lio/grpc/netty/Utils$ByteBufAllocatorPreferHeapHolder;,
        Lio/grpc/netty/Utils$ByteBufAllocatorPreferDirectHolder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_GRPC:Lio/netty/util/AsciiString;

.field public static final CONTENT_TYPE_HEADER:Lio/netty/util/AsciiString;

.field public static final DEFAULT_BOSS_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SERVER_CHANNEL_FACTORY:Lio/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final EPOLL_DOMAIN_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private static final EPOLL_EVENT_LOOP_GROUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final HTTP:Lio/netty/util/AsciiString;

.field public static final HTTPS:Lio/netty/util/AsciiString;

.field public static final HTTP_GET_METHOD:Lio/netty/util/AsciiString;

.field public static final HTTP_METHOD:Lio/netty/util/AsciiString;

.field public static final NIO_BOSS_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final NIO_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_OK:Lio/netty/util/AsciiString;

.field public static final TE_HEADER:Lio/netty/util/AsciiString;

.field public static final TE_TRAILERS:Lio/netty/util/AsciiString;

.field public static final USER_AGENT:Lio/netty/util/AsciiString;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-class v0, Lio/grpc/netty/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/Utils;->logger:Ljava/util/logging/Logger;

    const-string v1, "200"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->STATUS_OK:Lio/netty/util/AsciiString;

    const-string v1, "POST"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->HTTP_METHOD:Lio/netty/util/AsciiString;

    const-string v1, "GET"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->HTTP_GET_METHOD:Lio/netty/util/AsciiString;

    const-string v1, "https"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->HTTPS:Lio/netty/util/AsciiString;

    const-string v1, "http"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->HTTP:Lio/netty/util/AsciiString;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->CONTENT_TYPE_HEADER:Lio/netty/util/AsciiString;

    const-string v1, "application/grpc"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->CONTENT_TYPE_GRPC:Lio/netty/util/AsciiString;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    const-string v1, "trailers"

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->TE_TRAILERS:Lio/netty/util/AsciiString;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/Utils;->USER_AGENT:Lio/netty/util/AsciiString;

    new-instance v1, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;

    sget-object v2, Lio/grpc/netty/Utils$EventLoopGroupType;->NIO:Lio/grpc/netty/Utils$EventLoopGroupType;

    const/4 v3, 0x1

    const-string v4, "grpc-nio-boss-ELG"

    invoke-direct {v1, v3, v4, v2}, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;-><init>(ILjava/lang/String;Lio/grpc/netty/Utils$EventLoopGroupType;)V

    sput-object v1, Lio/grpc/netty/Utils;->NIO_BOSS_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    new-instance v4, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;

    const/4 v5, 0x0

    const-string v6, "grpc-nio-worker-ELG"

    invoke-direct {v4, v5, v6, v2}, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;-><init>(ILjava/lang/String;Lio/grpc/netty/Utils$EventLoopGroupType;)V

    sput-object v4, Lio/grpc/netty/Utils;->NIO_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {}, Lio/grpc/netty/Utils;->isEpollAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/grpc/netty/Utils;->epollChannelType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/Utils;->DEFAULT_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;

    invoke-static {}, Lio/grpc/netty/Utils;->epollDomainSocketChannelType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/Utils;->EPOLL_DOMAIN_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;

    new-instance v0, Lio/netty/channel/ReflectiveChannelFactory;

    invoke-static {}, Lio/grpc/netty/Utils;->epollServerChannelType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/ReflectiveChannelFactory;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/grpc/netty/Utils;->DEFAULT_SERVER_CHANNEL_FACTORY:Lio/netty/channel/ChannelFactory;

    invoke-static {}, Lio/grpc/netty/Utils;->epollEventLoopGroupConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/Utils;->EPOLL_EVENT_LOOP_GROUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-instance v0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;

    sget-object v1, Lio/grpc/netty/Utils$EventLoopGroupType;->EPOLL:Lio/grpc/netty/Utils$EventLoopGroupType;

    const-string v2, "grpc-default-boss-ELG"

    invoke-direct {v0, v3, v2, v1}, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;-><init>(ILjava/lang/String;Lio/grpc/netty/Utils$EventLoopGroupType;)V

    sput-object v0, Lio/grpc/netty/Utils;->DEFAULT_BOSS_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    new-instance v0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;

    const-string v2, "grpc-default-worker-ELG"

    invoke-direct {v0, v5, v2, v1}, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;-><init>(ILjava/lang/String;Lio/grpc/netty/Utils$EventLoopGroupType;)V

    sput-object v0, Lio/grpc/netty/Utils;->DEFAULT_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {}, Lio/grpc/netty/Utils;->getEpollUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string v5, "Epoll is not available, using Nio."

    invoke-virtual {v0, v2, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lio/grpc/netty/Utils;->nioServerChannelFactory()Lio/netty/channel/ChannelFactory;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/Utils;->DEFAULT_SERVER_CHANNEL_FACTORY:Lio/netty/channel/ChannelFactory;

    const-class v0, Lio/netty/channel/socket/nio/NioSocketChannel;

    sput-object v0, Lio/grpc/netty/Utils;->DEFAULT_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    sput-object v0, Lio/grpc/netty/Utils;->EPOLL_DOMAIN_CLIENT_CHANNEL_TYPE:Ljava/lang/Class;

    sput-object v1, Lio/grpc/netty/Utils;->DEFAULT_BOSS_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    sput-object v4, Lio/grpc/netty/Utils;->DEFAULT_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    sput-object v0, Lio/grpc/netty/Utils;->EPOLL_EVENT_LOOP_GROUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Z)Lio/netty/buffer/ByteBufAllocator;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/Utils;->createByteBufAllocator(Z)Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(ILjava/util/concurrent/ThreadFactory;)Lio/netty/channel/EventLoopGroup;
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/Utils;->createEpollEventLoopGroup(ILjava/util/concurrent/ThreadFactory;)Lio/netty/channel/EventLoopGroup;

    move-result-object p0

    return-object p0
.end method

.method private static bytes(Ljava/lang/CharSequence;)[B
    .locals 1

    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/util/AsciiString;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->isEntireArrayUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertClientHeaders(Lio/grpc/Metadata;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 7

    const-string v0, "defaultPath"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "authority"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    sget-object v0, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    sget-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    invoke-static {p0}, Lio/grpc/internal/TransportFrameUtil;->toHttp2Headers(Lio/grpc/Metadata;)[[B

    move-result-object v1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->clientRequestHeaders([[BLio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    move-result-object p0

    return-object p0
.end method

.method public static convertHeaders(Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/Metadata;
    .locals 1

    instance-of v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;

    if-eqz v0, :cond_0

    check-cast p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->numHeaders()I

    move-result v0

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->namesAndValues()[[B

    move-result-object p0

    invoke-static {v0, p0}, Lio/grpc/InternalMetadata;->newMetadata(I[[B)Lio/grpc/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/grpc/netty/Utils;->convertHeadersToArray(Lio/netty/handler/codec/http2/Http2Headers;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/InternalMetadata;->newMetadata([[B)Lio/grpc/Metadata;

    move-result-object p0

    return-object p0
.end method

.method private static convertHeadersToArray(Lio/netty/handler/codec/http2/Http2Headers;)[[B
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    invoke-interface {p0}, Lio/netty/handler/codec/Headers;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[B

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lio/grpc/netty/Utils;->bytes(Ljava/lang/CharSequence;)[B

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lio/grpc/netty/Utils;->bytes(Ljava/lang/CharSequence;)[B

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/grpc/internal/TransportFrameUtil;->toRawSerializedHeaders([[B)[[B

    move-result-object p0

    return-object p0
.end method

.method public static convertServerHeaders(Lio/grpc/Metadata;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    sget-object v0, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    sget-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    invoke-static {p0}, Lio/grpc/internal/TransportFrameUtil;->toHttp2Headers(Lio/grpc/Metadata;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->serverResponseHeaders([[B)Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    move-result-object p0

    return-object p0
.end method

.method public static convertTrailers(Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/Metadata;
    .locals 1

    instance-of v0, p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;

    if-eqz v0, :cond_0

    check-cast p0, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->numHeaders()I

    move-result v0

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2InboundHeaders;->namesAndValues()[[B

    move-result-object p0

    invoke-static {v0, p0}, Lio/grpc/InternalMetadata;->newMetadata(I[[B)Lio/grpc/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/grpc/netty/Utils;->convertHeadersToArray(Lio/netty/handler/codec/http2/Http2Headers;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/InternalMetadata;->newMetadata([[B)Lio/grpc/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public static convertTrailers(Lio/grpc/Metadata;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p0}, Lio/grpc/netty/Utils;->convertServerHeaders(Lio/grpc/Metadata;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/grpc/internal/TransportFrameUtil;->toHttp2Headers(Lio/grpc/Metadata;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->serverResponseTrailers([[B)Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    move-result-object p0

    return-object p0
.end method

.method private static createByteBufAllocator(Z)Lio/netty/buffer/ByteBufAllocator;
    .locals 13

    sget-object v0, Lio/grpc/netty/Utils;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating allocator, preferDirect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v2, "io.netty.allocator.maxOrder"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing maxOrder="

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultMaxOrder()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default maxOrder="

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move v9, v2

    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultNumHeapArena()I

    move-result v6

    if-eqz p0, :cond_1

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultNumDirectArena()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v7, v1

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultPageSize()I

    move-result v8

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultSmallCacheSize()I

    move-result v10

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultNormalCacheSize()I

    move-result v11

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultUseCacheForAllThreads()Z

    move-result v12

    move-object v4, v0

    move v5, p0

    invoke-direct/range {v4 .. v12}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIZ)V

    return-object v0
.end method

.method private static createEpollEventLoopGroup(ILjava/util/concurrent/ThreadFactory;)Lio/netty/channel/EventLoopGroup;
    .locals 5

    sget-object v0, Lio/grpc/netty/Utils;->EPOLL_EVENT_LOOP_GROUP_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Epoll is not available"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/channel/EventLoopGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot create Epoll EventLoopGroup"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static epollChannelType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.netty.channel.epoll.EpollSocketChannel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollSocketChannel"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static epollDomainSocketChannelType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.netty.channel.epoll.EpollDomainSocketChannel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollDomainSocketChannel"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static epollEventLoopGroupConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.netty.channel.epoll.EpollEventLoopGroup"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/EventLoopGroup;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/util/concurrent/ThreadFactory;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EpollEventLoopGroup constructor not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollEventLoopGroup"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static epollServerChannelType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "io.netty.channel.epoll.EpollServerSocketChannel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/ServerChannel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load EpollServerSocketChannel"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getByteBufAllocator(Z)Lio/netty/buffer/ByteBufAllocator;
    .locals 6

    const-string v0, "io.grpc.netty.useCustomAllocator"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->defaultPreferDirect()Z

    move-result v0

    sget-object v1, Lio/grpc/netty/Utils;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Using custom allocator: forceHeapBuffer=%s, defaultPreferDirect=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/grpc/netty/Utils$ByteBufAllocatorPreferDirectHolder;->access$200()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lio/grpc/netty/Utils$ByteBufAllocatorPreferHeapHolder;->access$100()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lio/grpc/netty/Utils;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Using default allocator"

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object p0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    return-object p0
.end method

.method private static getEpollChannelOption(Ljava/lang/String;)Lio/netty/channel/ChannelOption;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lio/grpc/netty/Utils;->isEpollAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "io.netty.channel.epoll.EpollChannelOption"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOption;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelOption("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not available"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method private static getEpollUnavailabilityCause()Ljava/lang/Throwable;
    .locals 4

    :try_start_0
    const-string v0, "io.netty.channel.epoll.Epoll"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "unavailabilityCause"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method

.method public static getSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketOptions;
    .locals 5

    invoke-interface {p0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    new-instance v1, Lio/grpc/InternalChannelz$SocketOptions$Builder;

    invoke-direct {v1}, Lio/grpc/InternalChannelz$SocketOptions$Builder;-><init>()V

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->setSocketOptionLingerSeconds(Ljava/lang/Integer;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    :cond_0
    sget-object v2, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->setSocketOptionTimeoutMillis(Ljava/lang/Integer;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/ChannelOption;

    sget-object v4, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    invoke-virtual {v3, v4}, Lio/netty/util/AbstractConstant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lio/netty/channel/ChannelOption;->SO_TIMEOUT:Lio/netty/channel/ChannelOption;

    invoke-virtual {v3, v4}, Lio/netty/util/AbstractConstant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Lio/netty/util/AbstractConstant;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lio/grpc/netty/NettySocketSupport;->getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object v0, p0, Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;->tcpInfo:Lio/grpc/InternalChannelz$TcpInfo;

    invoke-virtual {v1, v0}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->setTcpInfo(Lio/grpc/InternalChannelz$TcpInfo;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    iget-object p0, p0, Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;->otherInfo:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->build()Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object p0

    return-object p0
.end method

.method public static isEpollAvailable()Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "io.netty.channel.epoll.Epoll"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAvailable"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while checking Epoll availability"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    return v0
.end method

.method public static maybeGetTcpUserTimeoutOption()Lio/netty/channel/ChannelOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/ChannelOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "TCP_USER_TIMEOUT"

    invoke-static {v0}, Lio/grpc/netty/Utils;->getEpollChannelOption(Ljava/lang/String;)Lio/netty/channel/ChannelOption;

    move-result-object v0

    return-object v0
.end method

.method private static nioServerChannelFactory()Lio/netty/channel/ChannelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/ChannelFactory<",
            "Lio/netty/channel/ServerChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/Utils$1;

    invoke-direct {v0}, Lio/grpc/netty/Utils$1;-><init>()V

    return-object v0
.end method

.method public static statusFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;
    .locals 3

    invoke-static {p0}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v2, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    sget-object p0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    const-string v1, "channel closed"

    invoke-virtual {p0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lio/netty/handler/codec/DecoderException;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_2

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "ssl exception"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "io exception"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v1, :cond_4

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "unresolved address"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v1, p0, Lio/netty/handler/codec/http2/Http2Exception;

    if-eqz v1, :cond_5

    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "http2 exception"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method
