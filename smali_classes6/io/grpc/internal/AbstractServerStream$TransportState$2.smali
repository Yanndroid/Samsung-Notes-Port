.class Lio/grpc/internal/AbstractServerStream$TransportState$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/AbstractServerStream$TransportState;->complete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/AbstractServerStream$TransportState;


# direct methods
.method public constructor <init>(Lio/grpc/internal/AbstractServerStream$TransportState;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/AbstractServerStream$TransportState$2;->this$0:Lio/grpc/internal/AbstractServerStream$TransportState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState$2;->this$0:Lio/grpc/internal/AbstractServerStream$TransportState;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-static {v0, v1}, Lio/grpc/internal/AbstractServerStream$TransportState;->access$100(Lio/grpc/internal/AbstractServerStream$TransportState;Lio/grpc/Status;)V

    return-void
.end method
