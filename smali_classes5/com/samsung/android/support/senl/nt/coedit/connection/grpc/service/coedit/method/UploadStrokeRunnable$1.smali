.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;->requestUploadStroke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "LcoeditObjectMessage/UploadStrokeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

.field public final synthetic val$binaryInfoRequest:LcoeditObjectMessage/UploadStrokeRequest;

.field public final synthetic val$finishLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;Ljava/util/concurrent/CountDownLatch;LcoeditObjectMessage/UploadStrokeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$binaryInfoRequest:LcoeditObjectMessage/UploadStrokeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleUploadedStrokeObjectId(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UploadStrokeRunnable"

    const-string v0, "handleUploadedStrokeObjectId, objectId is empty."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-static {}, LcoeditCoreMessage/ObjectInfo;->newBuilder()LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v1

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->newBuilder()LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$binaryInfoRequest:LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v3}, LcoeditObjectMessage/UploadStrokeRequest;->getBinaryInfo()LcoeditObjectMessage/BinaryInfo;

    move-result-object v3

    invoke-virtual {v3}, LcoeditObjectMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LcoeditCoreMessage/BinaryInfo$Builder;->setHash(Ljava/lang/String;)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$binaryInfoRequest:LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v3}, LcoeditObjectMessage/UploadStrokeRequest;->getBinaryInfo()LcoeditObjectMessage/BinaryInfo;

    move-result-object v3

    invoke-virtual {v3}, LcoeditObjectMessage/BinaryInfo;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, LcoeditCoreMessage/BinaryInfo$Builder;->setSize(J)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$binaryInfoRequest:LcoeditObjectMessage/UploadStrokeRequest;

    invoke-virtual {v3}, LcoeditObjectMessage/UploadStrokeRequest;->getBinaryInfo()LcoeditObjectMessage/BinaryInfo;

    move-result-object v3

    invoke-virtual {v3}, LcoeditObjectMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LcoeditCoreMessage/BinaryInfo$Builder;->setMimetype(Ljava/lang/String;)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v1, v2}, LcoeditCoreMessage/ObjectInfo$Builder;->setBinaryInfo(LcoeditCoreMessage/BinaryInfo;)LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, LcoeditCoreMessage/ObjectInfo$Builder;->setObjId(Ljava/lang/String;)LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->addUploadedStrokeObjectInfo(LcoeditCoreMessage/ObjectInfo;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseObserver, onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadStrokeRunnable"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;->access$000(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;->setResultCode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->val$finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNext(LcoeditObjectMessage/UploadStrokeResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;->b(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;LcoeditObjectMessage/UploadStrokeResponse;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;

    invoke-virtual {p1}, LcoeditObjectMessage/UploadStrokeResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object v1

    invoke-virtual {v1}, LcoeditObjectMessage/ResponseResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable;->setResultCode(I)V

    invoke-virtual {p1}, LcoeditObjectMessage/UploadStrokeResponse;->getObjId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->handleUploadedStrokeObjectId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/UploadStrokeRunnable$1;->onNext(LcoeditObjectMessage/UploadStrokeResponse;)V

    return-void
.end method
