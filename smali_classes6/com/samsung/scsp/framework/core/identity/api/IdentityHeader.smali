.class Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final X_SC_ACCESS_TOKEN:Ljava/lang/String; = "x-sc-access-token"

.field private static final X_SC_APP_ID:Ljava/lang/String; = "x-sc-app-id"

.field public static final X_SC_APP_VERSION:Ljava/lang/String; = "x-sc-app-version"

.field private static final X_SC_CDID:Ljava/lang/String; = "x-sc-cdid"

.field private static final X_SC_PDID:Ljava/lang/String; = "x-sc-pdid"

.field public static final X_SC_UID:Ljava/lang/String; = "x-sc-uid"


# instance fields
.field private final deviceId:Lcom/samsung/scsp/framework/core/identity/api/DeviceId;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/api/DeviceId;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/identity/api/DeviceId;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->deviceId:Lcom/samsung/scsp/framework/core/identity/api/DeviceId;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->lambda$get$0(Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$get$0(Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->deviceId:Lcom/samsung/scsp/framework/core/identity/api/DeviceId;

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getDeviceIdSupplier()Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/scsp/framework/core/identity/api/DeviceId;->getPhysicalDeviceId(Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/SContextHolder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->userAgent:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-sc-app-id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->deviceId:Lcom/samsung/scsp/framework/core/identity/api/DeviceId;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/identity/api/DeviceId;->getClientDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-sc-cdid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/scsp/framework/core/identity/api/a;

    invoke-direct {v2, p0, p1}, Lcom/samsung/scsp/framework/core/identity/api/a;-><init>(Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;Lcom/samsung/scsp/framework/core/SContextHolder;)V

    const/4 p1, 0x0

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Lcom/samsung/scsp/error/Response;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x-sc-pdid"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->has()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    const-string v2, "x-sc-access-token"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-sc-uid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
