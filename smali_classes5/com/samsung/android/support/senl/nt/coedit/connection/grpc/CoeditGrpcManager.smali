.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditGrpcManager"


# instance fields
.field private mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

.field private mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->addUploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V

    const/16 p1, 0x65

    const-string v0, "GetObjectUploadUrl"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    return-void
.end method

.method public clearComposeData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearComposeRequestQueue()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearComposeResponseQueue()V

    return-void
.end method

.method public clearMultipleTransformData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearMultipleTransformRequestQueue()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearMultipleTransformResponseQueue()V

    return-void
.end method

.method public clearSubmitData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->clearSubmitRequestQueue()V

    return-void
.end method

.method public clearTransformData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearTransformRequestQueue()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearTransformResponseQueue()V

    return-void
.end method

.method public clearTransformWithMultipleData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearTransformWithMultipleRequestQueue()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->clearTransformWithMultipleResponseQueue()V

    return-void
.end method

.method public coeditDataRequestUploadObjects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->addUploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;)V
    .locals 14

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createChannel workspaceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CoeditGrpcManager"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    const-string v5, "443"

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    const-string v5, "443"

    move-object v3, v1

    move-object/from16 v10, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    const-string v1, "createChannel"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoeditTransform(Ljava/lang/String;I)V

    return-void
.end method

