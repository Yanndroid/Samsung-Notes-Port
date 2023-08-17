.class Lio/grpc/internal/InternalSubchannel$1;
.super Lio/grpc/internal/InUseStateAggregator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator<",
        "Lio/grpc/internal/ConnectionClientTransport;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/InternalSubchannel;


# direct methods
.method public constructor <init>(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInUse()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel$Callback;->onInUse(Lio/grpc/internal/InternalSubchannel;)V

    return-void
.end method

.method public handleNotInUse()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel$Callback;->onNotInUse(Lio/grpc/internal/InternalSubchannel;)V

    return-void
.end method
