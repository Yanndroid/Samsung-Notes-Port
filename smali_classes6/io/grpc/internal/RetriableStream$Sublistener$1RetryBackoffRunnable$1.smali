.class Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;


# direct methods
.method public constructor <init>(Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;->this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable$1;->this$2:Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    iget-object v1, v0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;->val$newSubstream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v1, v0}, Lio/grpc/internal/RetriableStream;->access$1100(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    return-void
.end method
