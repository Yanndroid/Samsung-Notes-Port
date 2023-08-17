.class Lcom/samsung/scsp/framework/core/identity/Registration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/samsung/scsp/error/Logger;

.field private final registrationApi:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Registration"

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->logger:Lcom/samsung/scsp/error/Logger;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->registrationApi:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/identity/Registration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/identity/Registration;->lambda$deregister$0(Ljava/lang/String;)V

    return-void
.end method

.method private handle(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;

    move-result-object p1

    iget v0, p1, Lcom/samsung/scsp/error/Result;->rcode:I

    const v1, 0x263e0a1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->onUnauthenticatedForSA()V

    :cond_0
    iget-boolean v0, p1, Lcom/samsung/scsp/error/Result;->success:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/scsp/framework/core/ScspException;

    iget v1, p1, Lcom/samsung/scsp/error/Result;->rcode:I

    iget-object p1, p1, Lcom/samsung/scsp/error/Result;->rmsg:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$deregister$0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->registrationApi:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->deregister(Ljava/lang/String;)V

    return-void
.end method

.method private verify(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext;->getInstance()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->has()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/scsp/framework/core/ScspException;

    const v0, 0x4c4b400

    const-string v1, "Not support your feature when accountInfo is not valid"

    invoke-direct {p1, v0, v1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public deregister(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "deregister"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/i;

    invoke-direct {v0, p0, p1}, Lcom/samsung/scsp/framework/core/identity/i;-><init>(Lcom/samsung/scsp/framework/core/identity/Registration;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;

    return-void
.end method

.method public register(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "register"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/identity/Registration;->verify(Z)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext;->getInstance()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object p1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->isAccountRegistered:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->has()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->isDeviceRegistered:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->has()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v0, "Already registered."

    invoke-virtual {p1, v0}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/Registration;->registrationApi:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/j;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/framework/core/identity/j;-><init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)V

    invoke-direct {p0, v0}, Lcom/samsung/scsp/framework/core/identity/Registration;->handle(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)V

    return-void
.end method
