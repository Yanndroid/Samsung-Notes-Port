.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountBirthday"
.end annotation


# instance fields
.field private mAction:I

.field private mDay:Ljava/lang/String;

.field private mLocked:Z

.field private mMonth:Ljava/lang/String;

.field private mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mAction:I

    return v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mDay:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mLocked:Z

    return v0
.end method

.method public putParcelData(Landroid/os/Parcel;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mLocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mLocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mYear:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mMonth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mDay:Ljava/lang/String;

    return-void
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mAction:I

    return-void
.end method

.method public setBirthday(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mYear:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mMonth:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mDay:Ljava/lang/String;

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->mLocked:Z

    return-void
.end method
