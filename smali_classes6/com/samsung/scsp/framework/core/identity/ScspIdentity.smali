.class public Lcom/samsung/scsp/framework/core/identity/ScspIdentity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->cloudToken:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext;->getInstance()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/SContext;->verify()V

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext;->getInstance()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-interface {v1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->has()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const v1, 0x4c4b400

    const-string v2, "No Samsung Account information(access token, uid)."

    invoke-direct {p0, v1, v2}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->initialize(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onRegistrationRequired()V
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->onRegistrationRequired()V

    return-void
.end method

.method public static onUnauthenticatedForSA()V
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->onUnauthenticatedForSA()V

    return-void
.end method

.method public static onUnauthenticatedForSC(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->onUnauthenticatedForSC(Ljava/lang/String;)V

    return-void
.end method

.method public static signOut()V
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->signOut()V

    return-void
.end method

.method public static transaction(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateAccount()V
    .locals 2

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/scsp/framework/core/identity/k;

    invoke-direct {v1, v0}, Lcom/samsung/scsp/framework/core/identity/k;-><init>(Lcom/samsung/scsp/framework/core/identity/IdentityImpl;)V

    invoke-static {v1}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;

    return-void
.end method

.method public static updatePush()Z
    .locals 2

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/scsp/framework/core/identity/l;

    invoke-direct {v1, v0}, Lcom/samsung/scsp/framework/core/identity/l;-><init>(Lcom/samsung/scsp/framework/core/identity/IdentityImpl;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
