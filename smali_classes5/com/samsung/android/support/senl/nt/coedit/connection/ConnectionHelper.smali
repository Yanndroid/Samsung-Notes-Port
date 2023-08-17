.class public abstract Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/contract/ConnectionState;
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;
    }
.end annotation


# instance fields
.field private mState:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->UNDEFINED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->mState:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    return-void
.end method

.method private declared-synchronized setState(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->mState:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->mState:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAlreadyClosed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->CLOSED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->STOPPED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAlreadyStopped()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->STOPPED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotOpenedState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->OPENED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartedState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->STARTED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUndefinedState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->UNDEFINED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public printState()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$1;->$SwitchMap$com$samsung$android$support$senl$nt$coedit$connection$ConnectionHelper$State:[I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->mState:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "not defined"

    return-object v0

    :cond_0
    const-string v0, "STOPPED"

    return-object v0

    :cond_1
    const-string v0, "CLOSED"

    return-object v0

    :cond_2
    const-string v0, "OPENED"

    return-object v0

    :cond_3
    const-string v0, "STARTED"

    return-object v0

    :cond_4
    const-string v0, "UNDEFINED"

    return-object v0
.end method

.method public setClosedState()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->CLOSED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setState(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;)V

    return-void
.end method

.method public setOpenedState()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->OPENED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setState(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;)V

    return-void
.end method

.method public setStartedState()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->STARTED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setState(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;)V

    return-void
.end method

.method public setStoppedState()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;->STOPPED:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setState(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;)V

    return-void
.end method
