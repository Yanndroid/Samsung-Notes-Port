.class public Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;
.implements Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSnapCallbackImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$ExternalSyncCallbackImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$SnapStartCallbackImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditHandler"


# instance fields
.field private final mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

.field private final mCoeditGrpcPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

.field private final mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

.field private mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

.field private mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

.field private mSnapRunnable:Ljava/lang/Runnable;

.field private final mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mSnapRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditGrpcPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyComposerContract;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyComposerContract;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "constructor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditGrpcPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    return-object p0
.end method

.method private directlyRelease(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "CoeditHandler"

    const-string v1, "directlyRelease"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->releaseNetworkConnector()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->stopCoeditManager()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->External:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->release(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->releaseUiThreadHandler()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->releaseCoeditManager()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditGrpcPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->releaseGrpcController()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->releaseCoeditController()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isAlreadySnapReleased()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->releaseSnapRunnable()V

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyComposerContract;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/EmptyComposerContract;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setClosedState()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mSnapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->directlyRelease(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->initCoeditManager()V

    return-void
.end method

.method private initCoeditManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private internalSnapStartInitialize(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 8
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mSnapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->isCancelled()Z

    move-result v0

    return v0
.end method

.method private isEnableCoeditHandling(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;->verifyFail()V

    return p2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;->alreadyCanceled()V

    return p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isInitState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRunningState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidInternalSnapStart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isValid()Z

    move-result v0

    const-string v1, "CoeditHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "internalSnapStart# released"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "internalSnapStart# run, not available network"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;J)V

    const-string p1, "NETWORK_ISSUE"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->pauseConcurrency(Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$10;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    const-string v3, "externalChannelOpen"

    invoke-direct {p0, v0, v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isEnableCoeditHandling(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "fail to internalSnapStart, note file is invalid"

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onError(Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->internalSnapStartInitialize(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isEnableCoeditHandling(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isInitState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isRunningState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isValidInternalSnapStart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)Z

    move-result p0

    return p0
.end method

.method private onStartOfflineModeForUpload(JLcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 2

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isSnapUploadCompleted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onStartOfflineModeForUpload"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setSnapDelayedState(Ljava/lang/String;)V

    const-string p1, "SNAP_ERROR_NO_NETWORK"

    invoke-interface {p3, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onStartOfflineMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;JLcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->onStartOfflineModeForUpload(JLcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setInitState()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setRunningState(Ljava/lang/String;)V

    return-void
.end method

.method private releaseCoeditManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->close()V

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    return-void
.end method

.method private declared-synchronized releaseWithTimeout(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$14;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$14;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reloadHandler(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isRunningState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isInitState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/reloadHandler"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->release(Ljava/lang/Runnable;Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->initialize(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoeditHandler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnWorkerThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setSnapDelayedState(Ljava/lang/String;)V

    return-void
.end method

.method private setClosedState()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setClosingState()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setInitState()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setRunningState(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRunningState# caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setSnapDelayedState(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSnapDelayedState# caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setSnapEndState(Ljava/lang/String;)V
    .locals 2

    const-string v0, "setSnapEndState"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isClosingState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSnapEndState# caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setSnapRunningState(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSnapRunningState# caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setState(I)V

    return-void
.end method

.method private setState(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->setState(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setState, state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", user: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hashCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private snapInitialize(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->refreshUpdateCorrupted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->initPrefInfo(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->makeBodyTextNotEmpty(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->setFilePath(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setSnapRunningState(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getServerCheckPoint()J

    move-result-wide p1

    return-wide p1
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setSnapEndState(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setSnapRunningState(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->snapInitialize(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public checkDeleteOnlyMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->checkDeleteOnlyMode()V

    return-void
.end method

.method public externalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 8
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "externalSnapDownload"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->reloadHandler(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public externalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 8

    const-string v0, "externalSnapStart"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->reloadHandler(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public externalSnapUpload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
    .locals 8
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "externalSnapUpload"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->reloadHandler(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$6;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCoeditControlPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    return-object v0
.end method

.method public getCoeditGrpcPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditGrpcPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    return-object v0
.end method

.method public getCoeditHandlerModel()Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    return-object v0
.end method

.method public getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    return-object v0
.end method

.method public getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getState()I

    move-result v0

    return v0
.end method

.method public getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mThreadHandler:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    return-object v0
.end method

.method public getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 8
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public internalSnapRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->canShowProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_internal_refresh_block_downloading_update:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_internal_refresh_block_try_again_later:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    const-string v1, "internalSnapRefresh"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->showProgress(Ljava/lang/String;)Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$8;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$3;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 8
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAlreadySnapReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mSnapRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosingState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosingState(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler is closing now. uuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInitializing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isInitializing()Z

    move-result v0

    return v0
.end method

.method public isSnapDelayedState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSnapEndState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritePermissionGranted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditControlPresenter:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->isWritePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public pauseConcurrency(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized release(Ljava/lang/Runnable;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CoeditHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p2, "CoeditHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synchronized release, user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "release"

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isClosingState(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->setClosingState()V

    const-string p2, "COEDIT_RELEASE"

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->pauseConcurrency(Ljava/lang/String;)I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->releaseWithTimeout(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseSnapRunnable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mSnapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public requestReadPermission()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$12;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditManager:Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->resumeConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public saveCoeditCache()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isSnapDelayedState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$11;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mCoeditHandlerModel:Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->setCancelled()V

    return-void
.end method

.method public setComposerContract(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    return-void
.end method
