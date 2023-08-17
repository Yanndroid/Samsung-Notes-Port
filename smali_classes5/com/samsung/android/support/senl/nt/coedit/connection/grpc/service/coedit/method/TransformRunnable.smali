.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransformRunnable"


# instance fields
.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    return-void
.end method

.method private printRequest(Ljava/lang/String;LcoeditOtMessage/TransformRequest;)V
    .locals 3

    const-string v0, "TransformRunnable"

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request# invalid request, requestId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request# requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestByte Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, LcoeditOtMessage/TransformRequest;->getFirst()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    const-string v0, "Request/FirstOp"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    invoke-virtual {p2}, LcoeditOtMessage/TransformRequest;->getSecond()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    const-string p2, "Request/SecondOp"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private printResponse(LcoeditOtMessage/TransformResponse;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "TransformRunnable"

    const-string v0, "Response# invalid request"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, LcoeditOtMessage/TransformResponse;->getFirstTransformed()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    const-string v1, "Response/FirstTransformedOp"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    invoke-virtual {p1}, LcoeditOtMessage/TransformResponse;->getSecondTransformed()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    const-string v0, "Response/SecondTransformedOp"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private retryTransform(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/TransformResponse;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getRetryCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->needBlockCoedit(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->increaseRetryCount()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putTransformRequest(LcoeditOtMessage/TransformRequest;)V

    const-wide/16 p1, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retryTransform, Failed reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TransformRunnable"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "TransformRunnable"

    return-object v0
.end method

.method public run()V
    .locals 9

    const-string v0, "Failed to Transform. "

    const-string v1, "TransformRunnable"

    const-string v2, "TransformWithMultiple response"

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformRequestEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeTransformRequest()LcoeditOtMessage/TransformRequest;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->printRequest(Ljava/lang/String;LcoeditOtMessage/TransformRequest;)V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v6, v5, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->transform(Ljava/lang/String;LcoeditOtMessage/TransformRequest;)LcoeditOtMessage/TransformResponse;

    move-result-object v5
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->printResponse(LcoeditOtMessage/TransformResponse;)V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putTransformResponse(LcoeditOtMessage/TransformResponse;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformRequestEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    :goto_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isRetryNeeded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->retryTransform(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/TransformResponse;)V

    goto :goto_4

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "CONCURRENCY_ERROR_MULTIPLE_TRANSFORM_FAILED"

    if-eqz v4, :cond_2

    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->reconnect(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    :goto_3
    invoke-virtual {v3, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformRequestEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_4
    move-exception v5

    move-object v4, v3

    :goto_5
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transform, Timeout, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->showToast(Ljava/lang/String;)V

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->retryTransform(LcoeditOtMessage/TransformRequest;LcoeditOtMessage/TransformResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformRequestEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :goto_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformRequestEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/TransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method
