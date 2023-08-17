.class final Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/SharedResourceHolder$Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultEventLoopGroupResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/SharedResourceHolder$Resource<",
        "Lio/netty/channel/EventLoopGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventLoopGroupType:Lio/grpc/netty/Utils$EventLoopGroupType;

.field private final name:Ljava/lang/String;

.field private final numEventLoops:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/grpc/netty/Utils$EventLoopGroupType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->name:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p2, "io.netty.eventLoopThreads"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lio/netty/util/NettyRuntime;->availableProcessors()I

    move-result p1

    :cond_0
    iput p1, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->numEventLoops:I

    iput-object p3, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->eventLoopGroupType:Lio/grpc/netty/Utils$EventLoopGroupType;

    return-void
.end method


# virtual methods
.method public close(Lio/netty/channel/EventLoopGroup;)V
    .locals 6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/netty/channel/EventLoopGroup;

    invoke-virtual {p0, p1}, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->close(Lio/netty/channel/EventLoopGroup;)V

    return-void
.end method

.method public create()Lio/netty/channel/EventLoopGroup;
    .locals 4

    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    iget-object v1, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lio/grpc/netty/Utils$2;->$SwitchMap$io$grpc$netty$Utils$EventLoopGroupType:[I

    iget-object v3, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->eventLoopGroupType:Lio/grpc/netty/Utils$EventLoopGroupType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->numEventLoops:I

    invoke-static {v1, v0}, Lio/grpc/netty/Utils;->access$300(ILjava/util/concurrent/ThreadFactory;)Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown/Unsupported EventLoopGroupType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->eventLoopGroupType:Lio/grpc/netty/Utils$EventLoopGroupType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v1, Lio/netty/channel/nio/NioEventLoopGroup;

    iget v2, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->numEventLoops:I

    invoke-direct {v1, v2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->create()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/Utils$DefaultEventLoopGroupResource;->name:Ljava/lang/String;

    return-object v0
.end method
