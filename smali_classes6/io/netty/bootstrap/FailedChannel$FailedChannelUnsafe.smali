.class final Lio/netty/bootstrap/FailedChannel$FailedChannelUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/FailedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FailedChannelUnsafe"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/bootstrap/FailedChannel;


# direct methods
.method private constructor <init>(Lio/netty/bootstrap/FailedChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/bootstrap/FailedChannel$FailedChannelUnsafe;->this$0:Lio/netty/bootstrap/FailedChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/bootstrap/FailedChannel;Lio/netty/bootstrap/FailedChannel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/bootstrap/FailedChannel$FailedChannelUnsafe;-><init>(Lio/netty/bootstrap/FailedChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method
