.class Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelTrafficCounters()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lio/netty/handler/traffic/TrafficCounter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;->this$0:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/handler/traffic/TrafficCounter;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1$1;

    invoke-direct {v0, p0}, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1$1;-><init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$1;->this$0:Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    iget-object v0, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
