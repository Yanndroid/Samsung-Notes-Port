.class interface abstract Lio/grpc/netty/WriteQueue$QueuedCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueuedCommand"
.end annotation


# virtual methods
.method public abstract getLink()Lio/perfmark/Link;
.end method

.method public abstract promise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract promise(Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract run(Lio/netty/channel/Channel;)V
.end method
