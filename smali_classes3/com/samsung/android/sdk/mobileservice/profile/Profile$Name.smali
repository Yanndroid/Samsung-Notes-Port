.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# instance fields
.field private mAction:I

.field private mFamilyName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mLocked:Z

.field private mMiddleName:Ljava/lang/String;

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPrefixName:Ljava/lang/String;

.field private mSuffixName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mLocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPrefixName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mGivenName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mMiddleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mSuffixName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticGivenName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticFamilyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mAction:I

    return v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPrefixName:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mSuffixName:Ljava/lang/String;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mLocked:Z

    return v0
.end method

.method public putParcelData(Landroid/os/Parcel;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPrefixName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mGivenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mMiddleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mSuffixName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticGivenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mAction:I

    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mFamilyName:Ljava/lang/String;

    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mGivenName:Ljava/lang/String;

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mLocked:Z

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mMiddleName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPrefixName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mGivenName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mMiddleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mFamilyName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mSuffixName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticGivenName:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticMiddleName:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticFamilyName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticFamilyName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticGivenName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPhoneticMiddleName:Ljava/lang/String;

    return-void
.end method

.method public setPrefixName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mPrefixName:Ljava/lang/String;

    return-void
.end method

.method public setSuffixName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->mSuffixName:Ljava/lang/String;

    return-void
.end method
