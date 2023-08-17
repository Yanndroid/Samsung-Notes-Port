.class final Lio/grpc/Context$CancellableContext$1CancelOnExpiration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/Context$CancellableContext;->setUpDeadlineCancellation(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CancelOnExpiration"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/Context$CancellableContext;


# direct methods
.method public constructor <init>(Lio/grpc/Context$CancellableContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/Context$CancellableContext$1CancelOnExpiration;->this$0:Lio/grpc/Context$CancellableContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/grpc/Context$CancellableContext$1CancelOnExpiration;->this$0:Lio/grpc/Context$CancellableContext;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "context timed out"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Cancel threw an exception, which should not happen"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
