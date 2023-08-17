.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->downloadNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "LnoteSnapMessage/DownloadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

.field public final synthetic val$byteArrayInOutStream:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;

.field public final synthetic val$finishLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->val$byteArrayInOutStream:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    const-string v0, "NT/DownloadNoteRunnable"

    const-string v1, "NoteSnapDownloadResponse, onCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->val$byteArrayInOutStream:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->c(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoteSnapDownloadResponse, onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NT/DownloadNoteRunnable"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->onNext(LnoteSnapMessage/DownloadResponse;)V

    return-void
.end method

.method public onNext(LnoteSnapMessage/DownloadResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->isInterrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    new-instance p1, Ljava/lang/InterruptedException;

    const-string v0, "NT/DownloadNoteRunnable onNext interrupted, download note ignored"

    invoke-direct {p1, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;LnoteSnapMessage/DownloadResponse;)V

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->hasBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->val$byteArrayInOutStream:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinary()LnoteSnapMessage/Binary;

    move-result-object v1

    invoke-virtual {v1}, LnoteSnapMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getBinary()LnoteSnapMessage/Binary;

    move-result-object v3

    invoke-virtual {v3}, LnoteSnapMessage/Binary;->getReadSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->hasResponseResult()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LnoteSnapMessage/DownloadResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p1}, LnoteSnapMessage/ResponseResult;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    sget-object v0, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    new-instance p1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->onError(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    :cond_3
    return-void
.end method
