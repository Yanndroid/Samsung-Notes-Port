.class Lio/grpc/internal/InternalSubchannel$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->handleTransportInUseState(Lio/grpc/internal/ConnectionClientTransport;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field public final synthetic val$inUse:Z

.field public final synthetic val$transport:Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method public constructor <init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$7;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$7;->val$transport:Lio/grpc/internal/ConnectionClientTransport;

    iput-boolean p3, p0, Lio/grpc/internal/InternalSubchannel$7;->val$inUse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$7;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1900(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$7;->val$transport:Lio/grpc/internal/ConnectionClientTransport;

    iget-boolean v2, p0, Lio/grpc/internal/InternalSubchannel$7;->val$inUse:Z

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    return-void
.end method
