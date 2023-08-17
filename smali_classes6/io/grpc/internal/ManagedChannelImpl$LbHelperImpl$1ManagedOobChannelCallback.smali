.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;
.super Lio/grpc/internal/InternalSubchannel$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createOobChannel(Ljava/util/List;Ljava/lang/String;)Lio/grpc/ManagedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ManagedOobChannelCallback"
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field public final synthetic val$oobChannel:Lio/grpc/internal/OobChannel;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/OobChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->val$oobChannel:Lio/grpc/internal/OobChannel;

    invoke-direct {p0}, Lio/grpc/internal/InternalSubchannel$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object p1, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {p1, p2}, Lio/grpc/internal/ManagedChannelImpl;->access$6000(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/ConnectivityStateInfo;)V

    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->val$oobChannel:Lio/grpc/internal/OobChannel;

    invoke-virtual {p1, p2}, Lio/grpc/internal/OobChannel;->handleSubchannelStateChange(Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method public onTerminated(Lio/grpc/internal/InternalSubchannel;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$800(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->val$oobChannel:Lio/grpc/internal/OobChannel;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/InternalChannelz;->removeSubchannel(Lio/grpc/InternalInstrumented;)V

    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->val$oobChannel:Lio/grpc/internal/OobChannel;

    invoke-virtual {p1}, Lio/grpc/internal/OobChannel;->handleSubchannelTerminated()V

    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedOobChannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object p1, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$5900(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method
