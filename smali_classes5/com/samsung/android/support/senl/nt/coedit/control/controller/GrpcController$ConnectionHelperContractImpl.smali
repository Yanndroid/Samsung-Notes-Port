.class Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionHelperContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStrokeBinary(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->isImplementation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->saveDownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->applyStrokeBinary(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyStrokeBinary. can\'t saveDownloadedStrokeInfo id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleDownloadUrlMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public handleReceiveDeviceList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->handleDeviceListChange(Ljava/lang/String;)V

    return-void
.end method

.method public handleReceiveServerResponse(JJJJJZ)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->handleReceiveServerResponse(JJJJJZ)V

    return-void
.end method

.method public handleResetWorkspaceResponse(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->handleResetWorkspaceResponse(J)V

    return-void
.end method

.method public handleWorkspaceBlock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->handleWorkspaceBlock()V

    return-void
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->isConcurrencyPausedByNetwork()Z

    move-result v0

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->onContentFileUploadError(I)V

    return-void
.end method

.method public onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->onSnapError(Ljava/lang/String;)V

    return-void
.end method

.method public putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public saveDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAbnormalAckCheckPoint(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->setAbnormalAckCheckPoint(J)V

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->setLock(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    return-void
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->wakeConcurrencyPool()V

    return-void
.end method
