.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComposeRunnable"


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    return-void
.end method

.method private printRequest(Ljava/lang/String;LcoeditOtMessage/ComposeRequest;)V
    .locals 3

    const-string v0, "ComposeRunnable"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, LcoeditOtMessage/ComposeRequest;->getPairsCount()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request# pairsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, LcoeditOtMessage/ComposeRequest;->getPairsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LcoeditOtMessage/IdxCedOpsPair;

    const-string v0, "Request"

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printResponse(LcoeditOtMessage/ComposeResponse;)V
    .locals 4

    const-string v0, "ComposeRunnable"

    if-nez p1, :cond_0

    const-string p1, "Response# invalid request"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, LcoeditOtMessage/ComposeResponse;->hasPairs()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response# hasPairs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LcoeditOtMessage/ComposeResponse;->getPairs()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object p1

    const-string v0, "Response"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ComposeRunnable"

    return-object v0
.end method

.method public run()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isComposeRequestEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string v1, "ComposeRunnable, Warning request is empty"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeComposeRequest()LcoeditOtMessage/ComposeRequest;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->printRequest(Ljava/lang/String;LcoeditOtMessage/ComposeRequest;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->compose(Ljava/lang/String;LcoeditOtMessage/ComposeRequest;)LcoeditOtMessage/ComposeResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->printResponse(LcoeditOtMessage/ComposeResponse;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putComposeResponse(LcoeditOtMessage/ComposeResponse;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    const-string v2, "ComposeRunnable, Success"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to compose, requestId: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], error: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ComposeRunnable"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->reconnect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ComposeRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComposeRunnable, Error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->releaseLock(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
