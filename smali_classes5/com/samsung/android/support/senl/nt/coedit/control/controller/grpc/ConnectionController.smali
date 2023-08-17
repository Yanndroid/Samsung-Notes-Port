.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;


# instance fields
.field private mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;

    move-result-object p1

    return-object p1
.end method

.method public getJwtMode(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->getJwtMode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlreadySnapReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->isAlreadySnapReleased()Z

    move-result v0

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->onContentFileUploadError(I)V

    return-void
.end method

.method public pauseConcurrency(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->pauseConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public releaseGrpcContract()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->resumeConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->mConnectionContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    return-void
.end method
