.class public final synthetic Lio/grpc/netty/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lio/grpc/netty/InternalNettySocketSupport$InternalHelper;Lio/netty/channel/Channel;)Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;
    .locals 0

    invoke-interface {p0, p1}, Lio/grpc/netty/InternalNettySocketSupport$InternalHelper;->getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/InternalNettySocketSupport$InternalNativeSocketOptions;

    move-result-object p0

    return-object p0
.end method
