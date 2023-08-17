.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "LcoeditObjectMessage/DownloadStrokeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;

.field public final synthetic val$finishLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$request:LcoeditObjectMessage/DownloadStrokeRequest;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;LcoeditObjectMessage/DownloadStrokeRequest;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->val$request:LcoeditObjectMessage/DownloadStrokeRequest;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStrokeResponse, onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadStrokeRunnable"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadStrokeResponse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->access$100(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNext(LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->val$request:LcoeditObjectMessage/DownloadStrokeRequest;

    invoke-virtual {v1}, LcoeditObjectMessage/DownloadStrokeRequest;->getObjId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable;Ljava/lang/String;LcoeditObjectMessage/DownloadStrokeResponse;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "interrupted during download stroke"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/DownloadStrokeRunnable$1;->onNext(LcoeditObjectMessage/DownloadStrokeResponse;)V

    return-void
.end method
