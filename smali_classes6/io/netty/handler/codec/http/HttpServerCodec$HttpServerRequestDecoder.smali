.class final Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;
.super Lio/netty/handler/codec/http/HttpRequestDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpServerCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HttpServerRequestDecoder"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http/HttpServerCodec;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;III)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZ)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZI)V
    .locals 6

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(IIIZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZIZ)V
    .locals 7

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(IIIZIZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZIZZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(IIIZIZZ)V

    return-void
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpServerCodec;->access$100(Lio/netty/handler/codec/http/HttpServerCodec;)Ljava/util/Queue;

    move-result-object v1

    check-cast p2, Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
