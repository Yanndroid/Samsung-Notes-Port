.class Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;
.super Lcom/samsung/android/sdk/mobileservice/auth/IAccessTokenResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->requestRenewAccessTokenForAccount(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/auth/IAccessTokenResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRenewAccessTokenForAccount onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->access$600(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converted error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - requestRenewAccessTokenForAccount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->access$700(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/auth/result/AccessTokenInfoResult;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-direct {v3, v0, p2, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/mobileservice/auth/result/AccessTokenInfoResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/auth/result/AccessTokenInfoResult;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    const-string v0, "requestRenewAccessTokenForAccount onSuccess "

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->access$500(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    new-instance p2, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;

    invoke-direct {p2}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;-><init>()V

    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->setToken(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "token_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->setTokenType(Ljava/lang/String;)V

    :cond_1
    const-string v0, "api_server_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->setApiServerUrl(Ljava/lang/String;)V

    :cond_2
    const-string v0, "auth_server_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->setAuthServerUrl(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "token_issued_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->setTokenIssuedTime(J)V

    :cond_4
    const-string/jumbo v0, "token_validity_period"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->setTokenValidityPeriod(J)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/result/AccessTokenInfoResult;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/sdk/mobileservice/auth/result/AccessTokenInfoResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AccessTokenResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/auth/result/AccessTokenInfoResult;)V

    :cond_6
    return-void
.end method
