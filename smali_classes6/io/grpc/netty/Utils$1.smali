.class Lio/grpc/netty/Utils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/Utils;->nioServerChannelFactory()Lio/netty/channel/ChannelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/channel/ChannelFactory<",
        "Lio/netty/channel/ServerChannel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel()Lio/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/Utils$1;->newChannel()Lio/netty/channel/ServerChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel()Lio/netty/channel/ServerChannel;
    .locals 1

    new-instance v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-direct {v0}, Lio/netty/channel/socket/nio/NioServerSocketChannel;-><init>()V

    return-object v0
.end method
