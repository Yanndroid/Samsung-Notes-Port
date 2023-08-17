.class final Lio/grpc/netty/WriteBufferingAndExceptionHandler$1LogOnFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/WriteBufferingAndExceptionHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogOnFailure"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/WriteBufferingAndExceptionHandler;


# direct methods
.method public constructor <init>(Lio/grpc/netty/WriteBufferingAndExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$1LogOnFailure;->this$0:Lio/grpc/netty/WriteBufferingAndExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v2, "Failed closing channel"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/WriteBufferingAndExceptionHandler$1LogOnFailure;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
