.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;


# instance fields
.field private mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDeviceListChange(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->handleDeviceListChange(Ljava/lang/String;)V

    return-void
.end method

.method public onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseGrpcContract()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    return-void
.end method

.method public saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->mViewContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->showToast(Ljava/lang/String;)V

    return-void
.end method
