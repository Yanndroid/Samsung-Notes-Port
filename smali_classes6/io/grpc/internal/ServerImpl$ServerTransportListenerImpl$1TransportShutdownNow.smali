.class Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransportShutdownNow"
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1TransportShutdownNow;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->access$800(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;)Lio/grpc/internal/ServerTransport;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v2, "Handshake timeout exceeded"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ServerTransport;->shutdownNow(Lio/grpc/Status;)V

    return-void
.end method
