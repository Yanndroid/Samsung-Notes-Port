.class Lio/netty/handler/ssl/SslClientHelloHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$finalClientHello:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslClientHelloHandler;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$finalClientHello:Lio/netty/buffer/ByteBuf;

    iput-object p3, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$finalClientHello:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$000(Lio/netty/buffer/ByteBuf;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$102(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2, p1}, Lio/netty/handler/ssl/SslClientHelloHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    :try_end_1
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v2, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v2, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {p1}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z

    iget-object p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->this$0:Lio/netty/handler/ssl/SslClientHelloHandler;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z

    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    throw p1
.end method
