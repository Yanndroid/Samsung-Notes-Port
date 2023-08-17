.class final Lio/grpc/netty/NettySocketSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/NettySocketSupport$NettySocketHelperImpl;,
        Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;,
        Lio/grpc/netty/NettySocketSupport$Helper;
    }
.end annotation


# static fields
.field private static volatile instance:Lio/grpc/netty/NettySocketSupport$Helper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/netty/NettySocketSupport$NettySocketHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/NettySocketSupport$NettySocketHelperImpl;-><init>(Lio/grpc/netty/NettySocketSupport$1;)V

    sput-object v0, Lio/grpc/netty/NettySocketSupport;->instance:Lio/grpc/netty/NettySocketSupport$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;
    .locals 1

    sget-object v0, Lio/grpc/netty/NettySocketSupport;->instance:Lio/grpc/netty/NettySocketSupport$Helper;

    invoke-interface {v0, p0}, Lio/grpc/netty/NettySocketSupport$Helper;->getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;

    move-result-object p0

    return-object p0
.end method

.method public static setHelper(Lio/grpc/netty/NettySocketSupport$Helper;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/NettySocketSupport$Helper;

    sput-object p0, Lio/grpc/netty/NettySocketSupport;->instance:Lio/grpc/netty/NettySocketSupport$Helper;

    return-void
.end method
