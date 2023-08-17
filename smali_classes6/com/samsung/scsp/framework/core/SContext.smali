.class public Lcom/samsung/scsp/framework/core/SContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/SContext$LazyHolder;
    }
.end annotation


# instance fields
.field public accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

.field public appVersionSupplier:Lcom/samsung/scsp/framework/core/common/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/scsp/framework/core/common/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

.field public pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

.field public scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/framework/core/b;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/b;-><init>(Lcom/samsung/scsp/framework/core/SContext;)V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->appVersionSupplier:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/SContext$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/SContext;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/SContext;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/SContext;->lambda$new$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/scsp/framework/core/SContext;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/SContext;->lambda$new$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/scsp/framework/core/SContext;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;Lcom/samsung/scsp/framework/core/ScspConfig;)V
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext$LazyHolder;->access$000()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object v0

    iput-object p0, v0, Lcom/samsung/scsp/framework/core/SContext;->context:Landroid/content/Context;

    iput-object p1, v0, Lcom/samsung/scsp/framework/core/SContext;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    iput-object p2, v0, Lcom/samsung/scsp/framework/core/SContext;->pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    iput-object p3, v0, Lcom/samsung/scsp/framework/core/SContext;->deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

    iput-object p4, v0, Lcom/samsung/scsp/framework/core/SContext;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$new$1()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/a;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/a;-><init>(Lcom/samsung/scsp/framework/core/SContext;)V

    const-string v1, "NONE"

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    return-void
.end method

.method public getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->appVersionSupplier:Lcom/samsung/scsp/framework/core/common/Supplier;

    invoke-interface {v0}, Lcom/samsung/scsp/framework/core/common/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCloudToken(Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->cloudToken:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->deviceToken:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {p1}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceIdSupplier()Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->deviceIdSupplier:Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

    return-object v0
.end method

.method public getPushInfoSupplier()Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->pushInfoSupplier:Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    return-object v0
.end method

.method public verify()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/SContext;->accountInfoSupplier:Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/scsp/framework/core/ScspException;

    const v1, 0x3938702

    const-string v2, "SDK is not initialized. please check if Scsp.initialize has been called."

    invoke-direct {v0, v1, v2}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
