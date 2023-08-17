.class public final Lio/grpc/netty/InternalNettySocketSupport$InternalNativeSocketOptions;
.super Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/InternalNettySocketSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalNativeSocketOptions"
.end annotation


# direct methods
.method public constructor <init>(Lio/grpc/InternalChannelz$TcpInfo;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalChannelz$TcpInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;-><init>(Lio/grpc/InternalChannelz$TcpInfo;Ljava/util/Map;)V

    return-void
.end method
