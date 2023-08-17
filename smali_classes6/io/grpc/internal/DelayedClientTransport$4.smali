.class Lio/grpc/internal/DelayedClientTransport$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;

.field public final synthetic val$status:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$4;->this$0:Lio/grpc/internal/DelayedClientTransport;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$4;->val$status:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$4;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$100(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$4;->val$status:Lio/grpc/Status;

    invoke-interface {v0, v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    return-void
.end method
