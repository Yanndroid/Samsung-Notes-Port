.class public interface abstract Lio/netty/channel/unix/DomainDatagramChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/unix/UnixChannel;
.implements Lio/netty/channel/Channel;


# virtual methods
.method public abstract config()Lio/netty/channel/unix/DomainDatagramChannelConfig;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract localAddress()Lio/netty/channel/unix/DomainSocketAddress;
.end method

.method public abstract remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;
.end method
