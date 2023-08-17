.class Lio/grpc/netty/WriteQueue$RunnableCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/WriteQueue$QueuedCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableCommand"
.end annotation


# instance fields
.field private final link:Lio/perfmark/Link;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/WriteQueue$RunnableCommand;->link:Lio/perfmark/Link;

    iput-object p1, p0, Lio/grpc/netty/WriteQueue$RunnableCommand;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getLink()Lio/perfmark/Link;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/WriteQueue$RunnableCommand;->link:Lio/perfmark/Link;

    return-object v0
.end method

.method public final promise()Lio/netty/channel/ChannelPromise;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final promise(Lio/netty/channel/ChannelPromise;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final run(Lio/netty/channel/Channel;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/WriteQueue$RunnableCommand;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
