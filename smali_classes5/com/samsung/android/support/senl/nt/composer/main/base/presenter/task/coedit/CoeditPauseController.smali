.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;
    }
.end annotation


# instance fields
.field private final mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

.field private mSynchronizedCancelAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/SynchronizedCancelAction;

.field private mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    return-void
.end method


# virtual methods
.method public pauseCoedit()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->isCoeditNoTimeoutPause()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->pauseCoeditNoTimeout(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getSynchronizedCancelAction()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/SynchronizedCancelAction;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mSynchronizedCancelAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/SynchronizedCancelAction;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mSynchronizedCancelAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/SynchronizedCancelAction;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->pauseCoedit(Ljava/lang/String;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseCoedit# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public resumeCoedit()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->isCoeditNoTimeoutPause()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->resumeCoeditNoTimeout(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mCoeditAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->resumeCoedit(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeCoedit# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mSynchronizedCancelAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/SynchronizedCancelAction;

    :cond_2
    :goto_1
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController;->mTarget:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;

    return-void
.end method
