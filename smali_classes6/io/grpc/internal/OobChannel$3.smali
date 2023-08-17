.class Lio/grpc/internal/OobChannel$3;
.super Lio/grpc/internal/AbstractSubchannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/OobChannel;->setSubchannel(Lio/grpc/internal/InternalSubchannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/OobChannel;

.field public final synthetic val$subchannel:Lio/grpc/internal/InternalSubchannel;


# direct methods
.method public constructor <init>(Lio/grpc/internal/OobChannel;Lio/grpc/internal/InternalSubchannel;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/OobChannel$3;->this$0:Lio/grpc/internal/OobChannel;

    iput-object p2, p0, Lio/grpc/internal/OobChannel$3;->val$subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Lio/grpc/internal/AbstractSubchannel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/OobChannel$3;->val$subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->getAddressGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getInstrumentedInternalSubchannel()Lio/grpc/InternalInstrumented;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/OobChannel$3;->val$subchannel:Lio/grpc/internal/InternalSubchannel;

    return-object v0
.end method

.method public getInternalSubchannel()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/OobChannel$3;->val$subchannel:Lio/grpc/internal/InternalSubchannel;

    return-object v0
.end method

.method public requestConnection()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/OobChannel$3;->val$subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->obtainActiveTransport()Lio/grpc/internal/ClientTransport;

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/OobChannel$3;->val$subchannel:Lio/grpc/internal/InternalSubchannel;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "OobChannel is shutdown"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel;->shutdown(Lio/grpc/Status;)V

    return-void
.end method
