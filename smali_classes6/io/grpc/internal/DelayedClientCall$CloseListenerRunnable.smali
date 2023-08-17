.class final Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;
.super Lio/grpc/internal/ContextRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CloseListenerRunnable"
.end annotation


# instance fields
.field public final listener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final status:Lio/grpc/Status;

.field public final synthetic this$0:Lio/grpc/internal/DelayedClientCall;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {p1}, Lio/grpc/internal/DelayedClientCall;->access$300(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->listener:Lio/grpc/ClientCall$Listener;

    iput-object p3, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->status:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->listener:Lio/grpc/ClientCall$Listener;

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->status:Lio/grpc/Status;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method
