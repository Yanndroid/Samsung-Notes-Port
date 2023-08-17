.class Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;
.super Lcom/samsung/android/sdk/mobileservice/auth/IAuthResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->requestAuthInfo(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/auth/IAuthResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAuthInfo onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->access$100(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-direct {v3, v0, p2, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->this$0:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;

    const-string v1, "requestAuthInfo onSuccess "

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;->access$000(Lcom/samsung/android/sdk/mobileservice/auth/AuthApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    const-string v1, "account_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setAccountId(Ljava/lang/String;)V

    :cond_0
    const-string v1, "guid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setGuid(Ljava/lang/String;)V

    :cond_2
    const-string v1, "country_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setCountryCode(Ljava/lang/String;)V

    :cond_4
    const-string v1, "mcc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setMobileCountryCode(Ljava/lang/String;)V

    :cond_6
    const-string v1, "device_physical_address"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setDevicePhysicalAddress(Ljava/lang/String;)V

    :cond_8
    const-string v1, "is_email_authenticated"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v0, :cond_9

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setEmailAddressAuthenticated(Z)V

    :cond_a
    const-string v1, "is_name_authenticated"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setRealNameAuthenticated(Z)V

    :cond_c
    const-string v1, "is_account_disclaimer_agreed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v0, :cond_d

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;-><init>()V

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->setAccountDisclaimerAgreed(Z)V

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/sdk/mobileservice/auth/AuthApi$AuthResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/auth/result/AuthInfoResult;)V

    :cond_f
    return-void
.end method
