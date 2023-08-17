.class public Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJwt:Ljava/lang/String;

.field private mRegionDomain:Ljava/lang/String;

.field private final mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUser:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mUser:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJwt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mJwt:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mRegionDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mUser:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setJwt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mJwt:Ljava/lang/String;

    return-void
.end method

.method public setRegionDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mRegionDomain:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
