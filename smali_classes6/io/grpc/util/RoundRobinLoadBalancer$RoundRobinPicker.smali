.class abstract Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RoundRobinPicker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
.end method
