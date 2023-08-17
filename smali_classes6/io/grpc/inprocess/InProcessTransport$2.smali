.class Lio/grpc/inprocess/InProcessTransport$2;
.super Lio/grpc/internal/InUseStateAggregator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator<",
        "Lio/grpc/inprocess/InProcessTransport$InProcessStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/inprocess/InProcessTransport;


# direct methods
.method public constructor <init>(Lio/grpc/inprocess/InProcessTransport;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$2;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInUse()V
    .locals 2

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$2;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$000(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportInUse(Z)V

    return-void
.end method

.method public handleNotInUse()V
    .locals 2

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$2;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$000(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportInUse(Z)V

    return-void
.end method
