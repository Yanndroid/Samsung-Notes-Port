.class Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->getAuthCallback()Lcom/microsoft/identity/client/AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    const-string v0, "SettingsMicrosoft"

    const-string v1, "Authentication canceled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 4

    instance-of v0, p1, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;

    const-string v1, "SettingsMicrosoft"

    if-eqz v0, :cond_0

    const-string p1, "Interactive login required"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->b(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)Z

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "no_current_account"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "No current account, interactive login required"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client error authenticating"

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/microsoft/identity/client/exception/MsalServiceException;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service error authenticating"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onSuccess(Lcom/microsoft/identity/client/IAuthenticationResult;)V
    .locals 3

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsMicrosoft"

    const-string v2, "Access token received"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v1

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lk1/b;->f(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)V

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;)V

    invoke-virtual {p1, v0}, Lk1/b;->e(Ll1/b;)V

    return-void
.end method
