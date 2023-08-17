.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultipleTransformRunnable"


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    return-void
.end method

.method private printRequest(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;)V
    .locals 3

    const-string v0, "MultipleTransformRunnable"

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

    invoke-virtual {p2}, LcoeditOtMessage/MultipleTransformRequest;->getFirstCount()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request# FirstOpCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p2, v0}, LcoeditOtMessage/MultipleTransformRequest;->getFirst(I)LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v1

    const-string v2, "Request/FirstOp"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, LcoeditOtMessage/MultipleTransformRequest;->getSecond()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    const-string p2, "Request/SecondOp"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private printResponse(LcoeditOtMessage/MultipleTransformResponse;)V
    .locals 4

    const-string v0, "MultipleTransformRunnable"

    if-nez p1, :cond_0

    const-string p1, "printResponse# invalid response"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, LcoeditOtMessage/MultipleTransformResponse;->getFirstCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response# FirstTransformedOpCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, LcoeditOtMessage/MultipleTransformResponse;->getFirst(I)LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v2

    const-string v3, "Response/FirstTransformedOp"

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LcoeditOtMessage/MultipleTransformResponse;->getSecond()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    const-string v0, "Response/SecondTransformedOp"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private retryMultipleTransform(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/MultipleTransformResponse;)V
    .locals 2

    const-string v0, "MultipleTransformRunnable"

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getRetryCount()I

    move-result v1

    if-gt p3, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " exceed retry count"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->setPausedByNetwork(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string p2, "retryMultipleTransform response"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    const-string p3, "retryMultipleTransform"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->increaseRetryCount()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->printRequest(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putMultipleTransformRequest(LcoeditOtMessage/MultipleTransformRequest;)V

    const-wide/16 p1, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "retryMultipleTransform, Failed reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MultipleTransformRunnable"

    return-object v0
.end method

.method public run()V
    .locals 10

    const-string v0, "Failed to MultipleTransform. "

    const-string v1, "MultipleTransformRunnable"

    const-string v2, "MultipleTransform response"

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ""

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeMultipleTransformRequest()LcoeditOtMessage/MultipleTransformRequest;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->printRequest(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;)V

    invoke-virtual {v5}, LcoeditOtMessage/MultipleTransformRequest;->getFirstOrBuilderList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, LcoeditOtMessage/MultipleTransformRequest;->hasSecond()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->transform(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;)LcoeditOtMessage/MultipleTransformResponse;

    move-result-object v6
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->printResponse(LcoeditOtMessage/MultipleTransformResponse;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putMultipleTransformResponse(LcoeditOtMessage/MultipleTransformResponse;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string v7, "MultipleTransformRunnable no one list"

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_1
    move-exception v6

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    :goto_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isRetryNeeded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    invoke-direct {p0, v3, v5, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->retryMultipleTransform(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/MultipleTransformResponse;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->reconnect(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string v4, "CONCURRENCY_ERROR_MULTIPLE_TRANSFORM_FAILED"

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_6

    :catch_4
    move-exception v6

    move-object v5, v4

    :goto_5
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->retryMultipleTransform(Ljava/lang/String;LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/MultipleTransformResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_6
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_7
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformRequestEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/MultipleTransformRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    :cond_6
    throw v0

    :cond_7
    return-void
.end method
