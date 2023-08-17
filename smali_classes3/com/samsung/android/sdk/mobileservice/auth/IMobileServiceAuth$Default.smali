.class public Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountValidation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthInfoCached()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceAuthInfoCached()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisclaimerAgreementForService(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDisclaimerAgreementForSocial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntentForAccountAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForAccountDisclaimerAgreement(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForAccountPasswordConfirmation(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForAccountPasswordConfirmationPopup(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForAccountProfileModification(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForAccountSetupWizard(Z)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForAccountSignIn()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentForAccountSignInPopup()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentForAccountValidationRequest(Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForSocialDisclaimerAgreement(ZZ)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentForSocialDisclaimerDisplay()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentForSocialRegistrationInformation()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentForSocialSignUp()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentForSocialTnC()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeedToShowSocialTncPopup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isServiceRegistered(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestAccessTokenForAccount(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IAccessTokenResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IAuthCodeResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestAuthInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IAuthResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestDisclaimerAgreementForThirdParty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IDisclaimerAgreementForThirdPartyResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestRenewAccessTokenForAccount(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/auth/IAccessTokenResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestValidation(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IValidationResultCallback;)V
    .locals 0

    return-void
.end method

.method public setDisclaimerAgreementForSocial(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
