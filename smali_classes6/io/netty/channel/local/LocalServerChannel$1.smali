.class Lio/netty/channel/local/LocalServerChannel$1;
.super Lio/netty/channel/DefaultChannelConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/local/LocalServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/local/LocalServerChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/local/LocalServerChannel;Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/local/LocalServerChannel$1;->this$0:Lio/netty/channel/local/LocalServerChannel;

    invoke-direct {p0, p2, p3}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V

    return-void
.end method
