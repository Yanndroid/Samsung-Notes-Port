.class Lio/grpc/okhttp/AsyncSink$1;
.super Lio/grpc/okhttp/AsyncSink$WriteRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/AsyncSink;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final link:Lio/perfmark/Link;

.field public final synthetic this$0:Lio/grpc/okhttp/AsyncSink;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/AsyncSink;)V
    .locals 1

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/AsyncSink$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/AsyncSink$1;)V

    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink$1;->link:Lio/perfmark/Link;

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 5

    const-string v0, "WriteRunnable.runWrite"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink$1;->link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v1}, Lio/grpc/okhttp/AsyncSink;->access$100(Lio/grpc/okhttp/AsyncSink;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v2}, Lio/grpc/okhttp/AsyncSink;->access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v3}, Lio/grpc/okhttp/AsyncSink;->access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/grpc/okhttp/AsyncSink;->access$302(Lio/grpc/okhttp/AsyncSink;Z)Z

    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v2}, Lio/grpc/okhttp/AsyncSink;->access$400(Lio/grpc/okhttp/AsyncSink;)I

    move-result v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v1}, Lio/grpc/okhttp/AsyncSink;->access$500(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;

    move-result-object v1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-interface {v1, v0, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V

    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v0}, Lio/grpc/okhttp/AsyncSink;->access$100(Lio/grpc/okhttp/AsyncSink;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink$1;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v1, v2}, Lio/grpc/okhttp/AsyncSink;->access$420(Lio/grpc/okhttp/AsyncSink;I)I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "WriteRunnable.runWrite"

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    const-string v1, "WriteRunnable.runWrite"

    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
.end method
