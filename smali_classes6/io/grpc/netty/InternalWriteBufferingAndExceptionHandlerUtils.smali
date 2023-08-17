.class public final Lio/grpc/netty/InternalWriteBufferingAndExceptionHandlerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBufferingAndRemove(Lio/netty/channel/Channel;)V
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/NettyClientHandler;->writeBufferingAndRemove(Lio/netty/channel/Channel;)V

    return-void
.end method
