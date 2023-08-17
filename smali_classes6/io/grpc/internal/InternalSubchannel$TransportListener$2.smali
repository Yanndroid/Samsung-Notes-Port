.class Lio/grpc/internal/InternalSubchannel$TransportListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel$TransportListener;->transportShutdown(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

.field public final synthetic val$s:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/internal/InternalSubchannel$TransportListener;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->val$s:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v2, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0, v3}, Lio/grpc/internal/InternalSubchannel;->access$1002(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {v0, v1}, Lio/grpc/internal/InternalSubchannel;->access$300(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v2, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    if-ne v0, v2, :cond_4

    iget-object v0, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v1, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    const-string v2, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel$Index;->increment()V

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel$Index;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0, v3}, Lio/grpc/internal/InternalSubchannel;->access$1102(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->val$s:Lio/grpc/Status;

    invoke-static {v0, v1}, Lio/grpc/internal/InternalSubchannel;->access$2500(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$2;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$400(Lio/grpc/internal/InternalSubchannel;)V

    :cond_4
    :goto_1
    return-void
.end method
