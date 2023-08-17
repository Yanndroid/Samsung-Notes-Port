.class Lio/grpc/internal/AbstractClientStream$TransportState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/AbstractClientStream$TransportState;

.field public final synthetic val$rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field public final synthetic val$status:Lio/grpc/Status;

.field public final synthetic val$trailers:Lio/grpc/Metadata;


# direct methods
.method public constructor <init>(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->this$0:Lio/grpc/internal/AbstractClientStream$TransportState;

    iput-object p2, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->val$status:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->val$rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iput-object p4, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->val$trailers:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->this$0:Lio/grpc/internal/AbstractClientStream$TransportState;

    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->val$status:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->val$rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object v3, p0, Lio/grpc/internal/AbstractClientStream$TransportState$1;->val$trailers:Lio/grpc/Metadata;

    invoke-static {v0, v1, v2, v3}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$400(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method
