.class public Lcom/samsung/scsp/framework/core/Scsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INITIALIZE_LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/samsung/scsp/error/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/Scsp;->INITIALIZE_LOCK:Ljava/lang/Object;

    const-string v0, "Scsp"

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    sput-object v0, Lcom/samsung/scsp/framework/core/Scsp;->logger:Lcom/samsung/scsp/error/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAppId(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V
    .locals 2

    const v0, 0x4c4b400

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const-string v1, "The appId is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const-string v1, "AccountInfoSupplier is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static checkContext(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/common/ContextFactory;->attachApplicationContext(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const v0, 0x4c4b400

    const-string v1, "The context is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static checkScspSuppliers(Lcom/samsung/scsp/framework/core/ScspSuppliers;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const v0, 0x4c4b400

    const-string v1, "The scspSuppliers is null"

    invoke-direct {p0, v0, v1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static initialize(Lcom/samsung/scsp/framework/core/ScspSuppliers;)V
    .locals 5
    .param p0    # Lcom/samsung/scsp/framework/core/ScspSuppliers;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/scsp/framework/core/Scsp;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "initialize"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/scsp/framework/core/Scsp;->INITIALIZE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/scsp/framework/core/Scsp;->checkScspSuppliers(Lcom/samsung/scsp/framework/core/ScspSuppliers;)V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/scsp/framework/core/Scsp;->checkContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    invoke-static {v1}, Lcom/samsung/scsp/framework/core/Scsp;->checkAppId(Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;)V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    iget-object v4, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspSuppliers;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    invoke-static {v1, v2, v3, v4, p0}, Lcom/samsung/scsp/framework/core/SContext;->initialize(Landroid/content/Context;Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;Lcom/samsung/scsp/framework/core/ScspConfig;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
