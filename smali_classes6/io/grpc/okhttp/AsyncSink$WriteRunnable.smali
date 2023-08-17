.class abstract Lio/grpc/okhttp/AsyncSink$WriteRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/AsyncSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "WriteRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/okhttp/AsyncSink;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/AsyncSink;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/AsyncSink$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/okhttp/AsyncSink$WriteRunnable;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    return-void
.end method


# virtual methods
.method public abstract doRun()V
.end method

.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v0}, Lio/grpc/okhttp/AsyncSink;->access$500(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/okhttp/AsyncSink$WriteRunnable;->doRun()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to perform write due to unavailable sink."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink$WriteRunnable;->this$0:Lio/grpc/okhttp/AsyncSink;

    invoke-static {v1}, Lio/grpc/okhttp/AsyncSink;->access$700(Lio/grpc/okhttp/AsyncSink;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;->onException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
