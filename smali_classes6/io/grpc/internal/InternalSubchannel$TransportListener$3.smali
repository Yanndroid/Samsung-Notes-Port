.class Lio/grpc/internal/InternalSubchannel$TransportListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel$TransportListener;->transportTerminated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/InternalSubchannel$TransportListener;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$3;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$3;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1700(Lio/grpc/internal/InternalSubchannel;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$3;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v1, v1, Lio/grpc/internal/InternalSubchannel$TransportListener;->transport:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$3;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$3;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1700(Lio/grpc/internal/InternalSubchannel;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$TransportListener$3;->this$1:Lio/grpc/internal/InternalSubchannel$TransportListener;

    iget-object v0, v0, Lio/grpc/internal/InternalSubchannel$TransportListener;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1800(Lio/grpc/internal/InternalSubchannel;)V

    :cond_0
    return-void
.end method
