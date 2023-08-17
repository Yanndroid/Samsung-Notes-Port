.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GrpcController"


# instance fields
.field private mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->createConnectionHelpers()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    return-object p0
.end method

.method private createConnectionHelpers()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$3;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    return-void
.end method

.method private getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;

    move-result-object p1

    return-object p1
.end method

.method private isAlreadySnapReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->isAlreadySnapReleased()Z

    move-result v0

    return v0
.end method

.method private resumeConcurrency(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->resumeConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public catchup(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->catchup(Ljava/lang/String;JJ)V

    return-void
.end method

.method public clearMultipleTransformData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->clearMultipleTransformData()V

    return-void
.end method

.method public clearSubmitData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->clearSubmitData()V

    return-void
.end method

.method public clearTransformData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->clearTransformData()V

    return-void
.end method

.method public clearTransformWithMultipleData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->clearTransformWithMultipleData()V

    return-void
.end method

.method public closeHelper()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->stop()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$4;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    return-void
.end method

.method public compose(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->compose(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isVaildState()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->isAlreadySnapReleased()Z

    move-result v1

    const-string v2, "SNAP_UPLOADING"

    const-string v3, "GrpcController"

    if-eqz v1, :cond_1

    const-string v1, "connect, isAlreadySnapReleased"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connect"

    move-object v9, p4

    move-object/from16 v3, p5

    move-object/from16 v10, p6

    invoke-direct {p0, p4, v3, v10, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->getRegionDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->getJwt()Ljava/lang/String;

    move-result-object v8

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->resumeConcurrency(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "connect, pause"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->pauseConcurrency(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connectSnap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    const-string p7, "connectSnap"

    invoke-direct {p0, p4, p5, p6, p7}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;

    move-result-object p5

    iget-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p7

    move-object v0, p7

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->getRegionDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->getJwt()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->connectSnap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getJwtMode(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->close()V

    return-void
.end method

.method public disconnectSnap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->disconnectSnap()V

    return-void
.end method

.method public downloadNote(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->downloadNote(Ljava/lang/String;)V

    return-void
.end method

.method public getCoeditDataNotifyCheckPoint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getCoeditDataNotifyCheckPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoeditDataResultCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getCoeditDataResultCode()I

    move-result v0

    return v0
.end method

.method public getCoeditDataSubmitCheckPoint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getCoeditDataSubmitCheckPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComposedOps()Ljava/util/List;
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getComposedOps()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getComposedOps. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrpcController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getDeviceList()V

    return-void
.end method

.method public getMultipleTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getMultipleTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultipleTransformedOps. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrpcController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoteSnapLatestInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getNoteSnapLatestInfo(Ljava/lang/String;)V

    return-void
.end method

.method public getSnapDataDownloadStroke(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getSnapDataDownloadStroke(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getSnapDataDownloadStrokeMapKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getSnapDataDownloadStrokeMapKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSnapDataDownloadXmlData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getSnapDataDownloadXmlData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapDataResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getSnapDataResourceId()Ljava/lang/String;

    move-result-object v0

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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTransformedOps. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrpcController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformedWithMultipleOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->getTransformedWithMultipleOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTransformedWithMultipleOps. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrpcController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleCoeditDataReceiveMessages()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->handleCoeditDataReceiveMessages()V

    return-void
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$ConnectionHelperContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->initialize(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;)V

    return-void
.end method

.method public isChannelConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isChannelConnected()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataReceiveMsgEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isCoeditDataReceiveMsgEmpty()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultDeadlineExceeded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isCoeditDataResultDeadlineExceeded()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultNotFound()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isCoeditDataResultNotFound()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultOk()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isCoeditDataResultOk()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultUnavailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isCoeditDataResultUnavailable()Z

    move-result v0

    return v0
.end method

.method public isSnapDataResultOk()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->isSnapDataResultOk()Z

    move-result v0

    return v0
.end method

.method public multipleTransform(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->multipleTransform(Ljava/lang/String;)V

    return-void
.end method

.method public onStrokeApplied(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->onStrokeApplied(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public open()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->open()V

    return-void
.end method

.method public pauseConcurrency(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->pauseConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putCoeditDataSubmitRequest(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putCoeditDataSubmitRequest(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putCoeditDataSubmitRequest. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putComposeRequest(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putComposeRequest(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putComposeRequest. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GrpcController"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putMultipleTransformRequest. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public putSnapDataUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putSnapDataUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putSnapDataUploadNoteRequest. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putSnapDataUploadStrokeRequest. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putTransformRequest(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putTransformRequest. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putMultipleTransformRequest. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GrpcController"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reOpen(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->reOpen(Ljava/lang/String;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->refresh()V

    return-void
.end method

.method public refreshForReopen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->refreshForReopen()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->release()V

    return-void
.end method

.method public releaseContinuousMessageThread(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/releaseContinuousMessageThread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->releaseContinuousMessageThread(Ljava/lang/String;)V

    return-void
.end method

.method public removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->removeUndownloadedObjectInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeUnuploadedContentFileData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->removeUnuploadedContentFileData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestPermission(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->requestPermission(Z)Z

    move-result p1

    return p1
.end method

.method public requestResetWorkspace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->requestResetWorkspace(Ljava/lang/String;)V

    return-void
.end method

.method public runResumeRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mGrpcControllerState:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->runResumeRunnable()V

    return-void
.end method

.method public setCoeditDataAbnormalNotifyLostCatchType()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->setCoeditDataAbnormalNotifyLostCatchType()V

    return-void
.end method

.method public setCoeditDataAbnormalSubmitAckLostCatchupType()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->setCoeditDataAbnormalSubmitAckLostCatchupType()V

    return-void
.end method

.method public setCoeditDataNormalNewMemberCatchType()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->setCoeditDataNormalNewMemberCatchType()V

    return-void
.end method

.method public snapDataRequestUploadFileData(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapDataRequestUploadFileData size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrpcController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->snapDataRequestUploadFileData(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public submit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->submit(Ljava/lang/String;)V

    return-void
.end method

.method public transform(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->transform(Ljava/lang/String;)V

    return-void
.end method

.method public transformWithMultiple(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->transformWithMultiple(Ljava/lang/String;)V

    return-void
.end method

.method public uploadNote(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->uploadNote(Ljava/lang/String;)V

    return-void
.end method

.method public uploadStroke(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->mConnectionHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;->uploadStroke(Ljava/lang/String;)V

    return-void
.end method
