.class final Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->notifyWhenStateChanged(Lio/grpc/ConnectivityState;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NotifyStateChanged"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;

.field public final synthetic val$callback:Ljava/lang/Runnable;

.field public final synthetic val$source:Lio/grpc/ConnectivityState;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Runnable;Lio/grpc/ConnectivityState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->val$callback:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->val$source:Lio/grpc/ConnectivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ConnectivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->val$callback:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$4600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;->val$source:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/internal/ConnectivityStateManager;->notifyWhenStateChanged(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lio/grpc/ConnectivityState;)V

    return-void
.end method
