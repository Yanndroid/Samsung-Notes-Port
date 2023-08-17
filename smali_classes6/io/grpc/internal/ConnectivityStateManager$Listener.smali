.class final Lio/grpc/internal/ConnectivityStateManager$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ConnectivityStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation


# instance fields
.field public final callback:Ljava/lang/Runnable;

.field public final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ConnectivityStateManager$Listener;->callback:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/grpc/internal/ConnectivityStateManager$Listener;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public runInExecutor()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/ConnectivityStateManager$Listener;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lio/grpc/internal/ConnectivityStateManager$Listener;->callback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
