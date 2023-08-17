.class final Lio/grpc/internal/RetriableStream$FutureCanceller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FutureCanceller"
.end annotation


# instance fields
.field public cancelled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->cancelled:Z

    return v0
.end method

.method public markCancelled()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->cancelled:Z

    iget-object v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->cancelled:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->future:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
