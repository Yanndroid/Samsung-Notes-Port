.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateBalancingState"
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field public final synthetic val$newPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

.field public final synthetic val$newState:Lio/grpc/ConnectivityState;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/ConnectivityState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newState:Lio/grpc/ConnectivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5200(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newState:Lio/grpc/ConnectivityState;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    aput-object v4, v2, v3

    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ConnectivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1UpdateBalancingState;->val$newState:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ConnectivityStateManager;->gotoState(Lio/grpc/ConnectivityState;)V

    :cond_1
    return-void
.end method
