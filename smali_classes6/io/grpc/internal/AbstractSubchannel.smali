.class abstract Lio/grpc/internal/AbstractSubchannel;
.super Lio/grpc/LoadBalancer$Subchannel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/LoadBalancer$Subchannel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInstrumentedInternalSubchannel()Lio/grpc/InternalInstrumented;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation
.end method
