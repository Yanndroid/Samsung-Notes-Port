.class Lio/grpc/internal/FailingClientTransport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/FailingClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/FailingClientTransport;

.field public final synthetic val$callback:Lio/grpc/internal/ClientTransport$PingCallback;


# direct methods
.method public constructor <init>(Lio/grpc/internal/FailingClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/FailingClientTransport$1;->this$0:Lio/grpc/internal/FailingClientTransport;

    iput-object p2, p0, Lio/grpc/internal/FailingClientTransport$1;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/FailingClientTransport$1;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iget-object v1, p0, Lio/grpc/internal/FailingClientTransport$1;->this$0:Lio/grpc/internal/FailingClientTransport;

    iget-object v1, v1, Lio/grpc/internal/FailingClientTransport;->error:Lio/grpc/Status;

    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientTransport$PingCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
