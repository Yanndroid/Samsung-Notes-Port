.class public final Lio/netty/channel/ServerChannelRecvByteBufAllocator;
.super Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    new-instance v0, Lio/netty/channel/ServerChannelRecvByteBufAllocator$1;

    invoke-direct {v0, p0}, Lio/netty/channel/ServerChannelRecvByteBufAllocator$1;-><init>(Lio/netty/channel/ServerChannelRecvByteBufAllocator;)V

    return-object v0
.end method
