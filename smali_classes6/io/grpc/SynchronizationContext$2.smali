.class Lio/grpc/SynchronizationContext$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/SynchronizationContext;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/SynchronizationContext;

.field public final synthetic val$delay:J

.field public final synthetic val$runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

.field public final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/grpc/SynchronizationContext;Lio/grpc/SynchronizationContext$ManagedRunnable;Ljava/lang/Runnable;J)V
    .locals 0

    iput-object p1, p0, Lio/grpc/SynchronizationContext$2;->this$0:Lio/grpc/SynchronizationContext;

    iput-object p2, p0, Lio/grpc/SynchronizationContext$2;->val$runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

    iput-object p3, p0, Lio/grpc/SynchronizationContext$2;->val$task:Ljava/lang/Runnable;

    iput-wide p4, p0, Lio/grpc/SynchronizationContext$2;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/SynchronizationContext$2;->this$0:Lio/grpc/SynchronizationContext;

    iget-object v1, p0, Lio/grpc/SynchronizationContext$2;->val$runnable:Lio/grpc/SynchronizationContext$ManagedRunnable;

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/SynchronizationContext$2;->val$task:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(scheduled in SynchronizationContext with delay of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/grpc/SynchronizationContext$2;->val$delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
