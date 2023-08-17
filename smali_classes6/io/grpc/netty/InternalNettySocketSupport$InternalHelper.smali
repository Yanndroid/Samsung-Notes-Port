.class public interface abstract Lio/grpc/netty/InternalNettySocketSupport$InternalHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/NettySocketSupport$Helper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/InternalNettySocketSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InternalHelper"
.end annotation


# virtual methods
.method public abstract getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/InternalNettySocketSupport$InternalNativeSocketOptions;
.end method

.method public bridge abstract synthetic getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;
.end method
