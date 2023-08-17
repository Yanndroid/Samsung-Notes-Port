.class Lio/netty/handler/codec/MessageToMessageCodec$1;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/MessageToMessageCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/MessageToMessageCodec;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/MessageToMessageCodec;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/MessageToMessageCodec$1;->this$0:Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec$1;->this$0:Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/MessageToMessageCodec;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec$1;->this$0:Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/MessageToMessageCodec;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method
