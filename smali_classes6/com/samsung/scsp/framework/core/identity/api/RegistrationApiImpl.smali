.class public Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$NotHandleAuthenticateErrorListener;
    }
.end annotation


# static fields
.field private static final BASE_URI:Ljava/lang/String; = "/identity/v1"

.field private static final DEREGISTER_URI:Ljava/lang/String; = "/identity/v1/deregister"

.field private static final REGISTER_URI:Ljava/lang/String; = "/identity/v1/register"

.field private static final TAG:Ljava/lang/String; = "RegistrationApiImpl"


# instance fields
.field private final identityHeader:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

.field private final logger:Lcom/samsung/scsp/error/Logger;

.field private final scontext:Lcom/samsung/scsp/framework/core/SContext;

.field private final scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/scsp/framework/core/SContextHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->identityHeader:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->lambda$register$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)Lcom/samsung/scsp/error/Logger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->logger:Lcom/samsung/scsp/error/Logger;

    return-object p0
.end method

.method private getDeviceType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tablet"

    goto :goto_0

    :cond_0
    const-string v0, "phone"

    :goto_0
    return-object v0
.end method

.method private getOsType()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method private static synthetic lambda$register$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private makePayload()Lcom/google/gson/JsonObject;
    .locals 4

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getPushInfoSupplier()Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getPushInfoSupplier()Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;->has()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v3}, Lcom/samsung/scsp/framework/core/SContext;->getPushInfoSupplier()Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;->getPushInfo()[Lcom/samsung/scsp/framework/core/identity/PushInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;-><init>([Lcom/samsung/scsp/framework/core/identity/PushInfo;)V

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;->toJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    const-string v3, "pushes"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->getOsType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "osType"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "osVersion"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getOneUiVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "platformVersion"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getIso3CountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "countryCode"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getModelName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "modelName"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alias"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getModelCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "modelCode"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSimMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "simMcc"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSimMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "simMnc"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getCsc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "csc"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method


# virtual methods
.method public deregister(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/identity/v1/deregister"

    invoke-static {v1, v2, v3}, Lcom/samsung/scsp/framework/core/ers/ScspErs;->getBaseUrlOfPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    sget-object v3, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->POST:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;-><init>(Lcom/samsung/scsp/framework/core/SContextHolder;Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->removeHeader(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->build()Lcom/samsung/scsp/framework/core/network/HttpRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object v1, v1, Lcom/samsung/scsp/framework/core/SContextHolder;->network:Lcom/samsung/scsp/framework/core/network/Network;

    new-instance v2, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$NotHandleAuthenticateErrorListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$NotHandleAuthenticateErrorListener;-><init>(Ljava/lang/String;Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;)V

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$2;-><init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)V

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/samsung/scsp/framework/core/network/Network;->post(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void
.end method

.method public register()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/identity/v1/register"

    invoke-static {v1, v2, v3}, Lcom/samsung/scsp/framework/core/ers/ScspErs;->getBaseUrlOfPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->makePayload()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v4, Lcom/samsung/scsp/framework/core/identity/api/b;

    invoke-direct {v4, v2}, Lcom/samsung/scsp/framework/core/identity/api/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->identityHeader:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    iget-object v4, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    invoke-virtual {v3, v4}, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->get(Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iget-object v5, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    sget-object v6, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->POST:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-direct {v4, v5, v6, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;-><init>(Lcom/samsung/scsp/framework/core/SContextHolder;Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->clearHeader()Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v4

    const-string v5, "application/json"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->payload(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeaderMap(Ljava/util/Map;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->build()Lcom/samsung/scsp/framework/core/network/HttpRequest;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object v4, v4, Lcom/samsung/scsp/framework/core/SContextHolder;->network:Lcom/samsung/scsp/framework/core/network/Network;

    new-instance v5, Lcom/samsung/scsp/framework/core/DefaultErrorListener;

    invoke-direct {v5, v0}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;

    invoke-direct {v0, p0, v3, v1}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;-><init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;Ljava/util/Map;Lcom/google/gson/JsonObject;)V

    const/4 v1, 0x0

    invoke-interface {v4, v2, v5, v0, v1}, Lcom/samsung/scsp/framework/core/network/Network;->post(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void
.end method
