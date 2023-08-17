.class final Lio/grpc/internal/ConnectivityStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ConnectivityStateManager$Listener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/internal/ConnectivityStateManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:Lio/grpc/ConnectivityState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    return-void
.end method


# virtual methods
.method public getState()Lio/grpc/ConnectivityState;
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Channel state API is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gotoState(Lio/grpc/ConnectivityState;)V
    .locals 2
    .param p1    # Lio/grpc/ConnectivityState;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    iput-object p1, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    iget-object p1, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ConnectivityStateManager$Listener;

    invoke-virtual {v0}, Lio/grpc/internal/ConnectivityStateManager$Listener;->runInExecutor()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyWhenStateChanged(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lio/grpc/ConnectivityState;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/grpc/internal/ConnectivityStateManager$Listener;

    invoke-direct {v0, p1, p2}, Lio/grpc/internal/ConnectivityStateManager$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lio/grpc/internal/ConnectivityStateManager;->state:Lio/grpc/ConnectivityState;

    if-eq p1, p3, :cond_0

    invoke-virtual {v0}, Lio/grpc/internal/ConnectivityStateManager$Listener;->runInExecutor()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/grpc/internal/ConnectivityStateManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
