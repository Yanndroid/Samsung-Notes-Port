.class public final Lio/netty/handler/codec/http/HttpClientCodec;
.super Lio/netty/channel/CombinedChannelDuplexHandler;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpClientCodec$Decoder;,
        Lio/netty/handler/codec/http/HttpClientCodec$Encoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/CombinedChannelDuplexHandler<",
        "Lio/netty/handler/codec/http/HttpResponseDecoder;",
        "Lio/netty/handler/codec/http/HttpRequestEncoder;",
        ">;",
        "Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;"
    }
.end annotation


# static fields
.field public static final DEFAULT_FAIL_ON_MISSING_RESPONSE:Z = false

.field public static final DEFAULT_PARSE_HTTP_AFTER_CONNECT_REQUEST:Z = false


# instance fields
.field private done:Z

.field private final failOnMissingResponse:Z

.field private final parseHttpAfterConnectRequest:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZIZ)V

    return-void
.end method

.method public constructor <init>(IIIZZIZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZIZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZIZZ)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZIZZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZIZZZ)V
    .locals 11

    move-object v9, p0

    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v10, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZIZZ)V

    new-instance v0, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;Lio/netty/handler/codec/http/HttpClientCodec$1;)V

    invoke-virtual {p0, v10, v0}, Lio/netty/channel/CombinedChannelDuplexHandler;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    move/from16 v0, p7

    iput-boolean v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->parseHttpAfterConnectRequest:Z

    move v0, p4

    iput-boolean v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 7

    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZ)V

    new-instance p1, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;Lio/netty/handler/codec/http/HttpClientCodec$1;)V

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/CombinedChannelDuplexHandler;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    iput-boolean p6, p0, Lio/netty/handler/codec/http/HttpClientCodec;->parseHttpAfterConnectRequest:Z

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http/HttpClientCodec;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    return p0
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http/HttpClientCodec;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->done:Z

    return p0
.end method

.method public static synthetic access$302(Lio/netty/handler/codec/http/HttpClientCodec;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpClientCodec;->done:Z

    return p1
.end method

.method public static synthetic access$400(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic access$500(Lio/netty/handler/codec/http/HttpClientCodec;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->parseHttpAfterConnectRequest:Z

    return p0
.end method


# virtual methods
.method public isSingleDecode()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler()Lio/netty/channel/ChannelInboundHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->isSingleDecode()Z

    move-result v0

    return v0
.end method

.method public prepareUpgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler()Lio/netty/channel/ChannelOutboundHandler;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;->upgraded:Z

    return-void
.end method

.method public setSingleDecode(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler()Lio/netty/channel/ChannelInboundHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->setSingleDecode(Z)V

    return-void
.end method

.method public upgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
