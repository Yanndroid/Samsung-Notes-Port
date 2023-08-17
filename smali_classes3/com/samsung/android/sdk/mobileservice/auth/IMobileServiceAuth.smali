.class public interface abstract Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth$Stub;,
        Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth$Default;
    }
.end annotation


# virtual methods
.method public abstract getAccountValidation()Z
.end method

.method public abstract getAuthInfoCached()Landroid/os/Bundle;
.end method

.method public abstract getDeviceAuthInfoCached()Landroid/os/Bundle;
.end method

.method public abstract getDisclaimerAgreementForService(I)Z
.end method

.method public abstract getDisclaimerAgreementForSocial()Z
.end method

.method public abstract getIntentForAccountAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountDisclaimerAgreement(Ljava/lang/String;Z)Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountPasswordConfirmation(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountPasswordConfirmationPopup(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountProfileModification(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountSetupWizard(Z)Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountSignIn()Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountSignInPopup()Landroid/content/Intent;
.end method

.method public abstract getIntentForAccountValidationRequest(Ljava/lang/String;ZZ)Landroid/content/Intent;
.end method

.method public abstract getIntentForSocialDisclaimerAgreement(ZZ)Landroid/content/Intent;
.end method

.method public abstract getIntentForSocialDisclaimerDisplay()Landroid/content/Intent;
.end method

.method public abstract getIntentForSocialRegistrationInformation()Landroid/content/Intent;
.end method

.method public abstract getIntentForSocialSignUp()Landroid/content/Intent;
.end method

.method public abstract getIntentForSocialTnC()Landroid/content/Intent;
.end method

.method public abstract getNeedToShowSocialTncPopup()Z
.end method

.method public abstract isServiceRegistered(I)Z
.end method

.method public abstract requestAccessTokenForAccount(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IAccessTokenResultCallback;)V
.end method

.method public abstract requestAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IAuthCodeResultCallback;)V
.end method

.method public abstract requestAuthInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IAuthResultCallback;)V
.end method

.method public abstract requestDisclaimerAgreementForThirdParty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IDisclaimerAgreementForThirdPartyResultCallback;)V
.end method

.method public abstract requestRenewAccessTokenForAccount(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/auth/IAccessTokenResultCallback;)V
.end method

.method public abstract requestValidation(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/auth/IValidationResultCallback;)V
.end method

.method public abstract setDisclaimerAgreementForSocial(Z)Z
.end method
