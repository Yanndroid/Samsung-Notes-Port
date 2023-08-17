.class abstract Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/FixedChannelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TimeoutTask"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/channel/pool/FixedChannelPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/channel/pool/FixedChannelPool$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    return-void
.end method


# virtual methods
.method public abstract onTimeout(Lio/netty/channel/pool/FixedChannelPool$AcquireTask;)V
.end method

.method public final run()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v2}, Lio/netty/channel/pool/FixedChannelPool;->access$800(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->expireNanoTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v3}, Lio/netty/channel/pool/FixedChannelPool;->access$800(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v3, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v3}, Lio/netty/channel/pool/FixedChannelPool;->access$906(Lio/netty/channel/pool/FixedChannelPool;)I

    invoke-virtual {p0, v2}, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->onTimeout(Lio/netty/channel/pool/FixedChannelPool$AcquireTask;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
