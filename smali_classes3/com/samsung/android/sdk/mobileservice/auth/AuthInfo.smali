.class public Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccountDisclaimerAgreed:Z

.field private mAccountId:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mDevicePhysicalAddress:Ljava/lang/String;

.field private mEmailAddressAuthenticated:Z

.field private mGuid:Ljava/lang/String;

.field private mMobileCountryCode:Ljava/lang/String;

.field private mRealNameAuthenticated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountDisclaimerAgreed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mAccountDisclaimerAgreed:Z

    return v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePhysicalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mDevicePhysicalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddressAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mEmailAddressAuthenticated:Z

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mMobileCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRealNameAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mRealNameAuthenticated:Z

    return v0
.end method

.method public setAccountDisclaimerAgreed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mAccountDisclaimerAgreed:Z

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setDevicePhysicalAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mDevicePhysicalAddress:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddressAuthenticated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mEmailAddressAuthenticated:Z

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mGuid:Ljava/lang/String;

    return-void
.end method

.method public setMobileCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mMobileCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setRealNameAuthenticated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/AuthInfo;->mRealNameAuthenticated:Z

    return-void
.end method