.method public findStrokeData([B)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->findStrokeData([B)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;

    move-result-object p1

    return-object p1
.end method

.method public getCoeditDataNotifyCheckPoint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNotifyCheckPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoeditDataReceiveMsgData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->takeReceiveMsg()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCoeditDataResultCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getResultCode()I

    move-result v0

    return v0
.end method

.method public getCoeditDataSubmitCheckPoint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getSubmitCheckPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComposedOps()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isComposeResponseEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CoeditGrpcManager"

    const-string v1, "getComposeResponse is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeComposeResponse()LcoeditOtMessage/ComposeResponse;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOtMessage/ComposeResponse;->getPairs()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMultipleTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isMultipleTransformResponseEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeMultipleTransformResponse()LcoeditOtMessage/MultipleTransformResponse;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LcoeditOtMessage/MultipleTransformResponse;->getFirstList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v3}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v3

    invoke-virtual {v3}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    invoke-virtual {v0}, LcoeditOtMessage/MultipleTransformResponse;->getSecond()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const-string v0, "CoeditGrpcManager"

    const-string v1, "getMultipleTransformedOps is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformResponseEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeTransformResponse()LcoeditOtMessage/TransformResponse;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    invoke-virtual {v0}, LcoeditOtMessage/TransformResponse;->getFirstTransformed()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v2

    invoke-virtual {v2}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v2

    invoke-virtual {v2}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, LcoeditOtMessage/TransformResponse;->getSecondTransformed()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v0, "CoeditGrpcManager"

    const-string v1, "TransformedOps is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformedWithMultipleOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->isTransformWithMultipleResponseEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->takeTransformWithMultipleResponse()LcoeditOtMessage/TransformWithMultipleResponse;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->getSecondList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v3}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v3

    invoke-virtual {v3}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    invoke-virtual {v0}, LcoeditOtMessage/TransformWithMultipleResponse;->getFirst()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const-string v0, "CoeditGrpcManager"

    const-string v1, "getTransformedWithMultipleOps is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUndownloadedObjectInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getUndownloadedObjectInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnuploadedNoteOpFileDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getUnuploadedNoteOpFileDatas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    const-string v0, "CoeditGrpcManager"

    const-string v1, "getWorkspaceVersion. CoeditClient is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public initUploadedStroke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->initUploadedStrokeObjectInfos()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->initUploadStrokeRequestSize(J)V

    return-void
.end method

.method public isChannelConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoeditDataReceiveMsgEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isReceiveMsgQueueEmpty()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultDeadlineExceeded()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoeditDataResultNotFound()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoeditDataResultOk()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoeditDataResultUnavailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataResultCode()I

    move-result v0

    sget-object v1, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUploadStrokeFailed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isUploadStrokeFailed()Z

    move-result v0

    return v0
.end method

.method public isUploadStrokeFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->isUploadStrokeFinished()Z

    move-result v0

    return v0
.end method

.method public putCoeditDataDownloadStrokeMsgQueue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putDownloadStrokeRequest(Ljava/lang/String;)V

    return-void
.end method

.method public putCoeditDataUploadStrokeMsgQueue(Ljava/lang/String;JLjava/lang/String;[B)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putUploadStrokeRequest(Ljava/lang/String;JLjava/lang/String;[B)V

    return-void
.end method

.method public putComposeRequest(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->clearComposeData()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putComposeRequest(Ljava/util/List;)V

    return-void
.end method

.method public putDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public putPermissionRequest(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putPermissionRequest(Z)V

    return-void
.end method

.method public putSubmitRequest(Ljava/util/List;JLjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putSubmitRequest(Ljava/util/List;JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public putTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putTransformRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->getTransformData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformData;->putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public refreshForReopen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->refreshForReopen()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->refreshForReopen()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    :cond_1
    return-void
.end method

.method public releaseContinuousMessageThread(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseContinuousMessageThread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->releaseContinuousMessageThread(Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadStrokeData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeDownloadStrokeData(Ljava/lang/String;)V

    return-void
.end method

.method public removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeUndownloadedObjectInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeUnuploadedContentFileData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeUnuploadedContentFileData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestCatchup(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setCatchupStartCheckPoint(J)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setCatchupEndCheckPoint(J)V

    return-void
.end method

.method public requestCoedit(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCoedit, skip, CoeditClient is invalid, message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoeditGrpcManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->request(Ljava/lang/String;I)V

    return-void
.end method

.method public requestCoeditTransform(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditTransformClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCoeditTransform, skip, CoeditTransformClient is invalid, message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoeditGrpcManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditTransformClient;->request(Ljava/lang/String;I)V

    return-void
.end method

.method public requestDownloadObject(LcoeditCoreMessage/ObjectInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->addDownloadContentFileObjectInfo(LcoeditCoreMessage/ObjectInfo;)V

    const-string p1, "GetSignedDownloadUrl"

    const/16 v0, 0x66

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    return-void
.end method

.method public setCoeditDataCatchupType(LcoeditCoreMessage/CatchupType;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setCatchupType(LcoeditCoreMessage/CatchupType;)V

    return-void
.end method

.method public setCoeditDataNotifyCheckPoint(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setNotifyCheckPoint(J)V

    return-void
.end method

.method public setCoeditDataSubmitCheckPoint(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setSubmitCheckPoint(J)V

    return-void
.end method

.method public setObjectInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getUploadedStrokeObjectInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getFileData()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v4}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v5

    invoke-virtual {v5}, LcoeditCoreMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getFileData()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setBinaryHash(Ljava/lang/String;)V

    invoke-virtual {v4}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/BinaryInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setBinarySize(J)V

    invoke-virtual {v4}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v2

    invoke-virtual {v2}, LcoeditCoreMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setBinaryMimeType(Ljava/lang/String;)V

    invoke-virtual {v4}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setObjectId(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_0

    invoke-static {}, LcoeditCoreMessage/ObjectInfo;->newBuilder()LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v2

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->newBuilder()LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getBinaryHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LcoeditCoreMessage/BinaryInfo$Builder;->setHash(Ljava/lang/String;)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getBinarySize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, LcoeditCoreMessage/BinaryInfo$Builder;->setSize(J)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getBinaryMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LcoeditCoreMessage/BinaryInfo$Builder;->setMimetype(Ljava/lang/String;)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v2, v3}, LcoeditCoreMessage/ObjectInfo$Builder;->setBinaryInfo(LcoeditCoreMessage/BinaryInfo;)LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LcoeditCoreMessage/ObjectInfo$Builder;->setObjId(Ljava/lang/String;)LcoeditCoreMessage/ObjectInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, LcoeditCoreMessage/ObjectInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public setResponsedWorkspaceVersion(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->mCoeditClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/CoeditGrpcClient;->getCoeditData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResponsedWorkspaceVersion(J)V

    :cond_0
    return-void
.end method

.method public stopChannel()V
    .locals 2

    const-string v0, "stopChannel"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoeditTransform(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    return-void
.end method
