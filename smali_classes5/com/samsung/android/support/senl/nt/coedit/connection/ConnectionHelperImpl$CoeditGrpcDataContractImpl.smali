.class Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditGrpcDataContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Lcom/samsung/android/support/senl/nt/coedit/connection/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V

    return-void
.end method

.method private putCoeditDataNotifyBuffer(LcoeditCoreMessage/ServerMsg;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-virtual {p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCheckpoint()J

    move-result-wide v1

    invoke-virtual {p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperationList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getExtraData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->d(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;JLjava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-virtual {p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfoList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->c(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to putCoeditDataNotifyBuffer. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConnectionHelperImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->f(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V

    return-void
.end method


# virtual methods
.method public downloadContentFile(LcoeditCoreMessage/ObjectInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "downloadContentFile"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-virtual {p1}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LcoeditCoreMessage/ObjectInfo;->getDownloadSignedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "getWorkspaceId"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "isConcurrencyPausedByNetwork"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->isConcurrencyPausedByNetwork()Z

    move-result v0

    return v0
.end method

.method public notify(LcoeditCoreMessage/ServerMsg;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "notify"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->putCoeditDataNotifyBuffer(LcoeditCoreMessage/ServerMsg;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDeviceInfo()LcoeditCoreMessage/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDeviceInfo()LcoeditCoreMessage/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "reconnect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "releaseLock"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "setPausedByNetwork"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "uploadContentFile"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "wakeConcurrencyPool"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->wakeConcurrencyPool()V

    return-void
.end method
