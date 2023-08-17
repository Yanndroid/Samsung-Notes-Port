.class public interface abstract Lio/netty/channel/group/ChannelGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Lio/netty/channel/Channel;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lio/netty/channel/group/ChannelGroup;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract close()Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract close(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract deregister()Lio/netty/channel/group/ChannelGroupFuture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract deregister(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract disconnect()Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract disconnect(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract find(Lio/netty/channel/ChannelId;)Lio/netty/channel/Channel;
.end method

.method public abstract flush()Lio/netty/channel/group/ChannelGroup;
.end method

.method public abstract flush(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroup;
.end method

.method public abstract flushAndWrite(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract flushAndWrite(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract newCloseFuture()Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract newCloseFuture(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract write(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract write(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract write(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;Z)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract writeAndFlush(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract writeAndFlush(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;Z)Lio/netty/channel/group/ChannelGroupFuture;
.end method
