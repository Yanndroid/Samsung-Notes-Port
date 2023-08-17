.class public Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerConnectionContractImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditGrpcPresenter"


# instance fields
.field private mCancelRequestList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

.field private mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCancelRequestList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCancelRequestList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    return-object p0
.end method

.method private cancelRequestList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCancelRequestList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public initGrpcController()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerConnectionContractImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerConnectionContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerViewContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->initGrpcController(Lcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;)V

    return-void
.end method

.method public isConnectionUnstable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->isCoeditDataResultDeadlineExceeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->isCoeditDataResultNotFound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->isCoeditDataResultUnavailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshForReopen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->refreshForReopen()V

    return-void
.end method

.method public releaseForReconnect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseForReConnect# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->releaseContinuousMessageThread(Ljava/lang/String;)V

    return-void
.end method

.method public releaseGrpcController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->cancelRequestList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCancelRequestList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    return-void
.end method

.method public requestReconnect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->isChannelConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mCoeditListener:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->channelReconnected()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From NetworkConnector# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->reOpen(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public restoreUndownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->mGrpcController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
