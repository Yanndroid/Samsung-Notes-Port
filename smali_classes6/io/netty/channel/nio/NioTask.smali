.class public interface abstract Lio/netty/channel/nio/NioTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/nio/channels/SelectableChannel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract channelReady(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/nio/channels/SelectionKey;",
            ")V"
        }
    .end annotation
.end method

.method public abstract channelUnregistered(Ljava/nio/channels/SelectableChannel;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
