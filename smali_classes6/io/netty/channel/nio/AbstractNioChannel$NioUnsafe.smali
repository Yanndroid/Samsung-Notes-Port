.class public interface abstract Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/Channel$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NioUnsafe"
.end annotation


# virtual methods
.method public abstract ch()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract finishConnect()V
.end method

.method public abstract forceFlush()V
.end method

.method public abstract read()V
.end method
