.class public Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;
.super Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/SCloudGetJwt"


# instance fields
.field private mCid:Ljava/lang/String;

.field private mDocUuid:Ljava/lang/String;

.field private mWorkspaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mAuthorization:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mDocUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mGroupId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerConstants;->getSDocxCID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mCid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mWorkspaceId:Ljava/lang/String;

    return-void
.end method

.method private getRequestHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->addSCloudCommonHeaders(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerAPI;->mGroupId:Ljava/lang/String;

    const-string v2, "x-sc-group-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-sc-request-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getRequestId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mWorkspaceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS3] perform : getRequestId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NT/SCloudGetJwt"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRequestParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mDocUuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mCid:Ljava/lang/String;

    const-string v2, "cid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mWorkspaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mWorkspaceId:Ljava/lang/String;

    const-string v2, "workspaceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getRequestUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerConstants;->DOMAIN_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/coedit/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseJwtJson(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NT/SCloudGetJwt"

    if-eqz v0, :cond_0

    const-string p1, "[CS3-2] parseJwtJson Fail : jsonString is empty!"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "jwt"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ownerRegionDomain"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS3-2] parseJwtJson Fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public perform()Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS3] perform : docUuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NT/SCloudGetJwt"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->getRequestParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "{\"Writable\":true}"

    const/4 v5, 0x4

    :try_start_0
    new-instance v6, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;-><init>()V

    invoke-virtual {v6, v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[CS3-2] perform : httpResponse is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {v0, v5}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    return-object v0

    :cond_0
    iget v2, v0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->statusCode:I

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->isFailedResponse(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->parseRCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CS3-2] perform : statusCode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->statusCode:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rCode = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_2

    :sswitch_0
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string v0, "[CS3-2] perform : SC Access token is expired!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-static {v3}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->x()V

    goto :goto_1

    :cond_1
    const-string v0, "[CS3-2] perform : fail to setAccessTokenExpired because the app context is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lk2/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk2/d;->d(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "[CS3-2] perform : access token is expired!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-static {v3}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->x()V

    goto :goto_0

    :cond_2
    const-string v0, "[CS3-2] perform : fail to setAccessTokenExpired because the app context is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    return-object v2

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;->responseStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->parseJwtJson(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS3-2] perform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {v0, v5}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4a40 -> :sswitch_4
        0x4a4a -> :sswitch_4
        0x18a88 -> :sswitch_3
        0x2625a64 -> :sswitch_2
        0x28a0640 -> :sswitch_1
        0x2ff8461 -> :sswitch_0
    .end sparse-switch
.end method
