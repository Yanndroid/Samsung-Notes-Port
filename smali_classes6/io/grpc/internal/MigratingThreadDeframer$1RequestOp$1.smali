.class Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->run(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;

.field public final synthetic val$link:Lio/perfmark/Link;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;Lio/perfmark/Link;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;->this$1:Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;

    iput-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;->val$link:Lio/perfmark/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MigratingThreadDeframer.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;->val$link:Lio/perfmark/Link;

    invoke-static {v1}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp$1;->this$1:Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;

    iget-object v2, v1, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iget v1, v1, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;->val$numMessages:I

    invoke-static {v2, v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$200(Lio/grpc/internal/MigratingThreadDeframer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v1
.end method
