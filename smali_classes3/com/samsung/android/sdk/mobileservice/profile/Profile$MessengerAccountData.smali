.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessengerAccountData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AIM:Ljava/lang/String; = "AIM"

.field public static final TYPE_CUSTOM:Ljava/lang/String; = "custom"

.field public static final TYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final TYPE_HANGOUTS:Ljava/lang/String; = "hangouts"

.field public static final TYPE_ICQ:Ljava/lang/String; = "ICQ"

.field public static final TYPE_JABBER:Ljava/lang/String; = "jabber"

.field public static final TYPE_QQ:Ljava/lang/String; = "QQ"

.field public static final TYPE_SKYPE:Ljava/lang/String; = "skype"

.field public static final TYPE_WHATSAPP:Ljava/lang/String; = "whatsApp"

.field public static final TYPE_WINDOWS_LIVE:Ljava/lang/String; = "windowsLive"

.field public static final TYPE_YAHOO:Ljava/lang/String; = "yahoo"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mLocked:Z

.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMessengerAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLocked:Z

    return v0
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
    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLocked:Z

    return-void
.end method

.method public setMessengerAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLabel:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLocked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
