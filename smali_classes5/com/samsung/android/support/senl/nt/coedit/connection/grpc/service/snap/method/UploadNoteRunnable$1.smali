.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->getRequestObserver(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Lio/grpc/stub/StreamObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "LnoteSnapMessage/UploadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

.field public final synthetic val$finishLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    const-string v0, "UploadNoteRunnable"

    const-string v1, "[CS5-1] responseObserver, onCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS5-2] responseObserver, onError1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadNoteRunnable"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->d(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LnoteSnapMessage/UploadResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->onNext(LnoteSnapMessage/UploadResponse;)V

    return-void
.end method

.method public onNext(LnoteSnapMessage/UploadResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->f(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;LnoteSnapMessage/UploadResponse;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-virtual {p1}, LnoteSnapMessage/UploadResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/ResponseResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {p1}, LnoteSnapMessage/UploadResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResourceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;->d(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/UploadNoteRunnable;Z)V

    return-void
.end method
