.class final Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
.super Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadyPicker"
.end annotation


# static fields
.field private static final indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const-string v1, "index"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:I

    return-void
.end method

.method private nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;
    .locals 3

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v2

    if-lt v2, v0, :cond_0

    rem-int v0, v2, v0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move v2, v0

    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    return-object v0
.end method

.method public isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
    .locals 3

    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
